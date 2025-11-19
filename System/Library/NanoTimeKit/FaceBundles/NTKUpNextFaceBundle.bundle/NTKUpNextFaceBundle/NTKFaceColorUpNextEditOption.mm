@interface NTKFaceColorUpNextEditOption
+ (id)__orderedValuesForDevice:(id)a3;
+ (id)_orderedValuesForDevice:(id)a3;
+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4;
@end

@implementation NTKFaceColorUpNextEditOption

+ (id)_orderedValuesForDevice:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1104;
  v5[3] = &unk_185E8;
  v5[4] = a1;
  v3 = sub_1104(v5, a3);

  return v3;
}

+ (id)__orderedValuesForDevice:(id)a3
{
  v3 = a3;
  if ([v3 pdrDeviceVersion] >= 0x50000)
  {
    [v3 isRunningGraceOrLater];
    v4 = &off_192B0;
  }

  else
  {
    v4 = &__NSArray0__struct;
  }

  return v4;
}

+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4
{
  v6 = a4;
  if ([v6 pdrDeviceVersion] >= 0x50000)
  {
    if (a3 == 201)
    {
      v7 = @"siri-dark";
    }

    else if (a3 == 202)
    {
      v7 = @"siri-grey";
    }

    else
    {
      v9.receiver = a1;
      v9.super_class = &OBJC_METACLASS___NTKFaceColorUpNextEditOption;
      v7 = objc_msgSendSuper2(&v9, "_snapshotKeyForValue:forDevice:", a3, v6);
    }
  }

  else
  {
    v7 = &stru_189F0;
  }

  return v7;
}

@end