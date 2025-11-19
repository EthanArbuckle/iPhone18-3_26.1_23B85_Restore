@interface AppSettingsProvider
- (NSArray)specifiers;
- (NSString)bundleIdentifier;
- (_TtC12FinanceKitUI19AppSettingsProvider)init;
- (_TtC12FinanceKitUI19AppSettingsProvider)initWithBundleIdentifier:(id)a3 delegate:(id)a4;
- (_TtC12FinanceKitUI19AppSettingsProvider)initWithBundleIdentifier:(id)a3 delegate:(id)a4 localizedTitle:(id)a5;
- (_TtPO12FinanceKitUI22PrivacySettingsStaging33PKPrivacySettingsProviderDelegate_)delegate;
- (id)accountLinked:(id)a3;
- (void)handleAccountTap:(id)a3;
- (void)reloadStaleSpecifiers;
- (void)setBundleIdentifier:(id)a3;
@end

@implementation AppSettingsProvider

- (_TtPO12FinanceKitUI22PrivacySettingsStaging33PKPrivacySettingsProviderDelegate_)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (NSString)bundleIdentifier
{
  v2 = (self + OBJC_IVAR____TtC12FinanceKitUI19AppSettingsProvider_bundleIdentifier);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  v5 = sub_23875EA50();

  return v5;
}

- (void)setBundleIdentifier:(id)a3
{
  v4 = sub_23875EA80();
  v6 = v5;
  v7 = (self + OBJC_IVAR____TtC12FinanceKitUI19AppSettingsProvider_bundleIdentifier);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v4;
  v7[1] = v6;
}

- (_TtC12FinanceKitUI19AppSettingsProvider)initWithBundleIdentifier:(id)a3 delegate:(id)a4 localizedTitle:(id)a5
{
  v8 = sub_23875EA80();
  v10 = v9;
  if (a5)
  {
    a5 = sub_23875EA80();
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  swift_getObjectType();
  swift_unknownObjectRetain();

  return sub_2387187A4(v8, v10, a4, a5, v12, self);
}

- (_TtC12FinanceKitUI19AppSettingsProvider)initWithBundleIdentifier:(id)a3 delegate:(id)a4
{
  v5 = sub_23875EA80();
  v7 = v6;
  swift_unknownObjectRetain();
  return AppSettingsProvider.init(bundleIdentifier:delegate:)(v5, v7, a4);
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

  v3 = self;
  AppSettingsProvider.specifiers.getter();

  sub_238449184(0, &qword_27DF0AE38, 0x277D3FAD8);
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
}

- (id)accountLinked:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_238713790(v4);
  v7 = v6;

  if (v7)
  {
    v8 = sub_23875EA50();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (_TtC12FinanceKitUI19AppSettingsProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)handleAccountTap:(id)a3
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a3;
  v6 = self;
  sub_238714984(v5);
}

@end