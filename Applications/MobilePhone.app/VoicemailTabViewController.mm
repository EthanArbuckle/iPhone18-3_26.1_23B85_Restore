@interface VoicemailTabViewController
- (void)presentVoicemailDetailsForUUID:(id)d;
@end

@implementation VoicemailTabViewController

- (void)presentVoicemailDetailsForUUID:(id)d
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v11 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v19 - v12;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  (*(v8 + 16))(v11, v13, v7);
  type metadata accessor for MainActor();
  selfCopy = self;
  v16 = static MainActor.shared.getter();
  v17 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = v16;
  *(v18 + 3) = &protocol witness table for MainActor;
  *(v18 + 4) = selfCopy;
  (*(v8 + 32))(&v18[v17], v11, v7);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &closure #1 in VoicemailTabViewController.presentVoicemailDetails(uuid:)partial apply, v18);

  (*(v8 + 8))(v13, v7);
}

@end