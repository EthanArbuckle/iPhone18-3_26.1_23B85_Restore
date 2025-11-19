@interface NLSplitDataProvider
- (NLSplitDataProvider)initWithDataProvider:(id)a3 indexes:(id)a4;
- (id)instanceAtIndex:(unint64_t)a3;
@end

@implementation NLSplitDataProvider

- (NLSplitDataProvider)initWithDataProvider:(id)a3 indexes:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = NLSplitDataProvider;
  v9 = [(NLSplitDataProvider *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dataProvider, a3);
    v11 = [v8 copy];
    indexes = v10->_indexes;
    v10->_indexes = v11;
  }

  return v10;
}

- (id)instanceAtIndex:(unint64_t)a3
{
  dataProvider = self->_dataProvider;
  v4 = [(NSArray *)self->_indexes objectAtIndex:a3];
  v5 = -[NLDataProvider instanceAtIndex:](dataProvider, "instanceAtIndex:", [v4 unsignedIntegerValue]);

  return v5;
}

@end