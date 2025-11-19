@interface PKToolPickerRulerItem
- (PKToolPickerRulerItem)init;
@end

@implementation PKToolPickerRulerItem

- (PKToolPickerRulerItem)init
{
  v3 = objc_alloc_init(PKRulerTool);
  v6.receiver = self;
  v6.super_class = PKToolPickerRulerItem;
  v4 = [(PKToolPickerItem *)&v6 initWithTool:v3];

  return v4;
}

@end