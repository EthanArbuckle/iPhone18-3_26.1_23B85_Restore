@interface NTKDolomiteStyleEditOption
+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4;
+ (id)defaultOptionForDevice:(id)a3;
- (id)_valueToFaceBundleStringDict;
- (id)localizedName;
@end

@implementation NTKDolomiteStyleEditOption

+ (id)defaultOptionForDevice:(id)a3
{
  v3 = a3;
  v4 = +[NTKDolomiteStyleEditOption optionWithStyle:forDevice:](NTKDolomiteStyleEditOption, "optionWithStyle:forDevice:", [v3 isRunningNapiliGMOrLater], v3);

  return v4;
}

+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4
{
  v4 = @"outline";
  if (a3 != 1)
  {
    v4 = 0;
  }

  if (a3)
  {
    return v4;
  }

  else
  {
    return @"filled";
  }
}

- (id)localizedName
{
  if ([(NTKDolomiteStyleEditOption *)self style]== &dword_0 + 1)
  {
    v2 = @"EDIT_OPTION_LABEL_STYLE_OUTLINE";
  }

  else
  {
    v2 = @"EDIT_OPTION_LABEL_STYLE_FILLED";
  }

  v3 = [(__CFString *)v2 stringByAppendingString:@"_COMPANION"];
  v4 = [NTKDolomiteFaceBundle localizedStringForKey:v3 comment:@"style"];

  return v4;
}

- (id)_valueToFaceBundleStringDict
{
  if (qword_D62640 != -1)
  {
    sub_9778();
  }

  v3 = qword_D62638;

  return v3;
}

@end