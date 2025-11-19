@interface UILongPressGestureRecognizer
+ (void)be_enableUIVariableDelayLoupeGestureOverrides;
- (double)be_gestureDelay;
- (void)be_setDelay:(double)a3;
- (void)setBe_gestureDelay:(double)a3;
@end

@implementation UILongPressGestureRecognizer

+ (void)be_enableUIVariableDelayLoupeGestureOverrides
{
  if (qword_36AB80 != -1)
  {
    sub_263A98();
  }
}

- (double)be_gestureDelay
{
  v2 = objc_getAssociatedObject(self, "be_gestureDelay");
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (void)setBe_gestureDelay:(double)a3
{
  v5 = [NSNumber numberWithDouble:?];
  objc_setAssociatedObject(self, "be_gestureDelay", v5, &dword_0 + 1);

  [(UILongPressGestureRecognizer *)self setDelay:a3];
}

- (void)be_setDelay:(double)a3
{
  v6 = objc_getAssociatedObject(self, "be_gestureDelay");
  if (v6)
  {
    [v6 doubleValue];
    a3 = v5;
  }

  [(UILongPressGestureRecognizer *)self be_setDelay:a3];
}

@end