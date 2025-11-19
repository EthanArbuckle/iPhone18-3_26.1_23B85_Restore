@interface AXFeatureOverrideSession
- (AXFeatureOverrideSession)initWithUUID:(id)a3;
@end

@implementation AXFeatureOverrideSession

- (AXFeatureOverrideSession)initWithUUID:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = AXFeatureOverrideSession;
  v5 = [(AXFeatureOverrideSession *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(AXFeatureOverrideSession *)v5 setUuid:v4];
  }

  return v6;
}

@end