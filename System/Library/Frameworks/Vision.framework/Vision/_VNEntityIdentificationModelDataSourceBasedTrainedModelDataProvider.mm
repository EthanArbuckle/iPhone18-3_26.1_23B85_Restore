@interface _VNEntityIdentificationModelDataSourceBasedTrainedModelDataProvider
- (_VNEntityIdentificationModelDataSourceBasedTrainedModelDataProvider)initWithEntityIdentificationModel:(id)a3 dataSource:(id)a4;
@end

@implementation _VNEntityIdentificationModelDataSourceBasedTrainedModelDataProvider

- (_VNEntityIdentificationModelDataSourceBasedTrainedModelDataProvider)initWithEntityIdentificationModel:(id)a3 dataSource:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _VNEntityIdentificationModelDataSourceBasedTrainedModelDataProvider;
  v9 = [(_VNEntityIdentificationModelDataSourceBasedTrainedModelDataProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_entityIdentificationModel, a3);
    objc_storeStrong(&v10->_dataSource, a4);
  }

  return v10;
}

@end