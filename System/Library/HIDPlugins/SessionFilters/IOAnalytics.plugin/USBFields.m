@interface USBFields
@end

@implementation USBFields

void __get_USBFields_block_invoke(id a1)
{
  v18 = [CAField fieldWithName:@"depth" ioProperty:0 valueType:objc_opt_class()];
  v19[0] = v18;
  v17 = [CAField fieldWithName:@"idVendor" ioProperty:@"idVendor" valueType:objc_opt_class()];
  v19[1] = v17;
  v16 = [CAField fieldWithName:@"idVendorName" ioProperty:@"kUSBVendorString" valueType:objc_opt_class()];
  v19[2] = v16;
  v15 = [CAField fieldWithName:@"idProduct" ioProperty:@"idProduct" valueType:objc_opt_class()];
  v19[3] = v15;
  v14 = [CAField fieldWithName:@"idProductName" ioProperty:@"kUSBProductString" valueType:objc_opt_class()];
  v19[4] = v14;
  v13 = [CAField fieldWithName:@"linkRateType" ioProperty:@"USBSpeed" valueType:objc_opt_class()];
  v19[5] = v13;
  v12 = [CAField fieldWithName:@"linkRateDesc" ioProperty:0 valueType:objc_opt_class()];
  v19[6] = v12;
  v1 = [CAField fieldWithName:@"bDeviceClass" ioProperty:@"bDeviceClass" valueType:objc_opt_class()];
  v19[7] = v1;
  v2 = [CAField fieldWithName:@"bDeviceSubClass" ioProperty:@"bDeviceSubClass" valueType:objc_opt_class()];
  v19[8] = v2;
  v3 = [CAField fieldWithName:@"bDeviceProtocol" ioProperty:@"bDeviceProtocol" valueType:objc_opt_class()];
  v19[9] = v3;
  v4 = [CAField fieldWithName:@"bInterfaceClass" ioProperty:@"bInterfaceClass" valueType:objc_opt_class()];
  v19[10] = v4;
  v5 = [CAField fieldWithName:@"bInterfaceSubClass" ioProperty:@"bInterfaceSubClass" valueType:objc_opt_class()];
  v19[11] = v5;
  v6 = [CAField fieldWithName:@"bInterfaceProtocol" ioProperty:@"bInterfaceProtocol" valueType:objc_opt_class()];
  v19[12] = v6;
  v7 = [CAField fieldWithName:@"bcdUSB" ioProperty:@"bcdUSB" valueType:objc_opt_class()];
  v19[13] = v7;
  v8 = [CAField fieldWithName:@"bcdDevice" ioProperty:@"bcdDevice" valueType:objc_opt_class()];
  v19[14] = v8;
  v9 = [CAField fieldWithName:@"usbClassDesc" ioProperty:0 valueType:objc_opt_class()];
  v19[15] = v9;
  v10 = [NSArray arrayWithObjects:v19 count:16];
  v11 = get_USBFields_usbFields;
  get_USBFields_usbFields = v10;
}

id __get_USBFields_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 name];
  v4 = [v2 containsObject:v3];

  return v4;
}

@end