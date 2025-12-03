@interface AppSettingsProvider
- (NSArray)specifiers;
- (NSString)bundleIdentifier;
- (_TtC12FinanceKitUI19AppSettingsProvider)init;
- (_TtC12FinanceKitUI19AppSettingsProvider)initWithBundleIdentifier:(id)identifier delegate:(id)delegate;
- (_TtC12FinanceKitUI19AppSettingsProvider)initWithBundleIdentifier:(id)identifier delegate:(id)delegate localizedTitle:(id)title;
- (_TtPO12FinanceKitUI22PrivacySettingsStaging33PKPrivacySettingsProviderDelegate_)delegate;
- (id)accountLinked:(id)linked;
- (void)handleAccountTap:(id)tap;
- (void)reloadStaleSpecifiers;
- (void)setBundleIdentifier:(id)identifier;
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

- (void)setBundleIdentifier:(id)identifier
{
  v4 = sub_23875EA80();
  v6 = v5;
  v7 = (self + OBJC_IVAR____TtC12FinanceKitUI19AppSettingsProvider_bundleIdentifier);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v4;
  v7[1] = v6;
}

- (_TtC12FinanceKitUI19AppSettingsProvider)initWithBundleIdentifier:(id)identifier delegate:(id)delegate localizedTitle:(id)title
{
  v8 = sub_23875EA80();
  v10 = v9;
  if (title)
  {
    title = sub_23875EA80();
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  swift_getObjectType();
  swift_unknownObjectRetain();

  return sub_2387187A4(v8, v10, delegate, title, v12, self);
}

- (_TtC12FinanceKitUI19AppSettingsProvider)initWithBundleIdentifier:(id)identifier delegate:(id)delegate
{
  v5 = sub_23875EA80();
  v7 = v6;
  swift_unknownObjectRetain();
  return AppSettingsProvider.init(bundleIdentifier:delegate:)(v5, v7, delegate);
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

- (id)accountLinked:(id)linked
{
  linkedCopy = linked;
  selfCopy = self;
  sub_238713790(linkedCopy);
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

- (void)handleAccountTap:(id)tap
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  tapCopy = tap;
  selfCopy = self;
  sub_238714984(tapCopy);
}

@end