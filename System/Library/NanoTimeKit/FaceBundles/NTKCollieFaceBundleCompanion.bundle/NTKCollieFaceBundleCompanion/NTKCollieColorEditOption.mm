@interface NTKCollieColorEditOption
+ (id)__orderedValuesForDevice:(id)a3;
+ (id)_orderedValuesForDevice:(id)a3;
+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4;
- (id)_valueToFaceBundleStringDict;
- (id)pigmentEditOption;
@end

@implementation NTKCollieColorEditOption

+ (id)_orderedValuesForDevice:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_11A44;
  v5[3] = &unk_2D000;
  v5[4] = a1;
  v3 = sub_11A44(v5, a3);

  return v3;
}

+ (id)__orderedValuesForDevice:(id)a3
{
  v3 = [NTKFaceColorEditOption _orderedValuesForDevice:a3];
  v4 = [v3 mutableCopy];

  v5 = [v4 indexOfObject:&off_2DF28];
  [v4 removeObject:&off_2DF28];
  [v4 insertObject:&off_2DF40 atIndex:v5];
  [v4 insertObject:&off_2DF58 atIndex:v5];
  [v4 insertObject:&off_2DF70 atIndex:v5];

  return v4;
}

+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4
{
  if (a3 == 200)
  {
    v6 = @"collie-dark-gray";
  }

  else
  {
    v9 = v4;
    v10 = v5;
    v8.receiver = a1;
    v8.super_class = &OBJC_METACLASS___NTKCollieColorEditOption;
    v6 = objc_msgSendSuper2(&v8, "_snapshotKeyForValue:forDevice:", a3, a4);
  }

  return v6;
}

- (id)_valueToFaceBundleStringDict
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_11D28;
  block[3] = &unk_2C970;
  block[4] = self;
  if (qword_33278 != -1)
  {
    dispatch_once(&qword_33278, block);
  }

  return qword_33270;
}

- (id)pigmentEditOption
{
  v3 = [(NTKCollieColorEditOption *)self faceColor];
  if ((v3 - 200) >= 2)
  {
    if (v3 == &dword_18 + 2)
    {
      v5 = [NTKPigmentEditOption alloc];
      v6 = NTKFaceColorName();
      v7 = [v5 initWithOptionName:v6 collectionName:ntk_seasons];

      goto LABEL_7;
    }

    v9.receiver = self;
    v9.super_class = NTKCollieColorEditOption;
    v4 = [(NTKCollieColorEditOption *)&v9 pigmentEditOption];
  }

  else
  {
    v4 = [[NTKPigmentEditOption alloc] initWithOptionName:@"darkGray" collectionName:@"memoji"];
  }

  v7 = v4;
LABEL_7:

  return v7;
}

@end