@interface UIImage
+ (id)systemImageNamedNumberAware:(id)aware;
+ (id)templateImageNamed:(id)named;
@end

@implementation UIImage

+ (id)templateImageNamed:(id)named
{
  v3 = [UIImage imageNamed:named];
  v4 = [v3 imageWithRenderingMode:2];

  return v4;
}

+ (id)systemImageNamedNumberAware:(id)aware
{
  awareCopy = aware;
  if (qword_82418 != -1)
  {
    sub_4258C();
  }

  if (([qword_82410 containsObject:awareCopy] & 1) == 0)
  {

    v8 = 0;
LABEL_14:
    v9 = [UIImage systemImageNamed:awareCopy];
    goto LABEL_15;
  }

  v4 = +[NSLocale currentLocale];
  languageCode = [v4 languageCode];

  if (([languageCode isEqualToString:@"ar"] & 1) != 0 || objc_msgSend(languageCode, "isEqualToString:", @"hi"))
  {
    v6 = +[NSLocale currentLocale];
    numberingSystem = [v6 numberingSystem];

    if ([numberingSystem isEqualToString:@"latn"])
    {
      v8 = [awareCopy stringByAppendingFormat:@".westernarabic"];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    goto LABEL_14;
  }

  v9 = [UIImage imageNamed:v8];
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_15:

  return v9;
}

@end