@interface USB
@end

@implementation USB

void __get_kCAEvent_USB_Device_Daily_block_invoke(id a1)
{
  v5[0] = @"depth";
  v5[1] = @"idVendor";
  v5[2] = @"idVendorName";
  v5[3] = @"idProduct";
  v5[4] = @"idProductName";
  v5[5] = @"linkRateType";
  v5[6] = @"linkRateDesc";
  v5[7] = @"bDeviceClass";
  v5[8] = @"bDeviceSubClass";
  v5[9] = @"bDeviceProtocol";
  v5[10] = @"bcdUSB";
  v5[11] = @"bcdDevice";
  v5[12] = @"usbClassDesc";
  v1 = [NSArray arrayWithObjects:v5 count:13];
  v2 = get_USBFields(v1);
  v3 = [CAEvent eventWithName:@"com.apple.peripheral.usb.IOUSBHostDevice.Daily" fields:v2];
  v4 = get_kCAEvent_USB_Device_Daily_event;
  get_kCAEvent_USB_Device_Daily_event = v3;
}

void __get_kCAEvent_USB_Interface_Daily_block_invoke(id a1)
{
  v8[0] = @"depth";
  v8[1] = @"idVendor";
  v8[2] = @"idProduct";
  v8[3] = @"linkRateType";
  v8[4] = @"linkRateDesc";
  v8[5] = @"bDeviceClass";
  v8[6] = @"bDeviceSubClass";
  v8[7] = @"bDeviceProtocol";
  v8[8] = @"bInterfaceClass";
  v8[9] = @"bInterfaceSubClass";
  v8[10] = @"bInterfaceProtocol";
  v8[11] = @"bcdUSB";
  v8[12] = @"bcdDevice";
  v8[13] = @"usbClassDesc";
  v1 = [NSArray arrayWithObjects:v8 count:14];
  v2 = get_USBFields(v1);
  v3 = [v2 mutableCopy];

  v4 = [CAField fieldWithName:@"idVendorName" ioProperty:@"USB Vendor Name" valueType:objc_opt_class()];
  [v3 addObject:v4];

  v5 = [CAField fieldWithName:@"idProductName" ioProperty:@"USB Product Name" valueType:objc_opt_class()];
  [v3 addObject:v5];

  v6 = [CAEvent eventWithName:@"com.apple.peripheral.usb.IOUSBHostInterface.Daily" fields:v3];
  v7 = get_kCAEvent_USB_Interface_Daily_event;
  get_kCAEvent_USB_Interface_Daily_event = v6;
}

@end