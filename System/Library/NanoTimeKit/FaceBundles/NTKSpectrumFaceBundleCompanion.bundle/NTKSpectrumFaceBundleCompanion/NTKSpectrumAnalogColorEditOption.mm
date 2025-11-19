@interface NTKSpectrumAnalogColorEditOption
+ (id)__orderedValuesForDevice:(id)a3;
+ (id)_orderedValuesForDevice:(id)a3;
+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4;
- (BOOL)optionExistsInDevice:(id)a3;
- (id)_valueToFaceBundleStringDict;
- (id)localizedName;
- (id)pigmentEditOption;
@end

@implementation NTKSpectrumAnalogColorEditOption

- (BOOL)optionExistsInDevice:(id)a3
{
  v4 = a3;
  v5 = [v4 supportsPDRCapability:3503302961] && !NTKGizmoOrCompanionAreRussian() || -[NTKSpectrumAnalogColorEditOption color](self, "color") != "ics";

  return v5;
}

+ (id)_orderedValuesForDevice:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_5EF4;
  v5[3] = &unk_105A8;
  v5[4] = a1;
  v3 = sub_5EF4(v5, a3);

  return v3;
}

+ (id)__orderedValuesForDevice:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v11.receiver = a1;
  v11.super_class = &OBJC_METACLASS___NTKSpectrumAnalogColorEditOption;
  v6 = objc_msgSendSuper2(&v11, "__orderedValuesForDevice:", v4);
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
  if ([v4 supportsPDRCapability:3503302961] && (NTKGizmoOrCompanionAreRussian() & 1) == 0)
  {
    [v5 insertObject:&off_10C18 atIndex:v7];
  }

  if ([v4 supportsPDRCapability:3356802055])
  {
    [v5 insertObject:&off_10C30 atIndex:v7];
    [v5 insertObject:&off_10C48 atIndex:v7];
    [v5 insertObject:&off_10C60 atIndex:v7];
    [v5 insertObject:&off_10C78 atIndex:v7];
    [v5 insertObject:&off_10C90 atIndex:v7];
  }

  if ([v4 supportsPDRCapability:2919474315])
  {
    [v5 insertObject:&off_10CA8 atIndex:v7];
    [v5 insertObject:&off_10CC0 atIndex:v7];
    [v5 insertObject:&off_10CD8 atIndex:v7];
  }

  if ([v4 supportsPDRCapability:753405533])
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

+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4
{
  v5 = a4;
  switch(a3)
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
      if (a3 == 7)
      {
        v6 = 0;
      }

      else
      {
        v6 = [NTKFaceColorEditOption _snapshotKeyForValue:a3 forDevice:v5];
      }

      break;
  }

  return v6;
}

- (id)localizedName
{
  v2 = [(NTKSpectrumAnalogColorEditOption *)self pigmentEditOption];
  v3 = [v2 localizedName];

  return v3;
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