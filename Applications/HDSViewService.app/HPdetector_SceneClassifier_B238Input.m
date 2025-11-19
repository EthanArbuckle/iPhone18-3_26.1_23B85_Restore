@interface HPdetector_SceneClassifier_B238Input
- (HPdetector_SceneClassifier_B238Input)initWithImageDescriptors:(id)a3;
- (id)featureValueForName:(id)a3;
@end

@implementation HPdetector_SceneClassifier_B238Input

- (HPdetector_SceneClassifier_B238Input)initWithImageDescriptors:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HPdetector_SceneClassifier_B238Input;
  v6 = [(HPdetector_SceneClassifier_B238Input *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_imageDescriptors, a3);
  }

  return v7;
}

- (id)featureValueForName:(id)a3
{
  if ([a3 isEqualToString:@"imageDescriptors"])
  {
    v4 = [(HPdetector_SceneClassifier_B238Input *)self imageDescriptors];
    v5 = [MLFeatureValue featureValueWithMultiArray:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end