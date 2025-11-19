@interface NTKBigNumeralsDigitalColorEditOption
+ (id)__orderedValuesForDevice:(id)a3;
+ (id)_orderedValuesForDevice:(id)a3;
+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4;
- (BOOL)optionExistsInDevice:(id)a3;
- (id)_valueToFaceBundleStringDict;
- (id)pigmentEditOption;
@end

@implementation NTKBigNumeralsDigitalColorEditOption

- (BOOL)optionExistsInDevice:(id)a3
{
  v4 = a3;
  v5 = [v4 supportsPDRCapability:3503302961] && !NTKGizmoOrCompanionAreRussian() || -[NTKBigNumeralsDigitalColorEditOption color](self, "color") != &stru_B90.align;

  return v5;
}

+ (id)_orderedValuesForDevice:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_34BC;
  v5[3] = &unk_C460;
  v5[4] = a1;
  v3 = sub_34BC(v5, a3);

  return v3;
}

+ (id)__orderedValuesForDevice:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  [v5 addObjectsFromArray:&off_D5C8];
  if ([v4 supportsPDRCapability:753405533])
  {
    [v5 addObjectsFromArray:&off_D5E0];
  }

  if ([v4 supportsPDRCapability:2919474315])
  {
    [v5 addObjectsFromArray:&off_D5F8];
  }

  if ([v4 supportsPDRCapability:3356802055])
  {
    [v5 addObjectsFromArray:&off_D610];
  }

  if ([v4 supportsPDRCapability:3503302961] && (NTKGizmoOrCompanionAreRussian() & 1) == 0)
  {
    [v5 addObjectsFromArray:&off_D628];
  }

  v8.receiver = a1;
  v8.super_class = &OBJC_METACLASS___NTKBigNumeralsDigitalColorEditOption;
  v6 = objc_msgSendSuper2(&v8, "__orderedValuesForDevice:", v4);
  [v5 addObjectsFromArray:v6];

  return v5;
}

+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4
{
  v5 = a4;
  if (a3 - 3000 >= 0x15)
  {
    v6 = [NTKFaceColorEditOption _snapshotKeyForValue:a3 forDevice:v5];
  }

  else
  {
    v6 = *(&off_C4A8 + a3 - 3000);
  }

  return v6;
}

- (id)_valueToFaceBundleStringDict
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3834;
  block[3] = &unk_C488;
  block[4] = self;
  if (qword_11D78 != -1)
  {
    dispatch_once(&qword_11D78, block);
  }

  return qword_11D70;
}

- (id)pigmentEditOption
{
  v3 = ntk_seasons;
  switch([(NTKBigNumeralsDigitalColorEditOption *)self color])
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
    case 0xBC3uLL:
    case 0xBC5uLL:
    case 0xBC6uLL:
    case 0xBC7uLL:
    case 0xBC8uLL:
    case 0xBC9uLL:
    case 0xBCAuLL:
    case 0xBCBuLL:
    case 0xBCCuLL:
      v4 = NTKFaceColorNameForDuotones();
      goto LABEL_5;
    case 0xBC4uLL:
      v6 = [NTKPigmentEditOption pigmentNamed:ntk_special_rainbow];
      v4 = 0;
      break;
    default:
      [(NTKBigNumeralsDigitalColorEditOption *)self color];
      NTKFaceColorNameAndCollection();
      v4 = 0;
      v5 = v3;

      v3 = v5;
LABEL_5:
      v6 = [[NTKPigmentEditOption alloc] initWithOptionName:v4 collectionName:v3];
      break;
  }

  return v6;
}

@end