@interface GCSGame
- (BOOL)customizable;
- (BOOL)profileExistsFor:(id)a3 with:(id)a4;
- (NSString)localizedName;
- (id)profileFor:(id)a3 with:(id)a4;
@end

@implementation GCSGame

- (id)profileFor:(id)a3 with:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_3C5A0(v6, v7);

  return v9;
}

- (BOOL)profileExistsFor:(id)a3 with:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_3CB48(v6, v7);

  return v9;
}

- (BOOL)customizable
{
  v2 = self;
  v3 = [(GCSGame *)v2 bundleIdentifier];
  v4 = sub_D7C18();
  v6 = v5;

  v7 = [objc_opt_self() defaultIdentifier];
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
  v2 = self;
  sub_3D37C();

  v3 = sub_D7BD8();

  return v3;
}

@end