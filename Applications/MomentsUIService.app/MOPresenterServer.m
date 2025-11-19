@interface MOPresenterServer
- (id)getConnectionID;
- (id)retrieveUrlForToken:(id)a3 type:(id)a4;
- (void)dealloc;
- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5;
- (void)requestPresentationFor:(id)a3 with:(id)a4;
- (void)retrieveNotificationAvailabilityWithCompletionHandler:(id)a3;
- (void)retrieveNotificationScheduleTypeWithConnectionID:(NSUUID *)a3 completionHandler:(id)a4;
- (void)retrieveOnboardingStateWithCompletionHandler:(id)a3;
- (void)updatePickerWith:(id)a3 animated:(id)a4;
@end

@implementation MOPresenterServer

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC16MomentsUIService17MOPresenterServer_lock);
  v3 = self;
  [v2 lock];
  v4 = *(&v3->super.isa + OBJC_IVAR____TtC16MomentsUIService17MOPresenterServer__listener);
  [v2 unlock];
  [v4 invalidate];

  v5.receiver = v3;
  v5.super_class = type metadata accessor for MOPresenterServer();
  [(MOPresenterServer *)&v5 dealloc];
}

- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5
{
  v7 = a3;
  v8 = a4;
  swift_unknownObjectRetain();
  v9 = self;
  specialized MOPresenterServer.listener(_:didReceive:withContext:)(v8);

  swift_unknownObjectRelease();
}

- (void)retrieveOnboardingStateWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
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
  v13 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v7, &_sIeAgH_ytIeAgHr_TRTA_94Tu, v12);
}

- (void)requestPresentationFor:(id)a3 with:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  MOPresenterServer.requestPresentation(for:with:)(a3, v8);
}

- (void)updatePickerWith:(id)a3 animated:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  MOPresenterServer.updatePicker(with:animated:)(v6, v7);
}

- (void)retrieveNotificationScheduleTypeWithConnectionID:(NSUUID *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
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
  v15 = a3;
  v16 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v9, &_sIeAgH_ytIeAgHr_TRTA_79Tu, v14);
}

- (void)retrieveNotificationAvailabilityWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
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
  v13 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v7, &_sIeAgH_ytIeAgHr_TRTATu, v12);
}

- (id)getConnectionID
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = self;
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

- (id)retrieveUrlForToken:(id)a3 type:(id)a4
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  __chkstk_darwin(v5 - 8);
  v7 = &v19 - v6;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = self;
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