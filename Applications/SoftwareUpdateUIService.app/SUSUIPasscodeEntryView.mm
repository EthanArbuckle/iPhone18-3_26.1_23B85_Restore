@interface SUSUIPasscodeEntryView
- (SUSUIPasscodeEntryView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setPasscodeViewsToVisible:(BOOL)visible animated:(BOOL)animated completion:(id)completion;
@end

@implementation SUSUIPasscodeEntryView

- (SUSUIPasscodeEntryView)initWithFrame:(CGRect)frame
{
  frameCopy = frame;
  v19 = a2;
  v20 = 0;
  v18.receiver = self;
  v18.super_class = SUSUIPasscodeEntryView;
  v20 = [(SUSUIPasscodeEntryView *)&v18 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  objc_storeStrong(&v20, v20);
  if (v20)
  {
    v3 = [UIView alloc];
    v4 = [v3 initWithFrame:{frameCopy.origin.x, frameCopy.origin.y, frameCopy.size.width, frameCopy.size.height}];
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
    createPasscodeView = [(SUSUIPasscodeEntryView *)v20 createPasscodeView];
    passcodeView = v20->_passcodeView;
    v20->_passcodeView = createPasscodeView;

    v12 = [_UIBackdropViewSettings settingsForPrivateStyle:v17];
    combinedTintColor = [v12 combinedTintColor];

    [(SBUIPasscodeLockView *)v20->_passcodeView setAutoresizingMask:18];
    v13 = v20->_passcodeView;
    v14 = [combinedTintColor colorWithAlphaComponent:1.0];
    [(SBUIPasscodeLockView *)v13 setCustomBackgroundColor:?];

    [(SBUIPasscodeLockView *)v20->_passcodeView setShowsEmergencyCallButton:0];
    v15 = v20->_passcodeView;
    [combinedTintColor alphaComponent];
    [(SBUIPasscodeLockView *)v15 setBackgroundAlpha:?];
    [(UIView *)v20->_containerView addSubview:v20->_passcodeView];
    [(UIView *)v20->_containerView setAlpha:0.0];
    objc_storeStrong(&combinedTintColor, 0);
  }

  v11 = v20;
  objc_storeStrong(&v20, 0);
  return v11;
}

- (void)setPasscodeViewsToVisible:(BOOL)visible animated:(BOOL)animated completion:(id)completion
{
  selfCopy = self;
  v23 = a2;
  visibleCopy = visible;
  animatedCopy = animated;
  location = 0;
  objc_storeStrong(&location, completion);
  selfCopy->_dismissing = !visibleCopy;
  v13 = _NSConcreteStackBlock;
  v14 = -1073741824;
  v15 = 0;
  v16 = sub_100001698;
  v17 = &unk_100018250;
  v18 = selfCopy;
  v19 = visibleCopy;
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_1000016F4;
  v9 = &unk_100018278;
  v10 = selfCopy;
  v12 = visibleCopy;
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