@interface _VNEntityIdentificationModelDataSourceBasedTrainedModelDataProvider
- (_VNEntityIdentificationModelDataSourceBasedTrainedModelDataProvider)initWithEntityIdentificationModel:(id)model dataSource:(id)source;
@end

@implementation _VNEntityIdentificationModelDataSourceBasedTrainedModelDataProvider

- (_VNEntityIdentificationModelDataSourceBasedTrainedModelDataProvider)initWithEntityIdentificationModel:(id)model dataSource:(id)source
{
  modelCopy = model;
  sourceCopy = source;
  v12.receiver = self;
  v12.super_class = _VNEntityIdentificationModelDataSourceBasedTrainedModelDataProvider;
  v9 = [(_VNEntityIdentificationModelDataSourceBasedTrainedModelDataProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_entityIdentificationModel, model);
    objc_storeStrong(&v10->_dataSource, source);
  }

  return v10;
}

@end