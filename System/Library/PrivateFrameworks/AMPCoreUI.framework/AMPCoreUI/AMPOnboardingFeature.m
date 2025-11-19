@interface AMPOnboardingFeature
- (AMPOnboardingFeature)initWithImage:(id)a3 titleText:(id)a4 descriptionText:(id)a5;
@end

@implementation AMPOnboardingFeature

- (AMPOnboardingFeature)initWithImage:(id)a3 titleText:(id)a4 descriptionText:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = AMPOnboardingFeature;
  v12 = [(AMPOnboardingFeature *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_image, a3);
    v14 = [v10 copy];
    titleText = v13->_titleText;
    v13->_titleText = v14;

    v16 = [v11 copy];
    descriptionText = v13->_descriptionText;
    v13->_descriptionText = v16;
  }

  return v13;
}

@end