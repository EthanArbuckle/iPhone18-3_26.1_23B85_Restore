@interface NTKGladiusLightEditOption
+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4;
- (id)_valueToFaceBundleStringDict;
- (id)localizedName;
@end

@implementation NTKGladiusLightEditOption

+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4
{
  if (a3 > 2)
  {
    return 0;
  }

  else
  {
    return off_20848[a3];
  }
}

- (id)localizedName
{
  v2 = [(NTKGladiusLightEditOption *)self light];
  if (v2 > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_20860[v2];
  }

  return [NTKGladiusFaceBundle localizedStringForKey:v3 comment:@"light"];
}

- (id)_valueToFaceBundleStringDict
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1FF4;
  block[3] = &unk_207F8;
  block[4] = self;
  if (qword_2A3A0 != -1)
  {
    dispatch_once(&qword_2A3A0, block);
  }

  return qword_2A398;
}

@end