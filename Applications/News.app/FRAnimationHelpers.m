@interface FRAnimationHelpers
+ (BOOL)changeWithoutRestartingEnabled;
+ (BOOL)synchronousImageLoadingEnabled;
@end

@implementation FRAnimationHelpers

+ (BOOL)changeWithoutRestartingEnabled
{
  if (qword_1000E62B8 != -1)
  {
    sub_100070E24();
  }

  return byte_1000E62B0;
}

+ (BOOL)synchronousImageLoadingEnabled
{
  if (+[FRAnimationHelpers changeWithoutRestartingEnabled])
  {
    v2 = +[NSUserDefaults standardUserDefaults];
    v3 = [v2 BOOLForKey:@"animation_synchronously_load_headerimage"];

    return v3;
  }

  else
  {
    if (qword_1000E62C8 != -1)
    {
      sub_100070E38();
    }

    return byte_1000E62C0;
  }
}

@end