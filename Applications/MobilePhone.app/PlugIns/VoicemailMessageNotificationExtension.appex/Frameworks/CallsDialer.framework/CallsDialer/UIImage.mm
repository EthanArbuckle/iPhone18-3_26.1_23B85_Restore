@interface UIImage
+ (id)phCarPlayImageNamed:(id)named;
+ (id)phImageNamed:(id)named;
+ (id)phPathForImageNamed:(id)named;
@end

@implementation UIImage

+ (id)phImageNamed:(id)named
{
  namedCopy = named;
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = +[UIScreen _carScreen];
  traitCollection = [v5 traitCollection];
  v7 = [UIImage imageNamed:namedCopy inBundle:v4 compatibleWithTraitCollection:traitCollection];

  return v7;
}

+ (id)phCarPlayImageNamed:(id)named
{
  namedCopy = named;
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = +[UIScreen _carScreen];
  traitCollection = [v5 traitCollection];
  v7 = [UIImage imageNamed:namedCopy inBundle:v4 compatibleWithTraitCollection:traitCollection];

  return v7;
}

+ (id)phPathForImageNamed:(id)named
{
  namedCopy = named;
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = +[UIScreen mainScreen];
  [v5 scale];
  v7 = v6;

  if (v7 > 1.0)
  {
    v8 = +[UIScreen mainScreen];
    [v8 scale];
    v10 = [NSString stringWithFormat:@"@%dx", v9];

    if ([namedCopy hasSuffix:v10])
    {
    }

    else
    {
      v11 = [namedCopy stringByAppendingString:v10];
      v12 = [v4 pathForResource:v11 ofType:@"png"];

      if (v12)
      {
        goto LABEL_6;
      }
    }
  }

  v12 = [v4 pathForResource:namedCopy ofType:@"png"];
LABEL_6:

  return v12;
}

@end