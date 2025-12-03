@interface TeachableMomentConfiguration
- (TeachableMomentConfiguration)initWithTitle:(id)title buttonTitle:(id)buttonTitle userDefaultSaveKey:(id)key illustrationViewController:(id)controller;
@end

@implementation TeachableMomentConfiguration

- (TeachableMomentConfiguration)initWithTitle:(id)title buttonTitle:(id)buttonTitle userDefaultSaveKey:(id)key illustrationViewController:(id)controller
{
  titleCopy = title;
  buttonTitleCopy = buttonTitle;
  keyCopy = key;
  controllerCopy = controller;
  v18.receiver = self;
  v18.super_class = TeachableMomentConfiguration;
  v15 = [(TeachableMomentConfiguration *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_title, title);
    objc_storeStrong(&v16->_buttonTitle, buttonTitle);
    objc_storeStrong(&v16->_userDefaultSaveKey, key);
    objc_storeStrong(&v16->_illustrationViewController, controller);
  }

  return v16;
}

@end