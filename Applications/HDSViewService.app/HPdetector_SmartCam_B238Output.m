@interface HPdetector_SmartCam_B238Output
- (HPdetector_SmartCam_B238Output)initWithHomePodDetected:(id)a3;
- (id)featureValueForName:(id)a3;
@end

@implementation HPdetector_SmartCam_B238Output

- (HPdetector_SmartCam_B238Output)initWithHomePodDetected:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HPdetector_SmartCam_B238Output;
  v6 = [(HPdetector_SmartCam_B238Output *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_HomePodDetected, a3);
  }

  return v7;
}

- (id)featureValueForName:(id)a3
{
  if ([a3 isEqualToString:@"HomePodDetected"])
  {
    v4 = [(HPdetector_SmartCam_B238Output *)self HomePodDetected];
    v5 = [MLFeatureValue featureValueWithMultiArray:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end