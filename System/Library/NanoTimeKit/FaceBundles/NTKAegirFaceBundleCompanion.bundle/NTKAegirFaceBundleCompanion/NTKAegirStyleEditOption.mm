@interface NTKAegirStyleEditOption
+ (id)_orderedValuesForDevice:(id)a3;
+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4;
- (id)_valueToFaceBundleStringDict;
- (id)localizedName;
@end

@implementation NTKAegirStyleEditOption

+ (id)_orderedValuesForDevice:(id)a3
{
  sub_9448(a1, a3);
  v3 = qword_1A308;

  return v3;
}

+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4
{
  if (a3 > 7)
  {
    return 0;
  }

  else
  {
    return *(&off_14848 + a3);
  }
}

- (id)_valueToFaceBundleStringDict
{
  if (qword_1A330 != -1)
  {
    sub_9B64();
  }

  v3 = qword_1A328;

  return v3;
}

- (id)localizedName
{
  v2 = [(NTKAegirStyleEditOption *)self style];
  if (v2 > 7)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(__CFString *)*(&off_14888 + v2) stringByAppendingString:@"_COMPANION"];
  }

  v4 = [NTKAegirFaceBundle localizedStringForKey:v3 comment:@"style"];

  return v4;
}

@end