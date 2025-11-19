@interface NTKMargaritaStyleEditOption
+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4;
- (id)_valueToFaceBundleStringDict;
- (id)localizedName;
@end

@implementation NTKMargaritaStyleEditOption

+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4
{
  if (a3 > 3)
  {
    return 0;
  }

  else
  {
    return off_14580[a3];
  }
}

- (id)localizedName
{
  v2 = [(NTKMargaritaStyleEditOption *)self style];
  if (v2 > 3)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_145A0[v2];
  }

  v4 = [(__CFString *)v3 stringByAppendingString:@"_COMPANION"];
  v5 = [NTKMargaritaFaceBundle localizedStringForKey:v4 comment:&stru_14AF0];

  return v5;
}

- (id)_valueToFaceBundleStringDict
{
  if (qword_1AC08 != -1)
  {
    sub_9780();
  }

  v3 = qword_1AC00;

  return v3;
}

@end