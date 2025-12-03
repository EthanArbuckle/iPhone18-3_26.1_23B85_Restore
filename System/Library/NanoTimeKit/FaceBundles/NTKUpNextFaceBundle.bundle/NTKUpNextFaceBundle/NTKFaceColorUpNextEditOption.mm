@interface NTKFaceColorUpNextEditOption
+ (id)__orderedValuesForDevice:(id)device;
+ (id)_orderedValuesForDevice:(id)device;
+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device;
@end

@implementation NTKFaceColorUpNextEditOption

+ (id)_orderedValuesForDevice:(id)device
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1104;
  v5[3] = &unk_185E8;
  v5[4] = self;
  v3 = sub_1104(v5, device);

  return v3;
}

+ (id)__orderedValuesForDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy pdrDeviceVersion] >= 0x50000)
  {
    [deviceCopy isRunningGraceOrLater];
    v4 = &off_192B0;
  }

  else
  {
    v4 = &__NSArray0__struct;
  }

  return v4;
}

+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy pdrDeviceVersion] >= 0x50000)
  {
    if (value == 201)
    {
      v7 = @"siri-dark";
    }

    else if (value == 202)
    {
      v7 = @"siri-grey";
    }

    else
    {
      v9.receiver = self;
      v9.super_class = &OBJC_METACLASS___NTKFaceColorUpNextEditOption;
      v7 = objc_msgSendSuper2(&v9, "_snapshotKeyForValue:forDevice:", value, deviceCopy);
    }
  }

  else
  {
    v7 = &stru_189F0;
  }

  return v7;
}

@end