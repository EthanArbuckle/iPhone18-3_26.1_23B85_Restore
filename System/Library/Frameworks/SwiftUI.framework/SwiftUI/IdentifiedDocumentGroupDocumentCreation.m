@interface IdentifiedDocumentGroupDocumentCreation
- (_TtC7SwiftUI39IdentifiedDocumentGroupDocumentCreation)init;
- (void)documentBrowser:(id)a3 didImportDocumentAtURL:(id)a4 toDestinationURL:(id)a5;
- (void)documentBrowser:(id)a3 didPickDocumentsAtURLs:(id)a4;
- (void)documentBrowser:(id)a3 didRequestDocumentCreationWithHandler:(id)a4;
@end

@implementation IdentifiedDocumentGroupDocumentCreation

- (_TtC7SwiftUI39IdentifiedDocumentGroupDocumentCreation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)documentBrowser:(id)a3 didRequestDocumentCreationWithHandler:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  specialized IdentifiedDocumentGroupDocumentCreation.documentBrowser(_:didRequestDocumentCreationWithHandler:)(v7, v8, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)documentBrowser:(id)a3 didPickDocumentsAtURLs:(id)a4
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v9 + 16))
  {
    (*(v6 + 16))(v8, v9 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v5);
    v10 = self;

    IdentifiedDocumentGroupDocumentCreation.presentDocument(at:)(v8);

    (*(v6 + 8))(v8, v5);
  }

  else
  {
  }
}

- (void)documentBrowser:(id)a3 didImportDocumentAtURL:(id)a4 toDestinationURL:(id)a5
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v15 - v11;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = self;
  IdentifiedDocumentGroupDocumentCreation.presentDocument(at:)(v9);

  v14 = *(v7 + 8);
  v14(v9, v6);
  v14(v12, v6);
}

@end