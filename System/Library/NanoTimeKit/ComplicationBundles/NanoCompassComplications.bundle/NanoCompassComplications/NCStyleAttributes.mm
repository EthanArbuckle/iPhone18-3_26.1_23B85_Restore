@interface NCStyleAttributes
+ (id)fillColorFor:(id)a3;
+ (id)symbolImageFor:(id)a3;
- (NCStyleAttributes)init;
@end

@implementation NCStyleAttributes

+ (id)fillColorFor:(id)a3
{
  v4 = a3;
  v5 = _s24NanoCompassComplications17NCStyleAttributesC9fillColor3forSo7UIColorCSgSo015GEOFeatureStyleE0CSg_tFZ_0(a3);

  return v5;
}

+ (id)symbolImageFor:(id)a3
{
  if (a3)
  {
    v4 = objc_opt_self();
    v5 = objc_opt_self();
    v6 = a3;
    v7 = [v5 mainScreen];
    [v7 scale];
    v9 = v8;

    v10 = [v4 imageForStyle:v6 size:2 forScale:1 format:1 transparent:v9];
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