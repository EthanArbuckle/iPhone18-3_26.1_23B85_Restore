@interface PSSpecifier
+ (id)sk_appSpecifierForBundle:(id)a3 value:(id)a4 cellType:(int64_t)a5 target:(id)a6;
@end

@implementation PSSpecifier

+ (id)sk_appSpecifierForBundle:(id)a3 value:(id)a4 cellType:(int64_t)a5 target:(id)a6
{
  v8 = +[PSSpecifier preferenceSpecifierNamed:target:set:get:detail:cell:edit:](PSSpecifier, "preferenceSpecifierNamed:target:set:get:detail:cell:edit:", [a3 sk_appName], a6, 0, NSSelectorFromString(@"valueForSpecifier:"), 0, a5, 0);
  [v8 setUserInfo:{objc_msgSend(a3, "bundleIdentifier")}];
  v9 = [a3 sr_bundleType];
  if (v9 == &dword_0 + 2)
  {
    v15 = [a3 bundleIdentifier];
    [+[UIScreen mainScreen](UIScreen scale];
    v14 = [UIImage _applicationIconImageForBundleIdentifier:v15 format:0 scale:?];
    goto LABEL_5;
  }

  v10 = 0;
  if (v9 == &dword_0 + 1)
  {
    v11 = [a3 objectForInfoDictionaryKey:@"CFBundleIconFile"];
    v12 = [ISImageDescriptor imageDescriptorNamed:kISImageDescriptorTableUIName];
    v13 = [UIImage imageNamed:v11 inBundle:a3 compatibleWithTraitCollection:0];
    [v12 size];
    v14 = [(UIImage *)v13 imageByPreparingThumbnailOfSize:?];
LABEL_5:
    v10 = v14;
  }

  [v8 setObject:v10 forKeyedSubscript:PSIconImageKey];
  [v8 setObject:a4 forKeyedSubscript:PSValueKey];
  return v8;
}

@end