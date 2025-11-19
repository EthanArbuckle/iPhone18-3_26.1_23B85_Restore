@interface NetworkProfilePickerView.Coordinator
- (_TtCV46AddDevicesToAutomatedDeviceEnrollmentExtension24NetworkProfilePickerView11Coordinator)init;
- (void)documentPicker:(id)a3 didPickDocumentsAtURLs:(id)a4;
- (void)documentPickerWasCancelled:(id)a3;
@end

@implementation NetworkProfilePickerView.Coordinator

- (void)documentPicker:(id)a3 didPickDocumentsAtURLs:(id)a4
{
  sub_10008C9BC();
  v6 = sub_10008DD3C();
  v7 = a3;
  v8 = self;
  sub_10007C494(v6);
}

- (void)documentPickerWasCancelled:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10007C768();
}

- (_TtCV46AddDevicesToAutomatedDeviceEnrollmentExtension24NetworkProfilePickerView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end