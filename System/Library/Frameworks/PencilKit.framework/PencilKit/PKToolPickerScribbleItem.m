@interface PKToolPickerScribbleItem
- (PKToolPickerScribbleItem)init;
@end

@implementation PKToolPickerScribbleItem

- (PKToolPickerScribbleItem)init
{
  v3 = objc_alloc_init(PKHandwritingTool);
  v6.receiver = self;
  v6.super_class = PKToolPickerScribbleItem;
  v4 = [(PKToolPickerItem *)&v6 initWithTool:v3];

  return v4;
}

@end