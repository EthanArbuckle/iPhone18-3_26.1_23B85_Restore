@interface UIWindowScene
+ (void)load;
+ (void)performWhileInterfaceOrientationLocked:(id)locked;
- (int64_t)xxx_interfaceOrientation;
@end

@implementation UIWindowScene

+ (void)performWhileInterfaceOrientationLocked:(id)locked
{
  lockedCopy = locked;
  interfaceLockedToPortrait = [self interfaceLockedToPortrait];
  [self setInterfaceLockedToPortrait:1];
  lockedCopy[2](lockedCopy);

  [self setInterfaceLockedToPortrait:interfaceLockedToPortrait];
}

+ (void)load
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002F48;
  block[3] = &unk_100464A70;
  block[4] = self;
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