@interface NTKGladiusStyleEditOption
+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device;
- (id)_valueToFaceBundleStringDict;
- (id)localizedName;
@end

@implementation NTKGladiusStyleEditOption

+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device
{
  if (value > 2)
  {
    return 0;
  }

  else
  {
    return off_20818[value];
  }
}

- (id)localizedName
{
  style = [(NTKGladiusStyleEditOption *)self style];
  if (style > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_20830[style];
  }

  return [NTKGladiusFaceBundle localizedStringForKey:v3 comment:@"style"];
}

- (id)_valueToFaceBundleStringDict
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1C84;
  block[3] = &unk_207F8;
  block[4] = self;
  if (qword_2A370 != -1)
  {
    dispatch_once(&qword_2A370, block);
  }

  return qword_2A368;
}

@end