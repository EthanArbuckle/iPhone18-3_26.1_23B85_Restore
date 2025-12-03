@interface CPSystemCoordinatorConfigurationTemplatePreference
- (CPSystemCoordinatorConfigurationTemplatePreference)init;
- (CPSystemCoordinatorConfigurationTemplatePreference)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CPSystemCoordinatorConfigurationTemplatePreference

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  SystemCoordinatorConfiguration._SpatialTemplatePreference.encode(with:)(coderCopy);
}

- (CPSystemCoordinatorConfigurationTemplatePreference)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = specialized SystemCoordinatorConfiguration._SpatialTemplatePreference.init(coder:)(coderCopy);

  return v4;
}

- (CPSystemCoordinatorConfigurationTemplatePreference)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end