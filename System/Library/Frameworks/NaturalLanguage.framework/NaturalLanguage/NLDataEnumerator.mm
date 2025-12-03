@interface NLDataEnumerator
- (NLDataEnumerator)initWithDataProvider:(id)provider;
- (NLDataEnumerator)initWithDataProvider:(id)provider numberGenerator:(id)generator;
- (id)instanceAtIndex:(unint64_t)index;
- (id)nextInstance;
- (void)rewindAndShuffle:(BOOL)shuffle;
- (void)shuffle;
@end

@implementation NLDataEnumerator

- (NLDataEnumerator)initWithDataProvider:(id)provider numberGenerator:(id)generator
{
  providerCopy = provider;
  generatorCopy = generator;
  v12.receiver = self;
  v12.super_class = NLDataEnumerator;
  v9 = [(NLDataEnumerator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dataProvider, provider);
    v10->_idx = 0;
    objc_storeStrong(&v10->_generator, generator);
  }

  return v10;
}

- (NLDataEnumerator)initWithDataProvider:(id)provider
{
  providerCopy = provider;
  v5 = objc_alloc_init(NLNumberGenerator);
  v6 = [(NLDataEnumerator *)self initWithDataProvider:providerCopy numberGenerator:v5];

  return v6;
}

- (id)nextInstance
{
  idx = self->_idx;
  while (idx < [(NLDataProvider *)self->_dataProvider numberOfInstances])
  {
    v4 = [(NLDataEnumerator *)self instanceAtIndex:self->_idx];
    idx = self->_idx + 1;
    self->_idx = idx;
    if (v4)
    {
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:

  return v4;
}

- (id)instanceAtIndex:(unint64_t)index
{
  indexCopy = index;
  shuffleData = self->_shuffleData;
  if (shuffleData)
  {
    indexCopy = *([(NSMutableData *)shuffleData bytes]+ 4 * index);
  }

  dataProvider = [(NLDataEnumerator *)self dataProvider];
  v7 = [dataProvider instanceAtIndex:indexCopy];

  return v7;
}

- (void)rewindAndShuffle:(BOOL)shuffle
{
  shuffleCopy = shuffle;
  [(NLDataEnumerator *)self rewind];
  if (shuffleCopy)
  {

    [(NLDataEnumerator *)self shuffle];
  }
}

- (void)shuffle
{
  dataProvider = [(NLDataEnumerator *)self dataProvider];
  numberOfInstances = [dataProvider numberOfInstances];

  shuffleData = self->_shuffleData;
  if (shuffleData)
  {
    goto LABEL_6;
  }

  v6 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:4 * numberOfInstances];
  v7 = self->_shuffleData;
  self->_shuffleData = v6;

  mutableBytes = [(NSMutableData *)self->_shuffleData mutableBytes];
  if (numberOfInstances)
  {
    v9 = 0;
    do
    {
      mutableBytes[v9] = v9;
      ++v9;
    }

    while (numberOfInstances > v9);
  }

  shuffleData = self->_shuffleData;
  if (shuffleData)
  {
LABEL_6:
    mutableBytes2 = [(NSMutableData *)shuffleData mutableBytes];
    if (numberOfInstances >= 2)
    {
      v11 = mutableBytes2;
      v12 = mutableBytes2 - 4;
      do
      {
        v13 = numberOfInstances - 1;
        v14 = [(NLNumberGenerator *)self->_generator numberInRange:0, numberOfInstances];
        if (numberOfInstances - 1 != v14)
        {
          v15 = *(v12 + 4 * numberOfInstances);
          *(v12 + 4 * numberOfInstances) = *(v11 + 4 * v14);
          *(v11 + 4 * v14) = v15;
        }

        --numberOfInstances;
      }

      while (v13 > 1);
    }
  }
}

@end