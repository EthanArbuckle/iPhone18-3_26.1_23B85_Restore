@interface NLDataEnumerator
- (NLDataEnumerator)initWithDataProvider:(id)a3;
- (NLDataEnumerator)initWithDataProvider:(id)a3 numberGenerator:(id)a4;
- (id)instanceAtIndex:(unint64_t)a3;
- (id)nextInstance;
- (void)rewindAndShuffle:(BOOL)a3;
- (void)shuffle;
@end

@implementation NLDataEnumerator

- (NLDataEnumerator)initWithDataProvider:(id)a3 numberGenerator:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = NLDataEnumerator;
  v9 = [(NLDataEnumerator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dataProvider, a3);
    v10->_idx = 0;
    objc_storeStrong(&v10->_generator, a4);
  }

  return v10;
}

- (NLDataEnumerator)initWithDataProvider:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NLNumberGenerator);
  v6 = [(NLDataEnumerator *)self initWithDataProvider:v4 numberGenerator:v5];

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

- (id)instanceAtIndex:(unint64_t)a3
{
  v3 = a3;
  shuffleData = self->_shuffleData;
  if (shuffleData)
  {
    v3 = *([(NSMutableData *)shuffleData bytes]+ 4 * a3);
  }

  v6 = [(NLDataEnumerator *)self dataProvider];
  v7 = [v6 instanceAtIndex:v3];

  return v7;
}

- (void)rewindAndShuffle:(BOOL)a3
{
  v3 = a3;
  [(NLDataEnumerator *)self rewind];
  if (v3)
  {

    [(NLDataEnumerator *)self shuffle];
  }
}

- (void)shuffle
{
  v3 = [(NLDataEnumerator *)self dataProvider];
  v4 = [v3 numberOfInstances];

  shuffleData = self->_shuffleData;
  if (shuffleData)
  {
    goto LABEL_6;
  }

  v6 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:4 * v4];
  v7 = self->_shuffleData;
  self->_shuffleData = v6;

  v8 = [(NSMutableData *)self->_shuffleData mutableBytes];
  if (v4)
  {
    v9 = 0;
    do
    {
      v8[v9] = v9;
      ++v9;
    }

    while (v4 > v9);
  }

  shuffleData = self->_shuffleData;
  if (shuffleData)
  {
LABEL_6:
    v10 = [(NSMutableData *)shuffleData mutableBytes];
    if (v4 >= 2)
    {
      v11 = v10;
      v12 = v10 - 4;
      do
      {
        v13 = v4 - 1;
        v14 = [(NLNumberGenerator *)self->_generator numberInRange:0, v4];
        if (v4 - 1 != v14)
        {
          v15 = *(v12 + 4 * v4);
          *(v12 + 4 * v4) = *(v11 + 4 * v14);
          *(v11 + 4 * v14) = v15;
        }

        --v4;
      }

      while (v13 > 1);
    }
  }
}

@end