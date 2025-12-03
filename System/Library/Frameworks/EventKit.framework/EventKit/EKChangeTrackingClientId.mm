@interface EKChangeTrackingClientId
- (CADChangeTrackingClientId)CADChangeTrackingClientId;
- (EKChangeTrackingClientId)initWithCustomClientId:(id)id suffix:(id)suffix;
@end

@implementation EKChangeTrackingClientId

- (EKChangeTrackingClientId)initWithCustomClientId:(id)id suffix:(id)suffix
{
  idCopy = id;
  suffixCopy = suffix;
  v14.receiver = self;
  v14.super_class = EKChangeTrackingClientId;
  v8 = [(EKChangeTrackingClientId *)&v14 init];
  if (v8)
  {
    v9 = [idCopy copy];
    customClientId = v8->_customClientId;
    v8->_customClientId = v9;

    v11 = [suffixCopy copy];
    suffix = v8->_suffix;
    v8->_suffix = v11;
  }

  return v8;
}

- (CADChangeTrackingClientId)CADChangeTrackingClientId
{
  customClientId = [(EKChangeTrackingClientId *)self customClientId];

  if (customClientId)
  {
    v4 = objc_alloc(MEMORY[0x1E6992310]);
    customClientId2 = [(EKChangeTrackingClientId *)self customClientId];
    v6 = [v4 initWithCustomClientId:customClientId2];
LABEL_5:
    v9 = v6;

    goto LABEL_6;
  }

  suffix = [(EKChangeTrackingClientId *)self suffix];

  if (suffix)
  {
    v8 = objc_alloc(MEMORY[0x1E6992310]);
    customClientId2 = [(EKChangeTrackingClientId *)self suffix];
    v6 = [v8 initWithSuffix:customClientId2];
    goto LABEL_5;
  }

  v9 = objc_alloc_init(MEMORY[0x1E6992310]);
LABEL_6:

  return v9;
}

@end