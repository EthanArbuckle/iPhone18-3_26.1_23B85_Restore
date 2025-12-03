@interface NLSplitDataProvider
- (NLSplitDataProvider)initWithDataProvider:(id)provider indexes:(id)indexes;
- (id)instanceAtIndex:(unint64_t)index;
@end

@implementation NLSplitDataProvider

- (NLSplitDataProvider)initWithDataProvider:(id)provider indexes:(id)indexes
{
  providerCopy = provider;
  indexesCopy = indexes;
  v14.receiver = self;
  v14.super_class = NLSplitDataProvider;
  v9 = [(NLSplitDataProvider *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dataProvider, provider);
    v11 = [indexesCopy copy];
    indexes = v10->_indexes;
    v10->_indexes = v11;
  }

  return v10;
}

- (id)instanceAtIndex:(unint64_t)index
{
  dataProvider = self->_dataProvider;
  v4 = [(NSArray *)self->_indexes objectAtIndex:index];
  v5 = -[NLDataProvider instanceAtIndex:](dataProvider, "instanceAtIndex:", [v4 unsignedIntegerValue]);

  return v5;
}

@end