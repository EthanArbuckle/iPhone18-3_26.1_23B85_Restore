@interface UIImage(SocialAdditions)
+ (id)socialFrameworkImageNamed:()SocialAdditions;
@end

@implementation UIImage(SocialAdditions)

+ (id)socialFrameworkImageNamed:()SocialAdditions
{
  v3 = MEMORY[0x1E69DCAB8];
  v4 = a3;
  v5 = SLSocialFrameworkBundle();
  v6 = [v3 imageNamed:v4 inBundle:v5];

  return v6;
}

@end