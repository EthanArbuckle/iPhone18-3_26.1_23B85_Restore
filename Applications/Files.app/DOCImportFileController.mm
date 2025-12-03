@interface DOCImportFileController
- (_TtC5Files23DOCImportFileController)init;
- (void)documentPicker:(id)picker didConfirmDocumentsAtURLs:(id)ls;
- (void)documentPickerDidCancel:(id)cancel;
@end

@implementation DOCImportFileController

- (_TtC5Files23DOCImportFileController)init
{
  *(&self->super.isa + OBJC_IVAR____TtC5Files23DOCImportFileController_fileURLsToImport) = &_swiftEmptySetSingleton;
  *(&self->super.isa + OBJC_IVAR____TtC5Files23DOCImportFileController_deferredFileURLImportTimer) = 0;
  swift_unknownObjectWeakInit();
  *&self->fileURLsToImport[OBJC_IVAR____TtC5Files23DOCImportFileController_delegate] = 0;
  swift_unknownObjectWeakInit();
  v4.receiver = self;
  v4.super_class = type metadata accessor for DOCImportFileController();
  return [(DOCImportFileController *)&v4 init];
}

- (void)documentPicker:(id)picker didConfirmDocumentsAtURLs:(id)ls
{
  type metadata accessor for URL();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  pickerCopy = picker;
  selfCopy = self;
  sub_100070384(v6);
}

- (void)documentPickerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  selfCopy = self;
  sub_1000704EC();
}

@end