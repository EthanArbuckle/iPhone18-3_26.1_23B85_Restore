@interface BuddyPasscodeInputView
- (BOOL)becomeFirstResponder;
- (BOOL)isFirstResponder;
- (BOOL)resignFirstResponder;
- (BuddyPasscodeInputViewDelegate)delegate;
- (CGSize)intrinsicContentSize;
- (void)setPasscode:(id)a3;
- (void)shakePasscode;
@end

@implementation BuddyPasscodeInputView

- (void)setPasscode:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

- (BOOL)becomeFirstResponder
{
  v2 = [(BuddyPasscodeInputView *)self passcodeField:a2];
  v3 = [v2 becomeFirstResponder];

  return v3 & 1;
}

- (BOOL)isFirstResponder
{
  v2 = [(BuddyPasscodeInputView *)self passcodeField:a2];
  v3 = [v2 isFirstResponder];

  return v3 & 1;
}

- (BOOL)resignFirstResponder
{
  v7 = self;
  v6 = a2;
  v5.receiver = self;
  v5.super_class = BuddyPasscodeInputView;
  [(BuddyPasscodeInputView *)&v5 resignFirstResponder];
  v2 = [(BuddyPasscodeInputView *)v7 passcodeField];
  v3 = [v2 resignFirstResponder];

  return v3 & 1;
}

- (void)shakePasscode
{
  v27[2] = self;
  v27[1] = a2;
  v27[0] = self;
  v26[1] = 0x4052C00000000000;
  v26[0] = [CASpringAnimation animationWithKeyPath:@"position.x"];
  [v26[0] setMass:1.20000005];
  [v26[0] setStiffness:1200.0];
  [v26[0] setDamping:12.0];
  LODWORD(v2) = 1028389654;
  LODWORD(v3) = 990057071;
  LODWORD(v4) = 1059712716;
  LODWORD(v5) = 1.0;
  v6 = [CAMediaTimingFunction functionWithControlPoints:v2];
  [v26[0] setTimingFunction:v6];

  [v26[0] setDuration:0.666999996];
  [v26[0] setInitialVelocity:0.0];
  [v26[0] setFillMode:kCAFillModeBackwards];
  v7 = [v27[0] layer];
  [v7 position];
  location[1] = v8;
  location[2] = v9;
  v10 = *&v8 + 75.0;
  *&v10 = v10;
  v11 = [NSNumber numberWithFloat:v10];
  [v26[0] setFromValue:v11];

  v12 = [v27[0] layer];
  [v12 addAnimation:v26[0] forKey:@"spring"];

  location[0] = [CABasicAnimation animationWithKeyPath:@"position.x"];
  LODWORD(v13) = 1054276898;
  LODWORD(v14) = 0;
  LODWORD(v15) = 1058305108;
  LODWORD(v16) = 1.0;
  v17 = [CAMediaTimingFunction functionWithControlPoints:v13];
  [location[0] setTimingFunction:v17];

  [location[0] setDuration:0.100000001];
  [location[0] setFillMode:kCAFillModeBackwards];
  v18 = [v27[0] layer];
  [v18 position];
  v24 = v19;
  v20 = v19 - 75.0;
  *&v20 = v20;
  v22 = [NSNumber numberWithFloat:v20, *&v24, v21];
  [location[0] setFromValue:v22];

  v23 = [v27[0] layer];
  [v23 addAnimation:location[0] forKey:@"force"];

  objc_storeStrong(location, 0);
  objc_storeStrong(v26, 0);
  objc_storeStrong(v27, 0);
}

- (CGSize)intrinsicContentSize
{
  v2 = [(BuddyPasscodeInputView *)self passcodeField];
  [v2 frame];
  v8 = v3;
  v7 = v4;

  v6 = v8;
  v5 = v7;
  result.height = v6;
  result.width = v5;
  return result;
}

- (BuddyPasscodeInputViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end