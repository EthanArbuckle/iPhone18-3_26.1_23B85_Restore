@interface USBFW
@end

@implementation USBFW

void __get_kCAEvent_USBFW_block_invoke(id a1)
{
  v1 = [CAField fieldWithName:@"fwVersion" ioProperty:@"Version" valueType:objc_opt_class()];
  v8[0] = v1;
  v2 = [CAField fieldWithName:@"iecsRevision" ioProperty:@"Revision" valueType:objc_opt_class()];
  v8[1] = v2;
  v3 = [CAField fieldWithName:@"address" ioProperty:@"Address" valueType:objc_opt_class()];
  v8[2] = v3;
  v4 = [CAField fieldWithName:@"routerID" ioProperty:0 valueType:objc_opt_class()];
  v8[3] = v4;
  v5 = [NSArray arrayWithObjects:v8 count:4];

  v6 = [CAEvent eventWithName:@"com.apple.peripheral.usb.firmware" fields:v5];
  v7 = get_kCAEvent_USBFW_event;
  get_kCAEvent_USBFW_event = v6;
}

@end