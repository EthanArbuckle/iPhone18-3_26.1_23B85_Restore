@interface GAX_UIKeyboardCameraViewControllerOverride
+ (BOOL)isEnabled;
@end

@implementation GAX_UIKeyboardCameraViewControllerOverride

+ (BOOL)isEnabled
{
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___GAX_UIKeyboardCameraViewControllerOverride;
  if (objc_msgSendSuper2(&v6, "isEnabled"))
  {
    v2 = +[GAXClient sharedInstance];
    isActive = [v2 isActive];

    v4 = isActive ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

@end