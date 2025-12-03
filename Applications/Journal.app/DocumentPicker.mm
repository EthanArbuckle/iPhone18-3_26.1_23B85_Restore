@interface DocumentPicker
- (_TtC7Journal14DocumentPicker)init;
- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls;
- (void)documentPickerWasCancelled:(id)cancelled;
@end

@implementation DocumentPicker

- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls
{
  type metadata accessor for URL();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  pickerCopy = picker;
  selfCopy = self;
  sub_100761B1C(v6);
}

- (void)documentPickerWasCancelled:(id)cancelled
{
  cancelledCopy = cancelled;
  selfCopy = self;
  sub_100761E30();
}

- (_TtC7Journal14DocumentPicker)init
{
  v3 = OBJC_IVAR____TtC7Journal14DocumentPicker_delegateContinuation;
  v4 = sub_1000F24EC(&qword_100AF05F0);
  (*(*(v4 - 8) + 56))(self + v3, 1, 1, v4);
  v6.receiver = self;
  v6.super_class = type metadata accessor for DocumentPicker();
  return [(DocumentPicker *)&v6 init];
}

@end