@interface FileImportExportBridge
- (_TtC7SwiftUI22FileImportExportBridge)init;
- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls;
- (void)documentPickerWasCancelled:(id)cancelled;
@end

@implementation FileImportExportBridge

- (_TtC7SwiftUI22FileImportExportBridge)init
{
  ObjectType = swift_getObjectType();
  *&self->host[OBJC_IVAR____TtC7SwiftUI22FileImportExportBridge_host] = 0;
  swift_unknownObjectWeakInit();
  v4 = self + OBJC_IVAR____TtC7SwiftUI22FileImportExportBridge_presentationState;
  v5 = type metadata accessor for FileImportExportBridge.Presentation(0);
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = type metadata accessor for FileImportExportBridge.PresentationState(0);
  *&v4[*(v6 + 20)] = 0;
  *&v4[*(v6 + 24)] = 0;
  v7 = (&self->super.isa + OBJC_IVAR____TtC7SwiftUI22FileImportExportBridge_presentedPicker);
  *v7 = 0;
  v7[1] = 0;
  EnvironmentValues.init()();
  v9.receiver = self;
  v9.super_class = ObjectType;
  return [(FileImportExportBridge *)&v9 init];
}

- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls
{
  type metadata accessor for URL();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  pickerCopy = picker;
  selfCopy = self;
  FileImportExportBridge.documentPicker(_:didPickDocumentsAt:)(pickerCopy, v6);
}

- (void)documentPickerWasCancelled:(id)cancelled
{
  cancelledCopy = cancelled;
  selfCopy = self;
  FileImportExportBridge.documentPickerWasCancelled(_:)(cancelledCopy);
}

@end