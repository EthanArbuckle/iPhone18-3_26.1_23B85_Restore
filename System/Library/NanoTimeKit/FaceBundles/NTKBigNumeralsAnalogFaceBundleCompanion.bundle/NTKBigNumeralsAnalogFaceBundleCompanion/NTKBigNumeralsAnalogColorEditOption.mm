@interface NTKBigNumeralsAnalogColorEditOption
+ (id)__orderedValuesForDevice:(id)a3;
+ (id)_orderedValuesForDevice:(id)a3;
+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4;
- (BOOL)optionExistsInDevice:(id)a3;
- (id)_valueToFaceBundleStringDict;
- (id)pigmentEditOption;
@end

@implementation NTKBigNumeralsAnalogColorEditOption

- (BOOL)optionExistsInDevice:(id)a3
{
  v4 = a3;
  v5 = [v4 supportsPDRCapability:3503302961] && !NTKGizmoOrCompanionAreRussian() || -[NTKBigNumeralsAnalogColorEditOption color](self, "color") != &stru_B90.size;

  return v5;
}

+ (id)_orderedValuesForDevice:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_4B20;
  v5[3] = &unk_C3E0;
  v5[4] = a1;
  v3 = sub_4B20(v5, a3);

  return v3;
}

+ (id)__orderedValuesForDevice:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  if ([v4 supportsPDRCapability:3503302961] && (NTKGizmoOrCompanionAreRussian() & 1) == 0)
  {
    [v5 addObjectsFromArray:&off_CDF0];
  }

  v8.receiver = a1;
  v8.super_class = &OBJC_METACLASS___NTKBigNumeralsAnalogColorEditOption;
  v6 = objc_msgSendSuper2(&v8, "__orderedValuesForDevice:", v4);
  [v5 addObjectsFromArray:v6];

  return v5;
}

+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4
{
  if (a3 == 3000)
  {
    v6 = @"analog_multicolor_gradient-1";
  }

  else
  {
    v6 = [NTKFaceColorEditOption _snapshotKeyForValue:a3 forDevice:a4, v4];
  }

  return v6;
}

- (id)_valueToFaceBundleStringDict
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_4DFC;
  block[3] = &unk_C408;
  block[4] = self;
  if (qword_114D8 != -1)
  {
    dispatch_once(&qword_114D8, block);
  }

  return qword_114D0;
}

- (id)pigmentEditOption
{
  if ([(NTKBigNumeralsAnalogColorEditOption *)self color]== &stru_B90.size)
  {
    v3 = [NTKPigmentEditOption pigmentNamed:ntk_special_rainbow];
  }

  else
  {
    [(NTKBigNumeralsAnalogColorEditOption *)self color];
    NTKFaceColorNameAndCollection();
    v4 = 0;
    v5 = 0;
    v3 = [[NTKPigmentEditOption alloc] initWithOptionName:v4 collectionName:v5];
  }

  return v3;
}

@end