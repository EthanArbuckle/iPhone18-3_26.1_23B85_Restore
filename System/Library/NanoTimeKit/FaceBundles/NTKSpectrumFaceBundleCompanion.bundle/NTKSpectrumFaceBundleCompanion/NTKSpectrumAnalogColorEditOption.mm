@interface NTKSpectrumAnalogColorEditOption
+ (id)__orderedValuesForDevice:(id)device;
+ (id)_orderedValuesForDevice:(id)device;
+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device;
- (BOOL)optionExistsInDevice:(id)device;
- (id)_valueToFaceBundleStringDict;
- (id)localizedName;
- (id)pigmentEditOption;
@end

@implementation NTKSpectrumAnalogColorEditOption

- (BOOL)optionExistsInDevice:(id)device
{
  deviceCopy = device;
  v5 = [deviceCopy supportsPDRCapability:3503302961] && !NTKGizmoOrCompanionAreRussian() || -[NTKSpectrumAnalogColorEditOption color](self, "color") != "ics";

  return v5;
}

+ (id)_orderedValuesForDevice:(id)device
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_5EF4;
  v5[3] = &unk_105A8;
  v5[4] = self;
  v3 = sub_5EF4(v5, device);

  return v3;
}

+ (id)__orderedValuesForDevice:(id)device
{
  deviceCopy = device;
  v5 = objc_opt_new();
  v11.receiver = self;
  v11.super_class = &OBJC_METACLASS___NTKSpectrumAnalogColorEditOption;
  v6 = objc_msgSendSuper2(&v11, "__orderedValuesForDevice:", deviceCopy);
  [v5 addObjectsFromArray:v6];

  v7 = [v5 count];
  while (v7 >= 1)
  {
    v8 = [v5 objectAtIndex:--v7];
    v9 = [v8 isEqual:&off_10C00];

    if (v9)
    {
      goto LABEL_6;
    }
  }

  v7 = 0;
LABEL_6:
  [v5 removeObject:&off_10C00];
  if ([deviceCopy supportsPDRCapability:3503302961] && (NTKGizmoOrCompanionAreRussian() & 1) == 0)
  {
    [v5 insertObject:&off_10C18 atIndex:v7];
  }

  if ([deviceCopy supportsPDRCapability:3356802055])
  {
    [v5 insertObject:&off_10C30 atIndex:v7];
    [v5 insertObject:&off_10C48 atIndex:v7];
    [v5 insertObject:&off_10C60 atIndex:v7];
    [v5 insertObject:&off_10C78 atIndex:v7];
    [v5 insertObject:&off_10C90 atIndex:v7];
  }

  if ([deviceCopy supportsPDRCapability:2919474315])
  {
    [v5 insertObject:&off_10CA8 atIndex:v7];
    [v5 insertObject:&off_10CC0 atIndex:v7];
    [v5 insertObject:&off_10CD8 atIndex:v7];
  }

  if ([deviceCopy supportsPDRCapability:753405533])
  {
    [v5 insertObject:&off_10CF0 atIndex:v7];
    [v5 insertObject:&off_10D08 atIndex:v7];
    [v5 insertObject:&off_10D20 atIndex:v7];
    [v5 insertObject:&off_10D38 atIndex:v7];
  }

  [v5 insertObject:&off_10D50 atIndex:v7];
  [v5 insertObject:&off_10D68 atIndex:v7];
  [v5 insertObject:&off_10D80 atIndex:v7];
  [v5 insertObject:&off_10D98 atIndex:v7];

  return v5;
}

+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device
{
  deviceCopy = device;
  switch(value)
  {
    case 0xBB8uLL:
      v6 = @"dual-tone-1";
      break;
    case 0xBB9uLL:
      v6 = @"dual-tone-2";
      break;
    case 0xBBAuLL:
      v6 = @"dual-tone-3";
      break;
    case 0xBBBuLL:
      v6 = @"dual-tone-4";
      break;
    case 0xBBCuLL:
      v6 = @"dual-tone-5";
      break;
    case 0xBBDuLL:
      v6 = @"dual-tone-6";
      break;
    case 0xBBEuLL:
      v6 = @"dual-tone-7";
      break;
    case 0xBBFuLL:
      v6 = @"dual-tone-8";
      break;
    case 0xBC0uLL:
      v6 = @"dual-tone-9";
      break;
    case 0xBC1uLL:
      v6 = @"dual-tone-10";
      break;
    case 0xBC2uLL:
      v6 = @"dual-tone-11";
      break;
    case 0xBC3uLL:
      v6 = @"multicolor-1";
      break;
    case 0xBC4uLL:
      v6 = @"dual-tone-12";
      break;
    case 0xBC5uLL:
      v6 = @"dual-tone-13";
      break;
    case 0xBC6uLL:
      v6 = @"dual-tone-14";
      break;
    case 0xBC7uLL:
      v6 = @"dual-tone-15";
      break;
    case 0xBC8uLL:
      v6 = @"dual-tone-16";
      break;
    default:
      if (value == 7)
      {
        v6 = 0;
      }

      else
      {
        v6 = [NTKFaceColorEditOption _snapshotKeyForValue:value forDevice:deviceCopy];
      }

      break;
  }

  return v6;
}

- (id)localizedName
{
  pigmentEditOption = [(NTKSpectrumAnalogColorEditOption *)self pigmentEditOption];
  localizedName = [pigmentEditOption localizedName];

  return localizedName;
}

- (id)_valueToFaceBundleStringDict
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_6558;
  block[3] = &unk_105D0;
  block[4] = self;
  if (qword_166C0 != -1)
  {
    dispatch_once(&qword_166C0, block);
  }

  return qword_166B8;
}

- (id)pigmentEditOption
{
  v3 = NTKColorPaletteDomainGradient;
  switch([(NTKSpectrumAnalogColorEditOption *)self color])
  {
    case 0xBB8uLL:
    case 0xBB9uLL:
    case 0xBBAuLL:
    case 0xBBBuLL:
    case 0xBBCuLL:
    case 0xBBDuLL:
    case 0xBBEuLL:
    case 0xBBFuLL:
    case 0xBC0uLL:
    case 0xBC1uLL:
    case 0xBC2uLL:
    case 0xBC4uLL:
    case 0xBC5uLL:
    case 0xBC6uLL:
    case 0xBC7uLL:
    case 0xBC8uLL:
      v4 = NTKFaceColorNameForDuotones();
      goto LABEL_5;
    case 0xBC3uLL:
      v5 = [NTKPigmentEditOption pigmentNamed:ntk_special_rainbow];
      v4 = 0;
      break;
    default:
      [(NTKSpectrumAnalogColorEditOption *)self color];
      NTKFaceColorNameAndCollection();
      v4 = 0;
      v6 = v3;

      v3 = v6;
LABEL_5:
      v5 = [[NTKPigmentEditOption alloc] initWithOptionName:v4 collectionName:v3];
      break;
  }

  return v5;
}

@end