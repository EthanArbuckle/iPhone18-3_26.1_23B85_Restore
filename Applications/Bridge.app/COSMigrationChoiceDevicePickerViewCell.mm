@interface COSMigrationChoiceDevicePickerViewCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (COSMigrationChoiceDevicePickerViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)layoutSubviews;
@end

@implementation COSMigrationChoiceDevicePickerViewCell

- (COSMigrationChoiceDevicePickerViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v10.receiver = self;
  v10.super_class = COSMigrationChoiceDevicePickerViewCell;
  v4 = [(COSMigrationChoiceDevicePickerViewCell *)&v10 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [[BPSMultipleWatchMigrationView alloc] initWithFrame:1 andStyle:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    migrationPickerView = v4->_migrationPickerView;
    v4->_migrationPickerView = v5;

    v7 = v4->_migrationPickerView;
    v8 = BPSMigrationDevices();
    [(BPSMultipleWatchMigrationView *)v7 setMigratableDevices:v8];

    [(COSMigrationChoiceDevicePickerViewCell *)v4 addSubview:v4->_migrationPickerView];
  }

  return v4;
}

- (void)layoutSubviews
{
  [(BPSMultipleWatchMigrationView *)self->_migrationPickerView sizeThatFits:CGSizeZero.width, CGSizeZero.height];
  migrationPickerView = self->_migrationPickerView;

  [(BPSMultipleWatchMigrationView *)migrationPickerView setFrame:0.0, 0.0, v3, v4];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(BPSMultipleWatchMigrationView *)self->_migrationPickerView sizeThatFits:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

@end