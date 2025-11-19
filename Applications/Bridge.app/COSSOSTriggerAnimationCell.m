@interface COSSOSTriggerAnimationCell
- (BOOL)isCrownOrientationOnRightSide;
- (BOOL)isLayoutLeftToRight;
- (COSSOSTriggerAnimationCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)loadTriggerImageView;
- (void)setupConstraints;
@end

@implementation COSSOSTriggerAnimationCell

- (COSSOSTriggerAnimationCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v8.receiver = self;
  v8.super_class = COSSOSTriggerAnimationCell;
  v5 = [(COSSOSTriggerAnimationCell *)&v8 initWithStyle:a3 reuseIdentifier:a4 specifier:a5];
  v6 = v5;
  if (v5)
  {
    [(COSSOSTriggerAnimationCell *)v5 loadTriggerImageView];
  }

  return v6;
}

- (BOOL)isCrownOrientationOnRightSide
{
  v2 = BPSGetActiveSetupCompletedDevice();
  v3 = [v2 valueForProperty:NRDevicePropertyPairingID];
  v4 = [v2 valueForProperty:NRDevicePropertyLocalPairingDataStorePath];
  v5 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.nano" pairingID:v3 pairingDataStore:v4];
  v6 = [v5 BOOLForKey:@"invertUI"];

  return v6 ^ 1;
}

- (BOOL)isLayoutLeftToRight
{
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 userInterfaceLayoutDirection] == 0;

  return v3;
}

- (void)loadTriggerImageView
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2050000000;
  v3 = qword_1002BD240;
  v15 = qword_1002BD240;
  if (!qword_1002BD240)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100011DF0;
    v11[3] = &unk_1002680D0;
    v11[4] = &v12;
    sub_100011DF0(v11);
    v3 = v13[3];
  }

  v4 = v3;
  _Block_object_dispose(&v12, 8);
  v5 = [(COSSOSTriggerAnimationCell *)self isCrownOrientationOnRightSide];
  v6 = [(COSSOSTriggerAnimationCell *)self isLayoutLeftToRight];
  v7 = BPSBridgeTintColor();
  v8 = [v3 getAssetViewForWatchWithCrownOrientationOnRightSide:v5 layoutLeftToRight:v6 tintColor:v7];
  triggerImageView = self->_triggerImageView;
  self->_triggerImageView = v8;

  [(UIView *)self->_triggerImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = [(COSSOSTriggerAnimationCell *)self contentView];
  [v10 addSubview:self->_triggerImageView];

  [(COSSOSTriggerAnimationCell *)self setupConstraints];
}

- (void)setupConstraints
{
  triggerImageView = self->_triggerImageView;
  if (triggerImageView)
  {
    v23 = [(UIView *)triggerImageView centerYAnchor];
    v24 = [(COSSOSTriggerAnimationCell *)self contentView];
    v22 = [v24 centerYAnchor];
    v21 = [v23 constraintEqualToAnchor:v22];
    v25[0] = v21;
    v20 = [(UIView *)self->_triggerImageView centerXAnchor];
    v4 = [(COSSOSTriggerAnimationCell *)self contentView];
    v5 = [v4 centerXAnchor];
    v6 = [v20 constraintEqualToAnchor:v5];
    v25[1] = v6;
    v7 = [(UIView *)self->_triggerImageView heightAnchor];
    [(UIView *)self->_triggerImageView frame];
    v9 = v8;
    v10 = +[UIScreen mainScreen];
    [v10 scale];
    v12 = [v7 constraintEqualToConstant:v9 * v11];
    v25[2] = v12;
    v13 = [(UIView *)self->_triggerImageView widthAnchor];
    [(UIView *)self->_triggerImageView frame];
    v15 = v14;
    v16 = +[UIScreen mainScreen];
    [v16 scale];
    v18 = [v13 constraintEqualToConstant:v15 * v17];
    v25[3] = v18;
    v19 = [NSArray arrayWithObjects:v25 count:4];
    [NSLayoutConstraint activateConstraints:v19];
  }
}

@end