@interface JSAPackageProvisioner
- (JSAPackageProvisioner)init;
- (JSAPackageProvisioner)initWithLaunching:(BOOL)launching processVariant:(int64_t)variant overridePackageURLCachePath:(id)path on:(id)on;
- (void)provisionWithCompletionHandler:(id)handler;
@end

@implementation JSAPackageProvisioner

- (JSAPackageProvisioner)initWithLaunching:(BOOL)launching processVariant:(int64_t)variant overridePackageURLCachePath:(id)path on:(id)on
{
  if (path)
  {
    sub_843AC();
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  onCopy = on;
  return PackageProvisioner.init(launching:processVariant:overridePackageURLCachePath:on:)(launching, variant, v12, v10, onCopy);
}

- (void)provisionWithCompletionHandler:(id)handler
{
  v3 = _Block_copy(handler);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  PackageProvisioner.provision(completionHandler:)(sub_36FF8, v4);
}

- (JSAPackageProvisioner)init
{
  swift_defaultActor_initialize();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end