@interface UIWindowScene
+ (void)load;
+ (void)performWhileInterfaceOrientationLocked:(id)a3;
- (int64_t)xxx_interfaceOrientation;
@end

@implementation UIWindowScene

+ (void)performWhileInterfaceOrientationLocked:(id)a3
{
  v4 = a3;
  v5 = [a1 interfaceLockedToPortrait];
  [a1 setInterfaceLockedToPortrait:1];
  v4[2](v4);

  [a1 setInterfaceLockedToPortrait:v5];
}

+ (void)load
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002F48;
  block[3] = &unk_100464A70;
  block[4] = a1;
  if (qword_1004B11E8[0] != -1)
  {
    dispatch_once(qword_1004B11E8, block);
  }
}

- (int64_t)xxx_interfaceOrientation
{
  if (+[UIWindowScene interfaceLockedToPortrait])
  {
    return 1;
  }

  return [(UIWindowScene *)self xxx_interfaceOrientation];
}

@end