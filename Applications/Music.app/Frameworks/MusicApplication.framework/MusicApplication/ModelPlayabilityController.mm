@interface ModelPlayabilityController
+ (_TtC16MusicApplication26ModelPlayabilityController)shared;
+ (id)requiredPropertiesForModelClass:(Class)class;
- (int64_t)calculatePlayabilityStatusWithModel:(id)model;
- (void)dealloc;
- (void)environmentMonitorDidChangeNetworkType:(id)type;
@end

@implementation ModelPlayabilityController

+ (_TtC16MusicApplication26ModelPlayabilityController)shared
{
  if (qword_DE6838 != -1)
  {
    swift_once();
  }

  v3 = qword_E70E48;

  return v3;
}

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  sharedMonitor = [v3 sharedMonitor];
  [sharedMonitor unregisterObserver:selfCopy];

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for ModelPlayabilityController();
  [(ModelPlayabilityController *)&v6 dealloc];
}

+ (id)requiredPropertiesForModelClass:(Class)class
{
  swift_getObjCClassMetadata();
  v3 = sub_10F414();

  return v3;
}

- (int64_t)calculatePlayabilityStatusWithModel:(id)model
{
  modelCopy = model;
  selfCopy = self;
  v7 = sub_10AC20(model);

  return v7;
}

- (void)environmentMonitorDidChangeNetworkType:(id)type
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D30);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_AB9990();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_AB9940();
  selfCopy = self;
  v9 = sub_AB9930();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = selfCopy;
  sub_DBDC8(0, 0, v6, &unk_AFE878, v10);
}

@end