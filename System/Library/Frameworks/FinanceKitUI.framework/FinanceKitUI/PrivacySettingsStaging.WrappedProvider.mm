@interface PrivacySettingsStaging.WrappedProvider
- (NSArray)specifiers;
- (_TtCO12FinanceKitUI22PrivacySettingsStaging15WrappedProvider)init;
- (_TtPO12FinanceKitUI22PrivacySettingsStaging33PKPrivacySettingsProviderDelegate_)delegate;
- (void)reloadStaleSpecifiers;
- (void)setDelegate:(id)delegate;
@end

@implementation PrivacySettingsStaging.WrappedProvider

- (_TtPO12FinanceKitUI22PrivacySettingsStaging33PKPrivacySettingsProviderDelegate_)delegate
{
  selfCopy = self;
  v3 = sub_238756ACC();

  return v3;
}

- (void)setDelegate:(id)delegate
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtCO12FinanceKitUI22PrivacySettingsStaging15WrappedProvider_wrappedObject);
  swift_unknownObjectRetain_n();
  selfCopy = self;
  v7 = sub_23875EA50();
  [v5 setValue:delegate forKeyPath:v7];

  swift_unknownObjectRelease_n();
}

- (NSArray)specifiers
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  sub_238756D40();

  sub_2384950FC();
  v4 = sub_23875EC60();

  return v4;
}

- (void)reloadStaleSpecifiers
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = OBJC_IVAR____TtCO12FinanceKitUI22PrivacySettingsStaging15WrappedProvider_wrappedObject;
  v4 = *(&self->super.isa + OBJC_IVAR____TtCO12FinanceKitUI22PrivacySettingsStaging15WrappedProvider_wrappedObject);
  selfCopy = self;
  if ([v4 respondsToSelector_])
  {
    [*(&self->super.isa + v3) performSelector_];
  }

  else
  {
  }
}

- (_TtCO12FinanceKitUI22PrivacySettingsStaging15WrappedProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end