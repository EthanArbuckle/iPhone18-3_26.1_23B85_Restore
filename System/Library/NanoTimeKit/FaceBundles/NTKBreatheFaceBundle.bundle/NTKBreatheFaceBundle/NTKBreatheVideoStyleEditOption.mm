@interface NTKBreatheVideoStyleEditOption
+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device;
+ (id)localizedNameForValidValue:(unint64_t)value forDevice:(id)device;
- (id)_valueToFaceBundleStringDict;
@end

@implementation NTKBreatheVideoStyleEditOption

+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device
{
  if (value > 3)
  {
    return 0;
  }

  else
  {
    return *(&off_8278 + value);
  }
}

+ (id)localizedNameForValidValue:(unint64_t)value forDevice:(id)device
{
  deviceCopy = device;
  v6 = deviceCopy;
  if (value > 3)
  {
    v10 = 0;
  }

  else
  {
    v7 = *(&off_8298 + value);
    if ([deviceCopy supportsPDRCapability:4094027452])
    {
      v7 = [v7 stringByAppendingString:@"_2021"];
    }

    v8 = [@"Breathe" stringByAppendingString:@"-Companion"];
    v9 = [v7 stringByAppendingString:@"_COMPANION"];

    v10 = [NTKBreatheFaceBundle localizedStringForKey:v9 table:v8 comment:@"Breathe Style"];
  }

  return v10;
}

- (id)_valueToFaceBundleStringDict
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_F44;
  block[3] = &unk_8258;
  block[4] = self;
  if (qword_CB70 != -1)
  {
    dispatch_once(&qword_CB70, block);
  }

  return qword_CB68;
}

@end