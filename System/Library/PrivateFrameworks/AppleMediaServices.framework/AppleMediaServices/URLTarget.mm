@interface URLTarget
+ (id)targetWithBundle:(id)bundle scheme:(id)scheme secureScheme:(id)secureScheme;
- (URLTarget)initWithBundle:(id)bundle scheme:(id)scheme secureScheme:(id)secureScheme;
@end

@implementation URLTarget

- (URLTarget)initWithBundle:(id)bundle scheme:(id)scheme secureScheme:(id)secureScheme
{
  bundleCopy = bundle;
  schemeCopy = scheme;
  secureSchemeCopy = secureScheme;
  v15.receiver = self;
  v15.super_class = URLTarget;
  v12 = [(URLTarget *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_bundleID, bundle);
    objc_storeStrong(&v13->_normalScheme, scheme);
    objc_storeStrong(&v13->_secureScheme, secureScheme);
  }

  return v13;
}

+ (id)targetWithBundle:(id)bundle scheme:(id)scheme secureScheme:(id)secureScheme
{
  secureSchemeCopy = secureScheme;
  schemeCopy = scheme;
  bundleCopy = bundle;
  v11 = [[self alloc] initWithBundle:bundleCopy scheme:schemeCopy secureScheme:secureSchemeCopy];

  return v11;
}

@end