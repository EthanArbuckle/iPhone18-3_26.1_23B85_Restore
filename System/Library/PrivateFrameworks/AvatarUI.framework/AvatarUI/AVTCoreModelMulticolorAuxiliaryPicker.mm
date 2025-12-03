@interface AVTCoreModelMulticolorAuxiliaryPicker
- (AVTCoreModelMulticolorAuxiliaryPicker)initWithType:(id)type items:(id)items;
@end

@implementation AVTCoreModelMulticolorAuxiliaryPicker

- (AVTCoreModelMulticolorAuxiliaryPicker)initWithType:(id)type items:(id)items
{
  typeCopy = type;
  itemsCopy = items;
  v12.receiver = self;
  v12.super_class = AVTCoreModelMulticolorAuxiliaryPicker;
  v9 = [(AVTCoreModelMulticolorAuxiliaryPicker *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_type, type);
    objc_storeStrong(&v10->_items, items);
  }

  return v10;
}

@end