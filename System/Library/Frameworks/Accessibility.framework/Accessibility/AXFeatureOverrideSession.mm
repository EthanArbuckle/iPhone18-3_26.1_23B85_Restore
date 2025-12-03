@interface AXFeatureOverrideSession
- (AXFeatureOverrideSession)initWithUUID:(id)d;
@end

@implementation AXFeatureOverrideSession

- (AXFeatureOverrideSession)initWithUUID:(id)d
{
  dCopy = d;
  v8.receiver = self;
  v8.super_class = AXFeatureOverrideSession;
  v5 = [(AXFeatureOverrideSession *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(AXFeatureOverrideSession *)v5 setUuid:dCopy];
  }

  return v6;
}

@end