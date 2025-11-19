@interface CPSystemCoordinatorConfigurationTemplatePreference
- (CPSystemCoordinatorConfigurationTemplatePreference)init;
- (CPSystemCoordinatorConfigurationTemplatePreference)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CPSystemCoordinatorConfigurationTemplatePreference

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  SystemCoordinatorConfiguration._SpatialTemplatePreference.encode(with:)(v4);
}

- (CPSystemCoordinatorConfigurationTemplatePreference)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = specialized SystemCoordinatorConfiguration._SpatialTemplatePreference.init(coder:)(v3);

  return v4;
}

- (CPSystemCoordinatorConfigurationTemplatePreference)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end