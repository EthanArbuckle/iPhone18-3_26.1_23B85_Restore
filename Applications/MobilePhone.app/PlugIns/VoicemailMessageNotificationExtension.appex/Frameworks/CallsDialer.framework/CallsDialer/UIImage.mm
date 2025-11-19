@interface UIImage
+ (id)phCarPlayImageNamed:(id)a3;
+ (id)phImageNamed:(id)a3;
+ (id)phPathForImageNamed:(id)a3;
@end

@implementation UIImage

+ (id)phImageNamed:(id)a3
{
  v3 = a3;
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = +[UIScreen _carScreen];
  v6 = [v5 traitCollection];
  v7 = [UIImage imageNamed:v3 inBundle:v4 compatibleWithTraitCollection:v6];

  return v7;
}

+ (id)phCarPlayImageNamed:(id)a3
{
  v3 = a3;
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = +[UIScreen _carScreen];
  v6 = [v5 traitCollection];
  v7 = [UIImage imageNamed:v3 inBundle:v4 compatibleWithTraitCollection:v6];

  return v7;
}

+ (id)phPathForImageNamed:(id)a3
{
  v3 = a3;
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = +[UIScreen mainScreen];
  [v5 scale];
  v7 = v6;

  if (v7 > 1.0)
  {
    v8 = +[UIScreen mainScreen];
    [v8 scale];
    v10 = [NSString stringWithFormat:@"@%dx", v9];

    if ([v3 hasSuffix:v10])
    {
    }

    else
    {
      v11 = [v3 stringByAppendingString:v10];
      v12 = [v4 pathForResource:v11 ofType:@"png"];

      if (v12)
      {
        goto LABEL_6;
      }
    }
  }

  v12 = [v4 pathForResource:v3 ofType:@"png"];
LABEL_6:

  return v12;
}

@end