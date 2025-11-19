@interface SUSUIPasscodeEntryView
- (SUSUIPasscodeEntryView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setPasscodeViewsToVisible:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5;
@end

@implementation SUSUIPasscodeEntryView

- (SUSUIPasscodeEntryView)initWithFrame:(CGRect)a3
{
  v21 = a3;
  v19 = a2;
  v20 = 0;
  v18.receiver = self;
  v18.super_class = SUSUIPasscodeEntryView;
  v20 = [(SUSUIPasscodeEntryView *)&v18 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  objc_storeStrong(&v20, v20);
  if (v20)
  {
    v3 = [UIView alloc];
    v4 = [v3 initWithFrame:{v21.origin.x, v21.origin.y, v21.size.width, v21.size.height}];
    containerView = v20->_containerView;
    v20->_containerView = v4;

    [(UIView *)v20->_containerView setAutoresizingMask:?];
    [(UIView *)v20->_containerView setBackgroundColor:?];
    [(SUSUIPasscodeEntryView *)v20 addSubview:v20->_containerView];
    v17 = 2030;
    v6 = [[_UIBackdropView alloc] initWithPrivateStyle:2030];
    blurView = v20->_blurView;
    v20->_blurView = v6;

    [(_UIBackdropView *)v20->_blurView setAutoresizingMask:18];
    [(UIView *)v20->_containerView addSubview:v20->_blurView];
    v8 = [(SUSUIPasscodeEntryView *)v20 createPasscodeView];
    passcodeView = v20->_passcodeView;
    v20->_passcodeView = v8;

    v12 = [_UIBackdropViewSettings settingsForPrivateStyle:v17];
    v16 = [v12 combinedTintColor];

    [(SBUIPasscodeLockView *)v20->_passcodeView setAutoresizingMask:18];
    v13 = v20->_passcodeView;
    v14 = [v16 colorWithAlphaComponent:1.0];
    [(SBUIPasscodeLockView *)v13 setCustomBackgroundColor:?];

    [(SBUIPasscodeLockView *)v20->_passcodeView setShowsEmergencyCallButton:0];
    v15 = v20->_passcodeView;
    [v16 alphaComponent];
    [(SBUIPasscodeLockView *)v15 setBackgroundAlpha:?];
    [(UIView *)v20->_containerView addSubview:v20->_passcodeView];
    [(UIView *)v20->_containerView setAlpha:0.0];
    objc_storeStrong(&v16, 0);
  }

  v11 = v20;
  objc_storeStrong(&v20, 0);
  return v11;
}

- (void)setPasscodeViewsToVisible:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5
{
  v24 = self;
  v23 = a2;
  v22 = a3;
  v21 = a4;
  location = 0;
  objc_storeStrong(&location, a5);
  v24->_dismissing = !v22;
  v13 = _NSConcreteStackBlock;
  v14 = -1073741824;
  v15 = 0;
  v16 = sub_100001698;
  v17 = &unk_100018250;
  v18 = v24;
  v19 = v22;
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_1000016F4;
  v9 = &unk_100018278;
  v10 = v24;
  v12 = v22;
  v11 = location;
  [UIView animateWithDuration:&v13 animations:0.4 completion:?];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&location, 0);
}

- (void)layoutSubviews
{
  [(SUSUIPasscodeEntryView *)self bounds];
  v6 = v2;
  v7 = v3;
  v8 = v4;
  v9 = v5;
  [(_UIBackdropView *)self->_blurView setFrame:v2, v3, v4, v5];
  [(SBUIPasscodeLockView *)self->_passcodeView setFrame:v6, v7, v8, v9];
}

@end