@interface PKToolPickerWeak
- (PKToolPicker)toolPicker;
@end

@implementation PKToolPickerWeak

- (PKToolPicker)toolPicker
{
  WeakRetained = objc_loadWeakRetained(&self->_toolPicker);

  return WeakRetained;
}

@end