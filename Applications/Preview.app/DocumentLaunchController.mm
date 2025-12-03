@interface DocumentLaunchController
- (_TtC7Preview24DocumentLaunchController)init;
- (void)documentBrowser:(id)browser didImportDocumentAtURL:(id)l toDestinationURL:(id)rL;
- (void)documentBrowser:(id)browser didPickDocumentsAtURLs:(id)ls;
- (void)documentBrowser:(id)browser didRequestDocumentCreationWithHandler:(id)handler;
- (void)documentBrowser:(id)browser failedToImportDocumentAtURL:(id)l error:(id)error;
- (void)presentationController:(id)controller willPresentWithAdaptiveStyle:(int64_t)style transitionCoordinator:(id)coordinator;
@end

@implementation DocumentLaunchController

- (void)documentBrowser:(id)browser didRequestDocumentCreationWithHandler:(id)handler
{
  v6 = j___Block_copy(handler);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  browserCopy = browser;
  selfCopy = self;
  sub_10000E398(browserCopy, sub_10001335C, v7);
}

- (void)documentBrowser:(id)browser didPickDocumentsAtURLs:(id)ls
{
  type metadata accessor for URL();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  browserCopy = browser;
  selfCopy = self;
  sub_1000120C8(v6);
}

- (void)documentBrowser:(id)browser didImportDocumentAtURL:(id)l toDestinationURL:(id)rL
{
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v17 - v12;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  browserCopy = browser;
  selfCopy = self;
  sub_1000122FC(v13, v11);

  v16 = *(v8 + 8);
  v16(v11, v7);
  v16(v13, v7);
}

- (void)documentBrowser:(id)browser failedToImportDocumentAtURL:(id)l error:(id)error
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  browserCopy = browser;
  selfCopy = self;
  errorCopy = error;
  sub_100012700(v11, error);

  (*(v9 + 8))(v11, v8);
}

- (_TtC7Preview24DocumentLaunchController)init
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)presentationController:(id)controller willPresentWithAdaptiveStyle:(int64_t)style transitionCoordinator:(id)coordinator
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  controllerCopy = controller;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100012A5C(controllerCopy, coordinator);

  swift_unknownObjectRelease();
}

@end