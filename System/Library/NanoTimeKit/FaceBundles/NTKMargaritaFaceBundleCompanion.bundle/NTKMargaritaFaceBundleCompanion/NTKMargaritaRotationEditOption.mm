@interface NTKMargaritaRotationEditOption
+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device;
- (id)_valueToFaceBundleStringDict;
- (id)localizedName;
@end

@implementation NTKMargaritaRotationEditOption

+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device
{
  device = [NSNumber numberWithUnsignedInteger:value, device];
  v5 = [device description];

  return v5;
}

- (id)localizedName
{
  if (qword_1ABE8 != -1)
  {
    sub_976C();
  }

  v3 = qword_1ABD8;
  v4 = +[NSLocale currentLocale];
  [v3 setLocale:v4];

  v5 = qword_1ABE0;
  v6 = qword_1ABD8;
  v7 = [NSNumber numberWithInteger:[(NTKMargaritaRotationEditOption *)self rotation]];
  v8 = [v6 stringFromNumber:v7];
  v9 = [NSString stringWithFormat:v5, v8];

  return v9;
}

- (id)_valueToFaceBundleStringDict
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10E4;
  block[3] = &unk_14540;
  block[4] = self;
  if (qword_1ABF8 != -1)
  {
    dispatch_once(&qword_1ABF8, block);
  }

  return qword_1ABF0;
}

@end