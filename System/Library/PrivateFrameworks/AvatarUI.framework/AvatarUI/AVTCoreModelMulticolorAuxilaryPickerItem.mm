@interface AVTCoreModelMulticolorAuxilaryPickerItem
- (AVTCoreModelMulticolorAuxilaryPickerItem)initWithIdentifier:(id)identifier title:(id)title message:(id)message;
@end

@implementation AVTCoreModelMulticolorAuxilaryPickerItem

- (AVTCoreModelMulticolorAuxilaryPickerItem)initWithIdentifier:(id)identifier title:(id)title message:(id)message
{
  identifierCopy = identifier;
  titleCopy = title;
  messageCopy = message;
  v15.receiver = self;
  v15.super_class = AVTCoreModelMulticolorAuxilaryPickerItem;
  v12 = [(AVTCoreModelMulticolorAuxilaryPickerItem *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, identifier);
    objc_storeStrong(&v13->_title, title);
    objc_storeStrong(&v13->_message, message);
  }

  return v13;
}

@end