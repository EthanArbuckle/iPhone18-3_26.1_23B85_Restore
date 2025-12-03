@interface MPTipsRecentsEventSignals
- (MPTipsRecentsEventSignals)init;
- (void)donateTipsEventSignalsForRecentCall:(CHRecentCall *)call completion:(id)completion;
@end

@implementation MPTipsRecentsEventSignals

- (MPTipsRecentsEventSignals)init
{
  ObjectType = swift_getObjectType();
  type metadata accessor for Defaults();
  v3 = swift_allocObject();
  v4 = objc_allocWithZone(ObjectType);
  *&v4[OBJC_IVAR___MPTipsRecentsEventSignals_defaults] = v3;
  v7.receiver = v4;
  v7.super_class = ObjectType;
  v5 = [(MPTipsRecentsEventSignals *)&v7 init];
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

- (void)donateTipsEventSignalsForRecentCall:(CHRecentCall *)call completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = call;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &async function pointer to partial apply for @objc closure #1 in TipsRecentsEventSignals.donateTipsEventSignals(for:);
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &_sIeghH_IeAgH_TRTATu;
  v14[5] = v13;
  callCopy = call;
  selfCopy = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v9, &_sIeAgH_ytIeAgHr_TRTATu, v14);
}

@end