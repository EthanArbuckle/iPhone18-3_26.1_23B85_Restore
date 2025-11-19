@interface NTKGladiusStyleEditOption
+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4;
- (id)_valueToFaceBundleStringDict;
- (id)localizedName;
@end

@implementation NTKGladiusStyleEditOption

+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4
{
  if (a3 > 2)
  {
    return 0;
  }

  else
  {
    return off_20818[a3];
  }
}

- (id)localizedName
{
  v2 = [(NTKGladiusStyleEditOption *)self style];
  if (v2 > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_20830[v2];
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