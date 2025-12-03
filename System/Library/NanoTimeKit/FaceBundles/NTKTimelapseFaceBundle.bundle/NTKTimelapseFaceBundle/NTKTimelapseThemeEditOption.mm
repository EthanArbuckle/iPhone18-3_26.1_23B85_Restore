@interface NTKTimelapseThemeEditOption
+ (id)_localizedNameForValue:(unint64_t)value forDevice:(id)device;
+ (id)_resourceBaseNameForTheme:(unint64_t)theme forDevice:(id)device;
+ (id)_resourceNameForTheme:(unint64_t)theme videoIndex:(int64_t)index forDevice:(id)device;
- (NSString)resourceBaseName;
- (NSString)resourceName;
- (id)_valueToFaceBundleStringDict;
- (id)resourceNameWithVideoIndex:(int64_t)index;
@end

@implementation NTKTimelapseThemeEditOption

- (NSString)resourceBaseName
{
  v3 = objc_opt_class();
  timelapseTheme = [(NTKTimelapseThemeEditOption *)self timelapseTheme];
  device = [(NTKTimelapseThemeEditOption *)self device];
  v6 = [v3 _resourceBaseNameForTheme:timelapseTheme forDevice:device];

  return v6;
}

- (NSString)resourceName
{
  v3 = objc_opt_class();
  timelapseTheme = [(NTKTimelapseThemeEditOption *)self timelapseTheme];
  device = [(NTKTimelapseThemeEditOption *)self device];
  v6 = [v3 _resourceNameForTheme:timelapseTheme videoIndex:-1 forDevice:device];

  return v6;
}

- (id)resourceNameWithVideoIndex:(int64_t)index
{
  v5 = objc_opt_class();
  timelapseTheme = [(NTKTimelapseThemeEditOption *)self timelapseTheme];
  device = [(NTKTimelapseThemeEditOption *)self device];
  v8 = [v5 _resourceNameForTheme:timelapseTheme videoIndex:index forDevice:device];

  return v8;
}

+ (id)_resourceBaseNameForTheme:(unint64_t)theme forDevice:(id)device
{
  if (theme > 5)
  {
    return 0;
  }

  else
  {
    return off_10328[theme];
  }
}

+ (id)_resourceNameForTheme:(unint64_t)theme videoIndex:(int64_t)index forDevice:(id)device
{
  v6 = [self _resourceBaseNameForTheme:theme forDevice:device];
  if ((index & 0x8000000000000000) == 0)
  {
    index = [NSString stringWithFormat:@"%@-%03d", v6, index];

    v6 = index;
  }

  return v6;
}

+ (id)_localizedNameForValue:(unint64_t)value forDevice:(id)device
{
  deviceCopy = device;
  if (value >= 6)
  {
    v12.receiver = self;
    v12.super_class = &OBJC_METACLASS___NTKTimelapseThemeEditOption;
    v10 = objc_msgSendSuper2(&v12, "_localizedNameForValue:forDevice:", value, deviceCopy);
    v8 = @"Timelapse";
  }

  else
  {
    v7 = off_10358[value];
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