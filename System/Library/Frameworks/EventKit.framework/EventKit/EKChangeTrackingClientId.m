@interface EKChangeTrackingClientId
- (CADChangeTrackingClientId)CADChangeTrackingClientId;
- (EKChangeTrackingClientId)initWithCustomClientId:(id)a3 suffix:(id)a4;
@end

@implementation EKChangeTrackingClientId

- (EKChangeTrackingClientId)initWithCustomClientId:(id)a3 suffix:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = EKChangeTrackingClientId;
  v8 = [(EKChangeTrackingClientId *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    customClientId = v8->_customClientId;
    v8->_customClientId = v9;

    v11 = [v7 copy];
    suffix = v8->_suffix;
    v8->_suffix = v11;
  }

  return v8;
}

- (CADChangeTrackingClientId)CADChangeTrackingClientId
{
  v3 = [(EKChangeTrackingClientId *)self customClientId];

  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E6992310]);
    v5 = [(EKChangeTrackingClientId *)self customClientId];
    v6 = [v4 initWithCustomClientId:v5];
LABEL_5:
    v9 = v6;

    goto LABEL_6;
  }

  v7 = [(EKChangeTrackingClientId *)self suffix];

  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x1E6992310]);
    v5 = [(EKChangeTrackingClientId *)self suffix];
    v6 = [v8 initWithSuffix:v5];
    goto LABEL_5;
  }

  v9 = objc_alloc_init(MEMORY[0x1E6992310]);
LABEL_6:

  return v9;
}

@end