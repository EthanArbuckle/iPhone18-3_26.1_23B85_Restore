@interface GCSGame
- (BOOL)customizable;
- (BOOL)profileExistsFor:(id)for with:(id)with;
- (NSString)localizedName;
- (id)profileFor:(id)for with:(id)with;
@end

@implementation GCSGame

- (id)profileFor:(id)for with:(id)with
{
  forCopy = for;
  withCopy = with;
  selfCopy = self;
  v9 = sub_3C5A0(forCopy, withCopy);

  return v9;
}

- (BOOL)profileExistsFor:(id)for with:(id)with
{
  forCopy = for;
  withCopy = with;
  selfCopy = self;
  v9 = sub_3CB48(forCopy, withCopy);

  return v9;
}

- (BOOL)customizable
{
  selfCopy = self;
  bundleIdentifier = [(GCSGame *)selfCopy bundleIdentifier];
  v4 = sub_D7C18();
  v6 = v5;

  defaultIdentifier = [objc_opt_self() defaultIdentifier];
  v8 = sub_D7C18();
  v10 = v9;

  if (v4 == v8 && v6 == v10)
  {

    v13 = 0;
  }

  else
  {
    v12 = sub_D8118();

    v13 = v12 ^ 1;
  }

  return v13 & 1;
}

- (NSString)localizedName
{
  selfCopy = self;
  sub_3D37C();

  v3 = sub_D7BD8();

  return v3;
}

@end