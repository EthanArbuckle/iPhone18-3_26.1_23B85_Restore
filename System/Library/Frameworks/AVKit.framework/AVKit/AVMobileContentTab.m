@interface AVMobileContentTab
- (AVMobileContentTab)initWithCustomInfoViewController:(id)a3 accessibilityIdentifier:(id)a4;
@end

@implementation AVMobileContentTab

- (AVMobileContentTab)initWithCustomInfoViewController:(id)a3 accessibilityIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 title];
  v10 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v11 = [v9 stringByTrimmingCharactersInSet:v10];

  if (!v11 || ![v11 length])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Empty or no title provided for info view controller in -[AVPlayerViewController customInfoViewControllers]: %@", v7}];
  }

  v15.receiver = self;
  v15.super_class = AVMobileContentTab;
  v12 = [(AVMobileContentTab *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_accessibilityIdentifier, a4);
    objc_storeStrong(&v13->_displayName, v11);
    objc_storeStrong(&v13->_viewController, a3);
  }

  return v13;
}

@end