@interface VehicleColorPickerCell
- (VehicleColorPicker)colorPicker;
- (double)cellHeightWithWidth:(double)width;
@end

@implementation VehicleColorPickerCell

- (VehicleColorPicker)colorPicker
{
  WeakRetained = objc_loadWeakRetained(&self->_colorPicker);

  return WeakRetained;
}

- (double)cellHeightWithWidth:(double)width
{
  WeakRetained = objc_loadWeakRetained(&self->_colorPicker);
  [WeakRetained layoutIfNeeded];

  v5 = objc_loadWeakRetained(&self->_colorPicker);
  [v5 bounds];
  [v5 sizeThatFits:{v6, 1.79769313e308}];
  v8 = v7;

  return fmax(v8 + 16.0, 44.0);
}

@end