@interface AMPOnboardingFeature
- (AMPOnboardingFeature)initWithImage:(id)image titleText:(id)text descriptionText:(id)descriptionText;
@end

@implementation AMPOnboardingFeature

- (AMPOnboardingFeature)initWithImage:(id)image titleText:(id)text descriptionText:(id)descriptionText
{
  imageCopy = image;
  textCopy = text;
  descriptionTextCopy = descriptionText;
  v19.receiver = self;
  v19.super_class = AMPOnboardingFeature;
  v12 = [(AMPOnboardingFeature *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_image, image);
    v14 = [textCopy copy];
    titleText = v13->_titleText;
    v13->_titleText = v14;

    v16 = [descriptionTextCopy copy];
    descriptionText = v13->_descriptionText;
    v13->_descriptionText = v16;
  }

  return v13;
}

@end