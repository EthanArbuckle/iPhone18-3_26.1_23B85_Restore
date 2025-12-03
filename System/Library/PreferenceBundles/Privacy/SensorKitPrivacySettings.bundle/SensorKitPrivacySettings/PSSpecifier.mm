@interface PSSpecifier
+ (id)sk_appSpecifierForBundle:(id)bundle value:(id)value cellType:(int64_t)type target:(id)target;
@end

@implementation PSSpecifier

+ (id)sk_appSpecifierForBundle:(id)bundle value:(id)value cellType:(int64_t)type target:(id)target
{
  v8 = +[PSSpecifier preferenceSpecifierNamed:target:set:get:detail:cell:edit:](PSSpecifier, "preferenceSpecifierNamed:target:set:get:detail:cell:edit:", [bundle sk_appName], target, 0, NSSelectorFromString(@"valueForSpecifier:"), 0, type, 0);
  [v8 setUserInfo:{objc_msgSend(bundle, "bundleIdentifier")}];
  sr_bundleType = [bundle sr_bundleType];
  if (sr_bundleType == &dword_0 + 2)
  {
    bundleIdentifier = [bundle bundleIdentifier];
    [+[UIScreen mainScreen](UIScreen scale];
    v14 = [UIImage _applicationIconImageForBundleIdentifier:bundleIdentifier format:0 scale:?];
    goto LABEL_5;
  }

  v10 = 0;
  if (sr_bundleType == &dword_0 + 1)
  {
    v11 = [bundle objectForInfoDictionaryKey:@"CFBundleIconFile"];
    v12 = [ISImageDescriptor imageDescriptorNamed:kISImageDescriptorTableUIName];
    v13 = [UIImage imageNamed:v11 inBundle:bundle compatibleWithTraitCollection:0];
    [v12 size];
    v14 = [(UIImage *)v13 imageByPreparingThumbnailOfSize:?];
LABEL_5:
    v10 = v14;
  }

  [v8 setObject:v10 forKeyedSubscript:PSIconImageKey];
  [v8 setObject:value forKeyedSubscript:PSValueKey];
  return v8;
}

@end