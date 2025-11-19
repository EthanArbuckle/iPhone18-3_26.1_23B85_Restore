@interface CVALightRequestImplBase
- (CVALightRequestImplBase)init;
@end

@implementation CVALightRequestImplBase

- (CVALightRequestImplBase)init
{
  v6.receiver = self;
  v6.super_class = CVALightRequestImplBase;
  v2 = [(CVALightRequestImplBase *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_portraitStyleStrength = NAN;
    v4 = v2;
  }

  return v3;
}

@end