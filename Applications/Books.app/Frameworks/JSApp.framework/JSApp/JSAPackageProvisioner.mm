@interface JSAPackageProvisioner
- (JSAPackageProvisioner)init;
- (JSAPackageProvisioner)initWithLaunching:(BOOL)a3 processVariant:(int64_t)a4 overridePackageURLCachePath:(id)a5 on:(id)a6;
- (void)provisionWithCompletionHandler:(id)a3;
@end

@implementation JSAPackageProvisioner

- (JSAPackageProvisioner)initWithLaunching:(BOOL)a3 processVariant:(int64_t)a4 overridePackageURLCachePath:(id)a5 on:(id)a6
{
  if (a5)
  {
    sub_843AC();
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = a6;
  return PackageProvisioner.init(launching:processVariant:overridePackageURLCachePath:on:)(a3, a4, v12, v10, v11);
}

- (void)provisionWithCompletionHandler:(id)a3
{
  v3 = _Block_copy(a3);
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