@interface HPdetector_SmartCam_B238Output
- (HPdetector_SmartCam_B238Output)initWithHomePodDetected:(id)detected;
- (id)featureValueForName:(id)name;
@end

@implementation HPdetector_SmartCam_B238Output

- (HPdetector_SmartCam_B238Output)initWithHomePodDetected:(id)detected
{
  detectedCopy = detected;
  v9.receiver = self;
  v9.super_class = HPdetector_SmartCam_B238Output;
  v6 = [(HPdetector_SmartCam_B238Output *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_HomePodDetected, detected);
  }

  return v7;
}

- (id)featureValueForName:(id)name
{
  if ([name isEqualToString:@"HomePodDetected"])
  {
    homePodDetected = [(HPdetector_SmartCam_B238Output *)self HomePodDetected];
    v5 = [MLFeatureValue featureValueWithMultiArray:homePodDetected];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end