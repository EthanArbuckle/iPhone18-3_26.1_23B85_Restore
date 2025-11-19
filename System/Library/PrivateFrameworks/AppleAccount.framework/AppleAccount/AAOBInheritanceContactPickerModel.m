@interface AAOBInheritanceContactPickerModel
- (AAOBInheritanceContactPickerModel)init;
@end

@implementation AAOBInheritanceContactPickerModel

- (AAOBInheritanceContactPickerModel)init
{
  v14.receiver = self;
  v14.super_class = AAOBInheritanceContactPickerModel;
  v2 = [(AAOBInheritanceContactPickerModel *)&v14 init];
  v3 = v2;
  if (v2)
  {
    imageName = v2->_imageName;
    v2->_imageName = 0;

    v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    v6 = [v5 localizedStringForKey:@"INHERITANCE_CONTACT_PICKER_TITLE" value:0 table:@"Localizable"];
    title = v3->_title;
    v3->_title = v6;

    v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    v9 = [v8 localizedStringForKey:@"INHERITANCE_CONTACT_PICKER_MESSAGE" value:0 table:@"Localizable"];
    detailText = v3->_detailText;
    v3->_detailText = v9;

    primaryButton = v3->_primaryButton;
    v3->_primaryButton = 0;

    secondaryButton = v3->_secondaryButton;
    v3->_secondaryButton = 0;
  }

  return v3;
}

@end