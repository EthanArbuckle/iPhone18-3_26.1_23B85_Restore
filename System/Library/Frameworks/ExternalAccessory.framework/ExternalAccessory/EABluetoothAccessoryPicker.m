@interface EABluetoothAccessoryPicker
- (EABluetoothAccessoryPicker)initWithPredicate:(id)a3;
- (void)dealloc;
- (void)devicePicker:(id)a3 didDismissWithResult:(int64_t)a4 deviceAddress:(id)a5;
- (void)dismissPicker;
- (void)show;
@end

@implementation EABluetoothAccessoryPicker

- (EABluetoothAccessoryPicker)initWithPredicate:(id)a3
{
  v8.receiver = self;
  v8.super_class = EABluetoothAccessoryPicker;
  v4 = [(EABluetoothAccessoryPicker *)&v8 init];
  if (v4)
  {
    v5 = [EAPostAlert CopyLocalizedString:@"BLUETOOTH_ACCESSORY_PICKER_TITLE"];
    if (!v5)
    {
      v5 = &stru_284B0F7E0;
    }

    if (getBTDevicePickerClass())
    {
      v6 = [objc_alloc(getBTDevicePickerClass()) initWithTitle:v5 service:128 discoveryNameFilter:a3];
      v4->_picker = v6;
      [(BTDevicePicker *)v6 setDelegate:v4];
    }

    else
    {
      NSLog(&cfstr_BtpickerNoBtde.isa);
    }
  }

  return v4;
}

- (void)dealloc
{
  picker = self->_picker;
  if (picker)
  {
    [(BTDevicePicker *)picker setDelegate:0];

    self->_picker = 0;
  }

  v4.receiver = self;
  v4.super_class = EABluetoothAccessoryPicker;
  [(EABluetoothAccessoryPicker *)&v4 dealloc];
}

- (void)show
{
  [(BTDevicePicker *)self->_picker setDelegate:self];
  picker = self->_picker;

  [(BTDevicePicker *)picker show];
}

- (void)dismissPicker
{
  [(BTDevicePicker *)self->_picker setDelegate:0];
  [(BTDevicePicker *)self->_picker dismissAnimated:1];

  self->_picker = 0;
}

- (void)devicePicker:(id)a3 didDismissWithResult:(int64_t)a4 deviceAddress:(id)a5
{
  if (self->_picker == a3)
  {
    delegate = self->_delegate;
    if (objc_opt_respondsToSelector())
    {
      v9 = self->_delegate;
      if ((a4 - 1) >= 3)
      {
        v10 = 0;
      }

      else
      {
        v10 = a4;
      }

      [(EABluetoothAccessoryPickerDelegate *)v9 devicePicker:self didSelectAddress:a5 errorCode:v10];
    }
  }
}

@end