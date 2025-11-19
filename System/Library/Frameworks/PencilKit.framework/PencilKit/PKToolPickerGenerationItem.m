@interface PKToolPickerGenerationItem
- (PKToolPickerGenerationItem)init;
@end

@implementation PKToolPickerGenerationItem

- (PKToolPickerGenerationItem)init
{
  v3 = objc_alloc_init(PKGenerationTool);
  v6.receiver = self;
  v6.super_class = PKToolPickerGenerationItem;
  v4 = [(PKToolPickerItem *)&v6 initWithTool:v3];

  return v4;
}

@end