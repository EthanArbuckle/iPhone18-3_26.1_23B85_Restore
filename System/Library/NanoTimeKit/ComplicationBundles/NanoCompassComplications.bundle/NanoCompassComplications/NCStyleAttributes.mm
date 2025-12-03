@interface NCStyleAttributes
+ (id)fillColorFor:(id)for;
+ (id)symbolImageFor:(id)for;
- (NCStyleAttributes)init;
@end

@implementation NCStyleAttributes

+ (id)fillColorFor:(id)for
{
  forCopy = for;
  v5 = _s24NanoCompassComplications17NCStyleAttributesC9fillColor3forSo7UIColorCSgSo015GEOFeatureStyleE0CSg_tFZ_0(for);

  return v5;
}

+ (id)symbolImageFor:(id)for
{
  if (for)
  {
    v4 = objc_opt_self();
    v5 = objc_opt_self();
    forCopy = for;
    mainScreen = [v5 mainScreen];
    [mainScreen scale];
    v9 = v8;

    v10 = [v4 imageForStyle:forCopy size:2 forScale:1 format:1 transparent:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (NCStyleAttributes)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for NCStyleAttributes();
  return [(NCStyleAttributes *)&v3 init];
}

@end