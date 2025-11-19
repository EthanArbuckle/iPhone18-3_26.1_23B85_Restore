@interface BAUtilities
+ (id)stringFromUpSellLocation:(int64_t)a3;
+ (id)stringFromUpSellVariant:(int64_t)a3;
+ (int64_t)backgroundColorFromThemeIdentifier:(id)a3;
- (BAUtilities)init;
@end

@implementation BAUtilities

+ (int64_t)backgroundColorFromThemeIdentifier:(id)a3
{
  v3 = sub_1E1780();
  v5 = sub_DDE50(v3, v4);

  return v5;
}

+ (id)stringFromUpSellLocation:(int64_t)a3
{
  if (a3 <= 1)
  {
    if (!a3 || a3 == 1)
    {
      goto LABEL_9;
    }

LABEL_12:
    result = sub_1E1D50();
    __break(1u);
    return result;
  }

  if (a3 != 2 && a3 != 3)
  {
    goto LABEL_12;
  }

LABEL_9:
  v3 = sub_1E1770();

  return v3;
}

+ (id)stringFromUpSellVariant:(int64_t)a3
{
  if (!a3 || a3 == 2 || a3 == 1)
  {
    v3 = sub_1E1770();

    return v3;
  }

  else
  {
    result = sub_1E1D50();
    __break(1u);
  }

  return result;
}

- (BAUtilities)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for Utilities();
  return [(BAUtilities *)&v3 init];
}

@end