@interface NetworkProfilePickerView.Coordinator
- (_TtCV46AddDevicesToAutomatedDeviceEnrollmentExtension24NetworkProfilePickerView11Coordinator)init;
- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls;
- (void)documentPickerWasCancelled:(id)cancelled;
@end

@implementation NetworkProfilePickerView.Coordinator

- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls
{
  sub_10008C9BC();
  v6 = sub_10008DD3C();
  pickerCopy = picker;
  selfCopy = self;
  sub_10007C494(v6);
}

- (void)documentPickerWasCancelled:(id)cancelled
{
  cancelledCopy = cancelled;
  selfCopy = self;
  sub_10007C768();
}

- (_TtCV46AddDevicesToAutomatedDeviceEnrollmentExtension24NetworkProfilePickerView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end