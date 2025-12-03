@interface MOPresenterServer
- (id)getConnectionID;
- (id)retrieveUrlForToken:(id)token type:(id)type;
- (void)dealloc;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
- (void)requestPresentationFor:(id)for with:(id)with;
- (void)retrieveNotificationAvailabilityWithCompletionHandler:(id)handler;
- (void)retrieveNotificationScheduleTypeWithConnectionID:(NSUUID *)d completionHandler:(id)handler;
- (void)retrieveOnboardingStateWithCompletionHandler:(id)handler;
- (void)updatePickerWith:(id)with animated:(id)animated;
@end

@implementation MOPresenterServer

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC16MomentsUIService17MOPresenterServer_lock);
  selfCopy = self;
  [v2 lock];
  v4 = *(&selfCopy->super.isa + OBJC_IVAR____TtC16MomentsUIService17MOPresenterServer__listener);
  [v2 unlock];
  [v4 invalidate];

  v5.receiver = selfCopy;
  v5.super_class = type metadata accessor for MOPresenterServer();
  [(MOPresenterServer *)&v5 dealloc];
}

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  listenerCopy = listener;
  connectionCopy = connection;
  swift_unknownObjectRetain();
  selfCopy = self;
  specialized MOPresenterServer.listener(_:didReceive:withContext:)(connectionCopy);

  swift_unknownObjectRelease();
}

- (void)retrieveOnboardingStateWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &async function pointer to partial apply for @objc closure #1 in MOPresenterServer.retrieveOnboardingState();
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &_sIeghH_IeAgH_TRTA_89Tu;
  v12[5] = v11;
  selfCopy = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v7, &_sIeAgH_ytIeAgHr_TRTA_94Tu, v12);
}

- (void)requestPresentationFor:(id)for with:(id)with
{
  forCopy = for;
  withCopy = with;
  selfCopy = self;
  MOPresenterServer.requestPresentation(for:with:)(for, withCopy);
}

- (void)updatePickerWith:(id)with animated:(id)animated
{
  withCopy = with;
  animatedCopy = animated;
  selfCopy = self;
  MOPresenterServer.updatePicker(with:animated:)(withCopy, animatedCopy);
}

- (void)retrieveNotificationScheduleTypeWithConnectionID:(NSUUID *)d completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = d;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &async function pointer to partial apply for @objc closure #1 in MOPresenterServer.retrieveNotificationScheduleType(connectionID:);
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &_sIeghH_IeAgH_TRTA_74Tu;
  v14[5] = v13;
  dCopy = d;
  selfCopy = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v9, &_sIeAgH_ytIeAgHr_TRTA_79Tu, v14);
}

- (void)retrieveNotificationAvailabilityWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &async function pointer to partial apply for @objc closure #1 in MOPresenterServer.retrieveNotificationAvailability();
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &_sIeghH_IeAgH_TRTATu;
  v12[5] = v11;
  selfCopy = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v7, &_sIeAgH_ytIeAgHr_TRTATu, v12);
}

- (id)getConnectionID
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  selfCopy = self;
  MOPresenterServer.getConnectionID()(v5);

  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v8 + 8))(v5, v7);
    v10 = isa;
  }

  return v10;
}

- (id)retrieveUrlForToken:(id)token type:(id)type
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  __chkstk_darwin(v5 - 8);
  v7 = &v19 - v6;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  selfCopy = self;
  MOPresenterServer.retrieveUrlForToken(_:type:)(v8, v10, v7);

  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v7, 1, v12);
  v15 = 0;
  if (v14 != 1)
  {
    URL._bridgeToObjectiveC()(v14);
    v17 = v16;
    (*(v13 + 8))(v7, v12);
    v15 = v17;
  }

  return v15;
}

@end