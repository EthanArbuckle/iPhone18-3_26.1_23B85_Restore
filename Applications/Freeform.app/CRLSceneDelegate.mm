@interface CRLSceneDelegate
- (id)stateRestorationActivityForScene:(id)scene;
- (void)didTapWelcomeContinueButton:(id)button;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)scene:(id)scene continueUserActivity:(id)activity;
- (void)scene:(id)scene didFailToContinueUserActivityWithType:(id)type error:(id)error;
- (void)scene:(id)scene openURLContexts:(id)contexts;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidBecomeActive:(id)active;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)sceneDidEnterBackground:(id)background;
- (void)sceneWillEnterForeground:(id)foreground;
- (void)sceneWillResignActive:(id)active;
- (void)setUserActivity:;
- (void)setWindow:(id)window;
- (void)windowScene:(id)scene performActionForShortcutItem:(id)item completionHandler:(id)handler;
- (void)windowScene:(id)scene userDidAcceptCloudKitShareWithMetadata:(id)metadata;
@end

@implementation CRLSceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_10004C6F8(sceneCopy, sessionCopy, optionsCopy);
}

- (void)sceneWillEnterForeground:(id)foreground
{
  v4 = objc_opt_self();
  foregroundCopy = foreground;
  defaultCenter = [v4 defaultCenter];
  if (qword_1019F1F30 != -1)
  {
    swift_once();
  }

  [defaultCenter postNotificationName:qword_101AD7928 object:foregroundCopy];
}

- (void)sceneDidBecomeActive:(id)active
{
  activeCopy = active;
  selfCopy = self;
  sub_10007F8B4(activeCopy);
}

- (void)setWindow:(id)window
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_window) = window;
  windowCopy = window;
}

- (void)scene:(id)scene openURLContexts:(id)contexts
{
  sub_100006370(0, &unk_1019FCBA0);
  sub_10000FDE0(&unk_101A15B40, &unk_1019FCBA0);
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  sceneCopy = scene;
  selfCopy = self;
  sub_100C2FDB4(v6);
}

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  selfCopy = self;
  sub_100C3018C();
}

- (void)sceneWillResignActive:(id)active
{
  activeCopy = active;
  selfCopy = self;
  sub_100C131E8(activeCopy);
}

- (void)sceneDidEnterBackground:(id)background
{
  backgroundCopy = background;
  selfCopy = self;
  sub_100C134E8(backgroundCopy);
}

- (void)windowScene:(id)scene performActionForShortcutItem:(id)item completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  sceneCopy = scene;
  itemCopy = item;
  selfCopy = self;
  sub_100C30650(itemCopy);
  _Block_release(v8);
}

- (id)stateRestorationActivityForScene:(id)scene
{
  sceneCopy = scene;
  selfCopy = self;
  v6 = sub_100C30B90();

  return v6;
}

- (void)windowScene:(id)scene userDidAcceptCloudKitShareWithMetadata:(id)metadata
{
  metadataCopy = metadata;
  selfCopy = self;
  sub_100C196F0(metadataCopy);
}

- (void)scene:(id)scene continueUserActivity:(id)activity
{
  sceneCopy = scene;
  activityCopy = activity;
  selfCopy = self;
  sub_100C2E834(activityCopy);
}

- (void)scene:(id)scene didFailToContinueUserActivityWithType:(id)type error:(id)error
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = qword_1019F20A8;
  errorCopy = error;
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = static OS_os_log.crlError;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  *(inited + 56) = &type metadata for String;
  v13 = sub_1000053B0();
  *(inited + 64) = v13;
  *(inited + 32) = v6;
  *(inited + 40) = v8;
  swift_getErrorValue();
  v14 = Error.localizedDescription.getter();
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v13;
  *(inited + 72) = v14;
  *(inited + 80) = v15;
  v16 = static os_log_type_t.error.getter();
  sub_100005404(v11, &_mh_execute_header, v16, "Unable to accept Handoff with type: %@, error: %@.", 50, 2, inited);

  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
}

- (void)didTapWelcomeContinueButton:(id)button
{
  if (button)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_100C2AEA8();

  sub_10000CAAC(v6, &unk_1019F4D00);
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  sub_100C2DBA8(dismissCopy);
}

- (void)setUserActivity:
{
  v0 = objc_opt_self();
  _atomicIncrementAssertCount = [v0 _atomicIncrementAssertCount];
  v23 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v23);
  StaticString.description.getter();
  v2 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v3 = String._bridgeToObjectiveC()();

  lastPathComponent = [v3 lastPathComponent];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v8 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = _atomicIncrementAssertCount;
  v10 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 96) = v10;
  v11 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
  *(inited + 104) = v11;
  *(inited + 72) = v2;
  *(inited + 136) = &type metadata for String;
  v12 = sub_1000053B0();
  *(inited + 112) = v5;
  *(inited + 120) = v7;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v12;
  *(inited + 152) = 582;
  v13 = v23;
  *(inited + 216) = v10;
  *(inited + 224) = v11;
  *(inited + 192) = v13;
  v14 = v2;
  v15 = v13;
  v16 = static os_log_type_t.error.getter();
  sub_100005404(v8, &_mh_execute_header, v16, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v17 = static os_log_type_t.error.getter();

  type metadata accessor for __VaListBuilder();
  v18 = swift_allocObject();
  v18[2] = 8;
  v18[3] = 0;
  v18[4] = 0;
  v18[5] = 0;
  v19 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v20 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v21 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v22 = String._bridgeToObjectiveC()();

  [v0 handleFailureInFunction:v20 file:v21 lineNumber:582 isFatal:0 format:v22 args:v19];
}

@end