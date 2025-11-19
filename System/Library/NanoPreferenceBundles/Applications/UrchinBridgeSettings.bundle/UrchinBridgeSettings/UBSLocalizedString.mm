@interface UBSLocalizedString
+ (id)shared;
- (UBSLocalizedString)init;
@end

@implementation UBSLocalizedString

+ (id)shared
{
  if (qword_11558 != -1)
  {
    sub_5F34();
  }

  v3 = qword_11550;

  return v3;
}

- (UBSLocalizedString)init
{
  v5.receiver = self;
  v5.super_class = UBSLocalizedString;
  v2 = [(UBSLocalizedString *)&v5 init];
  if (v2)
  {
    v3 = [NSBundle bundleForClass:objc_opt_class()];
    [(UBSLocalizedString *)v2 setBundle:v3];
  }

  return v2;
}

@end