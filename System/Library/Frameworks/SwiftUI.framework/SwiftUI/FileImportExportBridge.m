@interface FileImportExportBridge
- (_TtC7SwiftUI22FileImportExportBridge)init;
- (void)documentPicker:(id)a3 didPickDocumentsAtURLs:(id)a4;
- (void)documentPickerWasCancelled:(id)a3;
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

- (void)documentPicker:(id)a3 didPickDocumentsAtURLs:(id)a4
{
  type metadata accessor for URL();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  FileImportExportBridge.documentPicker(_:didPickDocumentsAt:)(v7, v6);
}

- (void)documentPickerWasCancelled:(id)a3
{
  v4 = a3;
  v5 = self;
  FileImportExportBridge.documentPickerWasCancelled(_:)(v4);
}

@end