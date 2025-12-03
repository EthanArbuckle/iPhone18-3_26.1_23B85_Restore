@interface DocumentBrowserViewController
- (_TtC7SwiftUI29DocumentBrowserViewController)initWithCoder:(id)coder;
- (id)animationControllerForDismissedController:(id)controller;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (id)initForOpeningContentTypes:(id)types;
- (id)initForOpeningFilesWithContentTypes:(id)types;
- (void)documentBrowser:(id)browser didImportDocumentAtURL:(id)l toDestinationURL:(id)rL;
- (void)documentBrowser:(id)browser didPickDocumentsAtURLs:(id)ls;
- (void)documentBrowser:(id)browser didRequestDocumentCreationWithHandler:(id)handler;
- (void)documentBrowser:(id)browser failedToImportDocumentAtURL:(id)l error:(id)error;
@end

@implementation DocumentBrowserViewController

- (_TtC7SwiftUI29DocumentBrowserViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7SwiftUI29DocumentBrowserViewController_documentConfigurations) = MEMORY[0x1E69E7CC0];
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7SwiftUI29DocumentBrowserViewController_configurationMap) = MEMORY[0x1E69E7CC8];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)documentBrowser:(id)browser didRequestDocumentCreationWithHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  browserCopy = browser;
  selfCopy = self;
  specialized DocumentBrowserViewController.documentBrowser(_:didRequestDocumentCreationWithHandler:)(partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSURL?, @unowned UIDocumentBrowserImportMode) -> (), v7);
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

    DocumentBrowserViewController.presentDocument(at:animated:)(v8, 1);

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
  DocumentBrowserViewController.presentDocument(at:animated:)(v9, 1);

  v14 = *(v7 + 8);
  v14(v9, v6);
  v14(v12, v6);
}

- (void)documentBrowser:(id)browser failedToImportDocumentAtURL:(id)l error:(id)error
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  browserCopy = browser;
  selfCopy = self;
  errorCopy = error;
  specialized DocumentBrowserViewController.documentBrowser(_:failedToImportDocumentAt:error:)(browserCopy, v11, error);

  (*(v9 + 8))(v11, v8);
}

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  controllerCopy = controller;
  presentingControllerCopy = presentingController;
  sourceControllerCopy = sourceController;
  selfCopy = self;
  specialized DocumentBrowserViewController.animationController(forPresented:presenting:source:)();
  v13 = v12;

  return v13;
}

- (id)animationControllerForDismissedController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  DocumentBrowserViewController.animationController(forDismissed:)();
  v7 = v6;

  return v7;
}

- (id)initForOpeningFilesWithContentTypes:(id)types
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)initForOpeningContentTypes:(id)types
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end