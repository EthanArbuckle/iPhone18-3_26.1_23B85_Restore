@interface NTKAlaskanColorEditOption
+ (id)_orderedValuesForDevice:(id)device;
- (id)localizedName;
- (id)pigmentEditOption;
@end

@implementation NTKAlaskanColorEditOption

+ (id)_orderedValuesForDevice:(id)device
{
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___NTKAlaskanColorEditOption;
  v3 = objc_msgSendSuper2(&v6, "_orderedValuesForDevice:", device);
  v4 = [v3 mutableCopy];

  [v4 removeObject:&off_3A440];

  return v4;
}

- (id)localizedName
{
  pigmentEditOption = [(NTKAlaskanColorEditOption *)self pigmentEditOption];
  localizedName = [pigmentEditOption localizedName];

  return localizedName;
}

- (id)pigmentEditOption
{
  color = [(NTKAlaskanColorEditOption *)self color];
  v4 = color;
  if (color > 3004)
  {
    if (color <= 3006)
    {
      if (color == 3005)
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
      switch(color)
      {
        case 3007:
          v5 = @"slate2";
LABEL_18:
          v6 = [NTKPigmentEditOption alloc];
          pigmentEditOption = [v6 initWithOptionName:v5 collectionName:ntk_evergreen];

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

  else if ((color - 3000) >= 3)
  {
    if (color == 3003)
    {
      v4 = 3004;
    }

    else
    {
      if (color != 3004)
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
  pigmentEditOption = [(NTKAlaskanColorEditOption *)&v9 pigmentEditOption];
LABEL_20:

  return pigmentEditOption;
}

@end