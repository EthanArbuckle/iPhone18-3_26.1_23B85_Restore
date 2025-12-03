@interface HPdetector_SceneClassifier_B238Input
- (HPdetector_SceneClassifier_B238Input)initWithImageDescriptors:(id)descriptors;
- (id)featureValueForName:(id)name;
@end

@implementation HPdetector_SceneClassifier_B238Input

- (HPdetector_SceneClassifier_B238Input)initWithImageDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  v9.receiver = self;
  v9.super_class = HPdetector_SceneClassifier_B238Input;
  v6 = [(HPdetector_SceneClassifier_B238Input *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_imageDescriptors, descriptors);
  }

  return v7;
}

- (id)featureValueForName:(id)name
{
  if ([name isEqualToString:@"imageDescriptors"])
  {
    imageDescriptors = [(HPdetector_SceneClassifier_B238Input *)self imageDescriptors];
    v5 = [MLFeatureValue featureValueWithMultiArray:imageDescriptors];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end