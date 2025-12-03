@interface AVMobileContentTab
- (AVMobileContentTab)initWithCustomInfoViewController:(id)controller accessibilityIdentifier:(id)identifier;
@end

@implementation AVMobileContentTab

- (AVMobileContentTab)initWithCustomInfoViewController:(id)controller accessibilityIdentifier:(id)identifier
{
  controllerCopy = controller;
  identifierCopy = identifier;
  title = [controllerCopy title];
  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v11 = [title stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  if (!v11 || ![v11 length])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Empty or no title provided for info view controller in -[AVPlayerViewController customInfoViewControllers]: %@", controllerCopy}];
  }

  v15.receiver = self;
  v15.super_class = AVMobileContentTab;
  v12 = [(AVMobileContentTab *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_accessibilityIdentifier, identifier);
    objc_storeStrong(&v13->_displayName, v11);
    objc_storeStrong(&v13->_viewController, controller);
  }

  return v13;
}

@end