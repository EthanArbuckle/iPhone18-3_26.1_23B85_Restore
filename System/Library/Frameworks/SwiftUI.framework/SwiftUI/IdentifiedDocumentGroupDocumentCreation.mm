@interface IdentifiedDocumentGroupDocumentCreation
- (_TtC7SwiftUI39IdentifiedDocumentGroupDocumentCreation)init;
- (void)documentBrowser:(id)browser didImportDocumentAtURL:(id)l toDestinationURL:(id)rL;
- (void)documentBrowser:(id)browser didPickDocumentsAtURLs:(id)ls;
- (void)documentBrowser:(id)browser didRequestDocumentCreationWithHandler:(id)handler;
@end

@implementation IdentifiedDocumentGroupDocumentCreation

- (_TtC7SwiftUI39IdentifiedDocumentGroupDocumentCreation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)documentBrowser:(id)browser didRequestDocumentCreationWithHandler:(id)handler
{
  v6 = _Block_copy(handler);
  _Block_copy(v6);
  browserCopy = browser;
  selfCopy = self;
  specialized IdentifiedDocumentGroupDocumentCreation.documentBrowser(_:didRequestDocumentCreationWithHandler:)(browserCopy, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)documentBrowser:(id)browser didPickDocumentsAtURLs:(id)ls
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v9 + 16))
  {
    (*(v6 + 16))(v8, v9 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v5);
    selfCopy = self;

    IdentifiedDocumentGroupDocumentCreation.presentDocument(at:)(v8);

    (*(v6 + 8))(v8, v5);
  }

  else
  {
  }
}

- (void)documentBrowser:(id)browser didImportDocumentAtURL:(id)l toDestinationURL:(id)rL
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v15 - v11;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  IdentifiedDocumentGroupDocumentCreation.presentDocument(at:)(v9);

  v14 = *(v7 + 8);
  v14(v9, v6);
  v14(v12, v6);
}

@end