@interface HealthDataListItemProvider
- (_TtC26PrivacyAndSecuritySettings26HealthDataListItemProvider)init;
- (void)sourceListDataSourceDidUpdate:(id)update;
@end

@implementation HealthDataListItemProvider

- (void)sourceListDataSourceDidUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  sub_159C4(updateCopy);
}

- (_TtC26PrivacyAndSecuritySettings26HealthDataListItemProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end