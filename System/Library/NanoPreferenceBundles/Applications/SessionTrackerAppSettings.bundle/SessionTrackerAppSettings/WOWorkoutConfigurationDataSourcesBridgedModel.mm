@interface WOWorkoutConfigurationDataSourcesBridgedModel
+ (NSString)localizedInformationalFooterText;
+ (NSString)localizedTitle;
- (BOOL)hasDataSources;
- (NSArray)bridgedExternalProviders;
- (WOWorkoutConfigurationDataSourcesBridgedModel)init;
- (void)reload:(id)reload;
- (void)updateExternalProvider:(id)provider enable:(BOOL)enable;
@end

@implementation WOWorkoutConfigurationDataSourcesBridgedModel

- (NSArray)bridgedExternalProviders
{
  selfCopy = self;
  sub_1C120();

  type metadata accessor for QueriedExternalProviderBridge();
  v3.super.isa = sub_228C4().super.isa;

  return v3.super.isa;
}

- (BOOL)hasDataSources
{
  v2 = *(&self->super.isa + OBJC_IVAR___WOWorkoutConfigurationDataSourcesBridgedModel_model);
  selfCopy = self;
  v4 = sub_22364();
  if (v4 >> 62)
  {
    v5 = sub_229B4();
  }

  else
  {
    v5 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
  }

  return v5 != 0;
}

- (void)reload:(id)reload
{
  v4 = _Block_copy(reload);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_1C740;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = *(&self->super.isa + OBJC_IVAR___WOWorkoutConfigurationDataSourcesBridgedModel_model);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 24) = v6;
  selfCopy = self;
  sub_1C6E8(v7);
  sub_22374();
  sub_1C6F8(v7);
}

- (void)updateExternalProvider:(id)provider enable:(BOOL)enable
{
  v5 = *(&self->super.isa + OBJC_IVAR___WOWorkoutConfigurationDataSourcesBridgedModel_model);
  v6 = *(provider + OBJC_IVAR___WOQueriedExternalProviderBridge_externalProvider);
  providerCopy = provider;
  selfCopy = self;
  sub_22354();
}

+ (NSString)localizedTitle
{
  sub_22884();
  v2 = sub_22864();

  return v2;
}

+ (NSString)localizedInformationalFooterText
{
  sub_22884();
  v2 = sub_22864();

  return v2;
}

- (WOWorkoutConfigurationDataSourcesBridgedModel)init
{
  v3 = OBJC_IVAR___WOWorkoutConfigurationDataSourcesBridgedModel_model;
  v4 = sub_22394();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  *(&self->super.isa + v3) = sub_22384();
  v8.receiver = self;
  v8.super_class = type metadata accessor for WorkoutConfigurationDataSourcesBridgedModel();
  return [(WOWorkoutConfigurationDataSourcesBridgedModel *)&v8 init];
}

@end