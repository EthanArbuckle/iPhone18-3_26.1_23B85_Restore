@interface MPRecentsDetailPresenter
- (MPRecentsDetailPresenter)init;
- (MPRecentsDetailPresenter)initWithRecentsController:(id)controller callReportingViewModel:(id)model;
- (void)showRecentCallDetailsViewControllerFor:(id)for from:(id)from;
@end

@implementation MPRecentsDetailPresenter

- (MPRecentsDetailPresenter)initWithRecentsController:(id)controller callReportingViewModel:(id)model
{
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR___MPRecentsDetailPresenter_logger;
  v9 = one-time initialization token for mobilePhone;
  controllerCopy = controller;
  modelCopy = model;
  if (v9 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  v13 = __swift_project_value_buffer(v12, static Logger.mobilePhone);
  (*(*(v12 - 8) + 16))(self + v8, v13, v12);
  v14 = OBJC_IVAR___MPRecentsDetailPresenter_featureflags;
  *(&self->super.isa + v14) = [objc_allocWithZone(TUFeatureFlags) init];
  *(&self->super.isa + OBJC_IVAR___MPRecentsDetailPresenter____lazy_storage___suggestedContactStore) = 1;
  *(&self->super.isa + OBJC_IVAR___MPRecentsDetailPresenter_recentsController) = controllerCopy;
  *(&self->super.isa + OBJC_IVAR___MPRecentsDetailPresenter_callReportingViewModel) = modelCopy;
  v16.receiver = self;
  v16.super_class = ObjectType;
  return [(MPRecentsDetailPresenter *)&v16 init];
}

- (void)showRecentCallDetailsViewControllerFor:(id)for from:(id)from
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  type metadata accessor for MainActor();
  forCopy = for;
  fromCopy = from;
  selfCopy = self;
  v14 = forCopy;
  v15 = fromCopy;
  v16 = static MainActor.shared.getter();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = &protocol witness table for MainActor;
  v17[4] = selfCopy;
  v17[5] = v14;
  v17[6] = v15;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, ",", v17);
}

- (MPRecentsDetailPresenter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end