@interface EABluetoothAccessoryPicker
- (EABluetoothAccessoryPicker)initWithPredicate:(id)predicate;
- (void)dealloc;
- (void)devicePicker:(id)picker didDismissWithResult:(int64_t)result deviceAddress:(id)address;
- (void)dismissPicker;
- (void)show;
@end

@implementation EABluetoothAccessoryPicker

- (EABluetoothAccessoryPicker)initWithPredicate:(id)predicate
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
      v6 = [objc_alloc(getBTDevicePickerClass()) initWithTitle:v5 service:128 discoveryNameFilter:predicate];
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

- (void)devicePicker:(id)picker didDismissWithResult:(int64_t)result deviceAddress:(id)address
{
  if (self->_picker == picker)
  {
    delegate = self->_delegate;
    if (objc_opt_respondsToSelector())
    {
      v9 = self->_delegate;
      if ((result - 1) >= 3)
      {
        resultCopy = 0;
      }

      else
      {
        resultCopy = result;
      }

      [(EABluetoothAccessoryPickerDelegate *)v9 devicePicker:self didSelectAddress:address errorCode:resultCopy];
    }
  }
}

@end