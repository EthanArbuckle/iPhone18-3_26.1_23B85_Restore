@interface SSServiceUtilities
+ (BOOL)isPad;
@end

@implementation SSServiceUtilities

+ (BOOL)isPad
{
  v2 = +[UIDevice currentDevice];
  v3 = [v2 userInterfaceIdiom] == 1;

  return v3;
}

@end