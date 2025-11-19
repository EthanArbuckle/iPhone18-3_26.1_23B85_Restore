@interface NTKAlaskanColorEditOption
+ (id)_orderedValuesForDevice:(id)a3;
- (id)localizedName;
- (id)pigmentEditOption;
@end

@implementation NTKAlaskanColorEditOption

+ (id)_orderedValuesForDevice:(id)a3
{
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___NTKAlaskanColorEditOption;
  v3 = objc_msgSendSuper2(&v6, "_orderedValuesForDevice:", a3);
  v4 = [v3 mutableCopy];

  [v4 removeObject:&off_3A440];

  return v4;
}

- (id)localizedName
{
  v2 = [(NTKAlaskanColorEditOption *)self pigmentEditOption];
  v3 = [v2 localizedName];

  return v3;
}

- (id)pigmentEditOption
{
  v3 = [(NTKAlaskanColorEditOption *)self color];
  v4 = v3;
  if (v3 > 3004)
  {
    if (v3 <= 3006)
    {
      if (v3 == 3005)
      {
        v4 = 3011;
      }

      else
      {
        v4 = 3012;
      }
    }

    else
    {
      switch(v3)
      {
        case 3007:
          v5 = @"slate2";
LABEL_18:
          v6 = [NTKPigmentEditOption alloc];
          v7 = [v6 initWithOptionName:v5 collectionName:ntk_evergreen];

          goto LABEL_20;
        case 3008:
          v4 = 3013;
          break;
        case 3009:
          v4 = 3014;
          break;
        default:
          goto LABEL_19;
      }
    }
  }

  else if ((v3 - 3000) >= 3)
  {
    if (v3 == 3003)
    {
      v4 = 3004;
    }

    else
    {
      if (v3 != 3004)
      {
        goto LABEL_19;
      }

      v4 = 3010;
    }
  }

  v5 = [NTKCaliforniaColorEditOption colorNameForColor:v4];
  if (v5)
  {
    goto LABEL_18;
  }

LABEL_19:
  v9.receiver = self;
  v9.super_class = NTKAlaskanColorEditOption;
  v7 = [(NTKAlaskanColorEditOption *)&v9 pigmentEditOption];
LABEL_20:

  return v7;
}

@end