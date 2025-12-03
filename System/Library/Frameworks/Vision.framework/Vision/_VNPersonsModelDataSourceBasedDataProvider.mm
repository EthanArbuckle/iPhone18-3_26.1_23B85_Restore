@interface _VNPersonsModelDataSourceBasedDataProvider
- (_VNPersonsModelDataSourceBasedDataProvider)initWithPersonsModel:(id)model dataSource:(id)source;
@end

@implementation _VNPersonsModelDataSourceBasedDataProvider

- (_VNPersonsModelDataSourceBasedDataProvider)initWithPersonsModel:(id)model dataSource:(id)source
{
  modelCopy = model;
  sourceCopy = source;
  v12.receiver = self;
  v12.super_class = _VNPersonsModelDataSourceBasedDataProvider;
  v9 = [(_VNPersonsModelDataSourceBasedDataProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_personsModel, model);
    objc_storeStrong(&v10->_dataSource, source);
  }

  return v10;
}

@end