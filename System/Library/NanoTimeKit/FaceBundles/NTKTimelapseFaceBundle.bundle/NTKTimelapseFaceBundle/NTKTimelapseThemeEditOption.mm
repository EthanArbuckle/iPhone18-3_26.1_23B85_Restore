@interface NTKTimelapseThemeEditOption
+ (id)_localizedNameForValue:(unint64_t)a3 forDevice:(id)a4;
+ (id)_resourceBaseNameForTheme:(unint64_t)a3 forDevice:(id)a4;
+ (id)_resourceNameForTheme:(unint64_t)a3 videoIndex:(int64_t)a4 forDevice:(id)a5;
- (NSString)resourceBaseName;
- (NSString)resourceName;
- (id)_valueToFaceBundleStringDict;
- (id)resourceNameWithVideoIndex:(int64_t)a3;
@end

@implementation NTKTimelapseThemeEditOption

- (NSString)resourceBaseName
{
  v3 = objc_opt_class();
  v4 = [(NTKTimelapseThemeEditOption *)self timelapseTheme];
  v5 = [(NTKTimelapseThemeEditOption *)self device];
  v6 = [v3 _resourceBaseNameForTheme:v4 forDevice:v5];

  return v6;
}

- (NSString)resourceName
{
  v3 = objc_opt_class();
  v4 = [(NTKTimelapseThemeEditOption *)self timelapseTheme];
  v5 = [(NTKTimelapseThemeEditOption *)self device];
  v6 = [v3 _resourceNameForTheme:v4 videoIndex:-1 forDevice:v5];

  return v6;
}

- (id)resourceNameWithVideoIndex:(int64_t)a3
{
  v5 = objc_opt_class();
  v6 = [(NTKTimelapseThemeEditOption *)self timelapseTheme];
  v7 = [(NTKTimelapseThemeEditOption *)self device];
  v8 = [v5 _resourceNameForTheme:v6 videoIndex:a3 forDevice:v7];

  return v8;
}

+ (id)_resourceBaseNameForTheme:(unint64_t)a3 forDevice:(id)a4
{
  if (a3 > 5)
  {
    return 0;
  }

  else
  {
    return off_10328[a3];
  }
}

+ (id)_resourceNameForTheme:(unint64_t)a3 videoIndex:(int64_t)a4 forDevice:(id)a5
{
  v6 = [a1 _resourceBaseNameForTheme:a3 forDevice:a5];
  if ((a4 & 0x8000000000000000) == 0)
  {
    v7 = [NSString stringWithFormat:@"%@-%03d", v6, a4];

    v6 = v7;
  }

  return v6;
}

+ (id)_localizedNameForValue:(unint64_t)a3 forDevice:(id)a4
{
  v6 = a4;
  if (a3 >= 6)
  {
    v12.receiver = a1;
    v12.super_class = &OBJC_METACLASS___NTKTimelapseThemeEditOption;
    v10 = objc_msgSendSuper2(&v12, "_localizedNameForValue:forDevice:", a3, v6);
    v8 = @"Timelapse";
  }

  else
  {
    v7 = off_10358[a3];
    v8 = [@"Timelapse" stringByAppendingString:@"-Companion"];
    v9 = [(__CFString *)v7 stringByAppendingString:@"_COMPANION"];
    v10 = [NTKTimelapseFaceBundle localizedStringForKey:v9 table:v8 comment:@"Location"];
  }

  return v10;
}

- (id)_valueToFaceBundleStringDict
{
  if (qword_15350 != -1)
  {
    sub_5308();
  }

  v3 = qword_15348;

  return v3;
}

@end