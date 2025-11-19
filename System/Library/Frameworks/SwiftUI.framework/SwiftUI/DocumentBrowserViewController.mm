@interface DocumentBrowserViewController
- (_TtC7SwiftUI29DocumentBrowserViewController)initWithCoder:(id)a3;
- (id)animationControllerForDismissedController:(id)a3;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (id)initForOpeningContentTypes:(id)a3;
- (id)initForOpeningFilesWithContentTypes:(id)a3;
- (void)documentBrowser:(id)a3 didImportDocumentAtURL:(id)a4 toDestinationURL:(id)a5;
- (void)documentBrowser:(id)a3 didPickDocumentsAtURLs:(id)a4;
- (void)documentBrowser:(id)a3 didRequestDocumentCreationWithHandler:(id)a4;
- (void)documentBrowser:(id)a3 failedToImportDocumentAtURL:(id)a4 error:(id)a5;
@end

@implementation DocumentBrowserViewController

- (_TtC7SwiftUI29DocumentBrowserViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7SwiftUI29DocumentBrowserViewController_documentConfigurations) = MEMORY[0x1E69E7CC0];
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7SwiftUI29DocumentBrowserViewController_configurationMap) = MEMORY[0x1E69E7CC8];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)documentBrowser:(id)a3 didRequestDocumentCreationWithHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  specialized DocumentBrowserViewController.documentBrowser(_:didRequestDocumentCreationWithHandler:)(partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSURL?, @unowned UIDocumentBrowserImportMode) -> (), v7);
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

    DocumentBrowserViewController.presentDocument(at:animated:)(v8, 1);

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
  DocumentBrowserViewController.presentDocument(at:animated:)(v9, 1);

  v14 = *(v7 + 8);
  v14(v9, v6);
  v14(v12, v6);
}

- (void)documentBrowser:(id)a3 failedToImportDocumentAtURL:(id)a4 error:(id)a5
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = self;
  v14 = a5;
  specialized DocumentBrowserViewController.documentBrowser(_:failedToImportDocumentAt:error:)(v12, v11, a5);

  (*(v9 + 8))(v11, v8);
}

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  specialized DocumentBrowserViewController.animationController(forPresented:presenting:source:)();
  v13 = v12;

  return v13;
}

- (id)animationControllerForDismissedController:(id)a3
{
  v4 = a3;
  v5 = self;
  DocumentBrowserViewController.animationController(forDismissed:)();
  v7 = v6;

  return v7;
}

- (id)initForOpeningFilesWithContentTypes:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)initForOpeningContentTypes:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end