@interface APConfigurationStorefrontValidator
- (APConfigurationStorefrontValidator)init;
- (APConfigurationStorefrontValidator)initWithStorefront:(id)storefront configurationPath:(id)path;
- (BOOL)configurationNeedsReset;
- (void)saveStorefront;
@end

@implementation APConfigurationStorefrontValidator

- (APConfigurationStorefrontValidator)initWithStorefront:(id)storefront configurationPath:(id)path
{
  v5 = sub_1CA1DD730();
  v7 = v6;
  v8 = sub_1CA1DD730();
  v10 = v9;
  v11 = OBJC_IVAR___APConfigurationStorefrontValidator____lazy_storage___url;
  v12 = sub_1CA1DD5B0();
  (*(*(v12 - 8) + 56))(self + v11, 1, 1, v12);
  v13 = (self + OBJC_IVAR___APConfigurationStorefrontValidator_storefront);
  *v13 = v5;
  v13[1] = v7;
  v14 = (self + OBJC_IVAR___APConfigurationStorefrontValidator_configurationPath);
  *v14 = v8;
  v14[1] = v10;
  v16.receiver = self;
  v16.super_class = type metadata accessor for ConfigurationStorefrontValidator();
  return [(APConfigurationStorefrontValidator *)&v16 init];
}

- (void)saveStorefront
{
  selfCopy = self;
  sub_1CA1D62A4();
}

- (BOOL)configurationNeedsReset
{
  selfCopy = self;
  v3 = sub_1CA1D6828();
  if (!v4)
  {
    goto LABEL_8;
  }

  if (v3 == *(&selfCopy->super.isa + OBJC_IVAR___APConfigurationStorefrontValidator_storefront) && v4 == *&selfCopy->storefront[OBJC_IVAR___APConfigurationStorefrontValidator_storefront])
  {

LABEL_8:

    v7 = 0;
    return v7 & 1;
  }

  v6 = sub_1CA1DD8D0();

  v7 = v6 ^ 1;
  return v7 & 1;
}

- (APConfigurationStorefrontValidator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end