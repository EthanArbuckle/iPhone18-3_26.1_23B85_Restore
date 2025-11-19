@interface AVTCoreModelMulticolorAuxilaryPickerItem
- (AVTCoreModelMulticolorAuxilaryPickerItem)initWithIdentifier:(id)a3 title:(id)a4 message:(id)a5;
@end

@implementation AVTCoreModelMulticolorAuxilaryPickerItem

- (AVTCoreModelMulticolorAuxilaryPickerItem)initWithIdentifier:(id)a3 title:(id)a4 message:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = AVTCoreModelMulticolorAuxilaryPickerItem;
  v12 = [(AVTCoreModelMulticolorAuxilaryPickerItem *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, a3);
    objc_storeStrong(&v13->_title, a4);
    objc_storeStrong(&v13->_message, a5);
  }

  return v13;
}

@end