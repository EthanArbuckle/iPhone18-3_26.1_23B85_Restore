@interface PKToolPickerLassoItem
- (PKToolPickerLassoItem)init;
@end

@implementation PKToolPickerLassoItem

- (PKToolPickerLassoItem)init
{
  v3 = objc_alloc_init(PKLassoTool);
  v6.receiver = self;
  v6.super_class = PKToolPickerLassoItem;
  v4 = [(PKToolPickerItem *)&v6 initWithTool:v3];

  return v4;
}

@end