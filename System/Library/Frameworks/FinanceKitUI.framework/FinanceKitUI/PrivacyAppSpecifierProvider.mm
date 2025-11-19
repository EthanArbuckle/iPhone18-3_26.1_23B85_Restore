@interface PrivacyAppSpecifierProvider
- (NSArray)appsSpecifiers;
- (NSArray)specifiers;
- (_TtPO12FinanceKitUI22PrivacySettingsStaging33PKPrivacySettingsProviderDelegate_)delegate;
- (id)getAuthWithSpecifier:(id)a3;
- (void)authChanged:(unint64_t)a3 :(id)a4;
- (void)reloadStaleSpecifiers;
- (void)setAppsSpecifiers:(id)a3;
@end

@implementation PrivacyAppSpecifierProvider

- (_TtPO12FinanceKitUI22PrivacySettingsStaging33PKPrivacySettingsProviderDelegate_)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (NSArray)appsSpecifiers
{
  v2 = *(self + OBJC_IVAR____TtC12FinanceKitUI27PrivacyAppSpecifierProvider_appsSpecifiers);
  sub_2384950FC();

  v3 = sub_23875EC60();

  return v3;
}

- (void)setAppsSpecifiers:(id)a3
{
  sub_2384950FC();
  v4 = sub_23875EC80();
  v5 = *(self + OBJC_IVAR____TtC12FinanceKitUI27PrivacyAppSpecifierProvider_appsSpecifiers);
  *(self + OBJC_IVAR____TtC12FinanceKitUI27PrivacyAppSpecifierProvider_appsSpecifiers) = v4;
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
  sub_23856831C();

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

  v3 = self;
  sub_238569084();
}

- (id)getAuthWithSpecifier:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_23856953C(v4);
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

- (void)authChanged:(unint64_t)a3 :(id)a4
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a4;
  v7 = self;
  sub_23856C004(v6);
}

@end