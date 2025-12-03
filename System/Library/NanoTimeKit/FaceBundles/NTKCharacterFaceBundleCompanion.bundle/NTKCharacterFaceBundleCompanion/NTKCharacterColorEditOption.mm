@interface NTKCharacterColorEditOption
+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device;
+ (id)legacyOptionWithPigmentEditOption:(id)option forDevice:(id)device;
+ (id)optionAtIndex:(unint64_t)index forCharacter:(unint64_t)character forDevice:(id)device;
+ (id)optionWithOption:(id)option forCharacter:(unint64_t)character forDevice:(id)device;
+ (unint64_t)indexOfOption:(id)option forCharacter:(unint64_t)character forDevice:(id)device;
+ (unint64_t)numberOfOptionsForCharacter:(unint64_t)character forDevice:(id)device;
- (BOOL)isValidOption;
- (UIColor)colorValue;
- (double)desaturation;
- (id)_valueToFaceBundleStringDict;
- (id)localizedName;
- (id)pigmentEditOption;
@end

@implementation NTKCharacterColorEditOption

+ (id)optionWithOption:(id)option forCharacter:(unint64_t)character forDevice:(id)device
{
  deviceCopy = device;
  color = [option color];
  v10 = sub_58D8(character, deviceCopy);
  v11 = [NSNumber numberWithUnsignedInteger:color];
  v12 = [v10 containsObject:v11];

  if ((v12 & 1) == 0)
  {
    v13 = [v10 objectAtIndex:1];
    color = [v13 unsignedIntegerValue];
  }

  v14 = [self optionWithFaceColor:color forDevice:deviceCopy];

  return v14;
}

+ (unint64_t)numberOfOptionsForCharacter:(unint64_t)character forDevice:(id)device
{
  v4 = sub_58D8(character, device);
  v5 = [v4 count];

  return v5;
}

+ (id)optionAtIndex:(unint64_t)index forCharacter:(unint64_t)character forDevice:(id)device
{
  deviceCopy = device;
  if ([self numberOfOptionsForCharacter:character forDevice:deviceCopy] <= index)
  {
    index = 0;
  }

  v9 = sub_58D8(character, deviceCopy);
  v10 = [v9 objectAtIndex:index];
  unsignedIntegerValue = [v10 unsignedIntegerValue];

  v12 = [self optionWithFaceColor:unsignedIntegerValue forDevice:deviceCopy];

  return v12;
}

+ (unint64_t)indexOfOption:(id)option forCharacter:(unint64_t)character forDevice:(id)device
{
  deviceCopy = device;
  color = [option color];
  v9 = sub_58D8(character, deviceCopy);

  v10 = [NSNumber numberWithUnsignedInteger:color];
  v11 = [v9 indexOfObject:v10];

  return v11;
}

- (BOOL)isValidOption
{
  v3 = 0;
  v4 = 1;
  while (1)
  {
    device = [(NTKCharacterColorEditOption *)self device];
    v6 = sub_58D8(v3, device);
    v7 = [NSNumber numberWithUnsignedInteger:[(NTKCharacterColorEditOption *)self _value]];
    v8 = [v6 containsObject:v7];

    if (v8)
    {
      break;
    }

    v4 = v3++ < 2;
    if (v3 == 3)
    {
      v9 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_F53C(self, v9);
      }

      return 0;
    }
  }

  return v4;
}

- (id)_valueToFaceBundleStringDict
{
  if (qword_25C28 != -1)
  {
    sub_F600();
  }

  v3 = qword_25C20;

  return v3;
}

+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device
{
  result = 0;
  if (value > 999)
  {
    v5 = @"gold-generic-3";
    v6 = @"vintage";
    if (value != 3000)
    {
      v6 = 0;
    }

    if (value != 1002)
    {
      v5 = v6;
    }

    v7 = @"gold-generic-1";
    v8 = @"gold-generic-2";
    if (value != 1001)
    {
      v8 = 0;
    }

    if (value != 1000)
    {
      v7 = v8;
    }

    if (value <= 1001)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    switch(value)
    {
      case 0uLL:
        result = @"pink";
        break;
      case 1uLL:
        result = @"purple";
        break;
      case 2uLL:
        result = @"blue";
        break;
      case 3uLL:
        result = @"green";
        break;
      case 4uLL:
        result = @"yellow";
        break;
      case 5uLL:
        result = @"orange";
        break;
      case 6uLL:
        result = @"red";
        break;
      case 7uLL:
        result = @"white";
        break;
      case 8uLL:
        result = @"dark-orange";
        break;
      case 9uLL:
        result = @"turquoise";
        break;
      case 0xAuLL:
        result = @"midnight-blue";
        break;
      case 0xBuLL:
        result = @"lavender";
        break;
      case 0xCuLL:
        result = @"vintage-rose";
        break;
      case 0xDuLL:
        result = @"walnut";
        break;
      case 0xEuLL:
        result = @"stone";
        break;
      case 0xFuLL:
        result = @"antique-white";
        break;
      case 0x10uLL:
        result = @"light-blue";
        break;
      case 0x11uLL:
        result = @"mint";
        break;
      case 0x12uLL:
        result = @"lilac";
        break;
      case 0x13uLL:
        result = @"royal-blue";
        break;
      case 0x14uLL:
        result = @"light-pink";
        break;
      case 0x15uLL:
        result = @"apricot";
        break;
      case 0x16uLL:
        result = @"ocean-blue";
        break;
      case 0x17uLL:
        result = @"cocoa";
        break;
      case 0x18uLL:
        result = @"ice-white";
        break;
      case 0x19uLL:
        result = @"pink-sand";
        break;
      case 0x1AuLL:
        result = @"gray";
        break;
      case 0x1BuLL:
        result = @"pebble";
        break;
      case 0x1CuLL:
        result = @"azure";
        break;
      case 0x1DuLL:
        result = @"camellia";
        break;
      case 0x1EuLL:
        result = @"mist-blue";
        break;
      case 0x1FuLL:
        result = @"flamingo";
        break;
      case 0x20uLL:
        result = @"pollen";
        break;
      case 0x21uLL:
        result = @"soft-white";
        break;
      case 0x22uLL:
        result = @"blue-cobalt";
        break;
      case 0x23uLL:
        result = @"dark-olive";
        break;
      case 0x24uLL:
        result = @"violet";
        break;
      case 0x25uLL:
        result = @"rose-red";
        break;
      case 0x27uLL:
        result = @"flash";
        break;
      case 0x28uLL:
        result = @"dark-teal";
        break;
      case 0x29uLL:
        result = @"electric-pink";
        break;
      case 0x2AuLL:
        result = @"peach";
        break;
      case 0x2BuLL:
        result = @"denim-blue";
        break;
      case 0x2CuLL:
        result = @"flash-light";
        break;
      case 0x2DuLL:
        result = @"nectarine";
        break;
      case 0x2EuLL:
        result = @"mellow-yellow";
        break;
      case 0x2FuLL:
        result = @"storm-gray";
        break;
      case 0x30uLL:
        result = @"pacific-green";
        break;
      case 0x31uLL:
        result = @"blue-horizon";
        break;
      case 0x32uLL:
        result = @"indigo";
        break;
      case 0x33uLL:
        result = @"lavender-gray";
        break;
      case 0x34uLL:
        result = @"hibiscus";
        break;
      case 0x36uLL:
        result = @"papaya";
        break;
      case 0x37uLL:
        result = @"canary-yellow";
        break;
      case 0x38uLL:
        result = @"spearmint";
        break;
      case 0x39uLL:
        result = @"cerulean";
        break;
      case 0x3AuLL:
        result = @"delft-blue";
        break;
      case 0x3BuLL:
        result = @"dragon-fruit";
        break;
      case 0x3CuLL:
        result = @"pine-green";
        break;
      case 0x3DuLL:
        result = @"lemon-cream";
        break;
      case 0x3EuLL:
        result = @"alaskan-blue";
        break;
      case 0x3FuLL:
        result = @"pomegranate";
        break;
      case 0x40uLL:
        result = @"khaki";
        break;
      case 0x41uLL:
        result = @"beryl";
        break;
      case 0x42uLL:
        result = @"camel";
        break;
      case 0x43uLL:
        result = @"sea-foam";
        break;
      case 0x44uLL:
        result = @"surf-blue";
        break;
      case 0x45uLL:
        result = @"cactus";
        break;
      case 0x46uLL:
        result = @"linen-blue";
        break;
      case 0x47uLL:
        result = @"grapefruit";
        break;
      case 0x48uLL:
        result = @"neon-pink";
        break;
      case 0x49uLL:
        result = @"coastal-gray";
        break;
      case 0x4AuLL:
        result = @"PinkCitrus";
        break;
      case 0x4BuLL:
        result = @"DeepNavy";
        break;
      case 0x4CuLL:
        result = @"CyprusGreen";
        break;
      case 0x4DuLL:
        result = @"Cream";
        break;
      case 0x4EuLL:
        result = @"Kumquat";
        break;
      case 0x4FuLL:
        result = @"NorthernBlue";
        break;
      case 0x50uLL:
        result = @"Plum";
        break;
      case 0x51uLL:
        result = @"ElectricOrange";
        break;
      case 0x52uLL:
        result = @"Sunflower";
        break;
      case 0x53uLL:
        result = @"Pistachio";
        break;
      case 0x54uLL:
        result = @"CloudBlue";
        break;
      case 0x55uLL:
        result = @"Abyss";
        break;
      case 0x56uLL:
        result = @"SeaSalt";
        break;
      case 0x57uLL:
        result = @"Olive";
        break;
      case 0x58uLL:
        result = @"MallardGreen";
        break;
      case 0x64uLL:
        result = @"edition";
        break;
      case 0x65uLL:
        result = @"sport+";
        break;
      case 0x66uLL:
        result = @"zeus";
        break;
      case 0x67uLL:
        result = @"victory";
        break;
      case 0x68uLL:
        result = @"explorer";
        break;
      case 0xC8uLL:
        result = @"multi";
        break;
      default:
        return result;
    }
  }

  return result;
}

- (id)localizedName
{
  pigmentEditOption = [(NTKCharacterColorEditOption *)self pigmentEditOption];
  localizedName = [pigmentEditOption localizedName];

  return localizedName;
}

- (UIColor)colorValue
{
  color = [(NTKCharacterColorEditOption *)self color];
  if (color == 3000 || color == 6)
  {
    v4 = [UIColor colorWithRed:0.862745098 green:0.129411765 blue:0.152941176 alpha:1.0];
  }

  else
  {
    device = [(NTKCharacterColorEditOption *)self device];
    v4 = NTKForegroundColor();
  }

  return v4;
}

- (double)desaturation
{
  color = [(NTKCharacterColorEditOption *)self color];
  result = 0.0;
  if (color == 3000)
  {
    return 1.0;
  }

  return result;
}

- (id)pigmentEditOption
{
  color = [(NTKCharacterColorEditOption *)self color];
  if (color == 6)
  {
    v4 = NTKColorPaletteDomainMickey;
    v5 = NTKFaceColorName();
  }

  else if (color == 3000)
  {
    v4 = NTKColorPaletteDomainMickey;
    v5 = @"vintage";
  }

  else
  {
    [(NTKCharacterColorEditOption *)self color];
    NTKFaceColorNameAndCollection();
    v5 = 0;
    v4 = 0;
  }

  v6 = [[NTKPigmentEditOption alloc] initWithOptionName:v5 collectionName:v4];

  return v6;
}

+ (id)legacyOptionWithPigmentEditOption:(id)option forDevice:(id)device
{
  optionCopy = option;
  deviceCopy = device;
  optionName = [optionCopy optionName];
  v9 = [optionName isEqualToString:@"vintage"];

  if (v9)
  {
    selfCopy2 = self;
    v11 = 3000;
  }

  else
  {
    optionName2 = [optionCopy optionName];
    v13 = NTKFaceColorName();
    v14 = [optionName2 isEqualToString:v13];

    if (!v14)
    {
      v16 = [NTKFaceColorEditOption legacyOptionWithPigmentEditOption:optionCopy forDevice:deviceCopy];
      v17 = v16;
      if (v16)
      {
        v15 = [self optionWithFaceColor:objc_msgSend(v16 forDevice:{"faceColor"), deviceCopy}];
      }

      else
      {
        v15 = 0;
      }

      goto LABEL_10;
    }

    selfCopy2 = self;
    v11 = 6;
  }

  v15 = [selfCopy2 optionWithFaceColor:v11 forDevice:deviceCopy];
LABEL_10:

  return v15;
}

@end