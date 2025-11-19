@interface BuddyPasscodeFieldDot
- (BuddyPasscodeFieldDot)init;
- (CGSize)intrinsicContentSize;
- (void)_updateView;
- (void)setFilled:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation BuddyPasscodeFieldDot

- (BuddyPasscodeFieldDot)init
{
  v8 = a2;
  location = 0;
  v7.receiver = self;
  v7.super_class = BuddyPasscodeFieldDot;
  location = [(BuddyPasscodeFieldDot *)&v7 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  objc_storeStrong(&location, location);
  if (location)
  {
    v2 = [location layer];
    [v2 setCornerRadius:10.0];

    v3 = [location layer];
    [v3 setMasksToBounds:1];

    v4 = [location layer];
    [v4 setBorderWidth:2.0];

    [location _updateView];
  }

  v5 = location;
  objc_storeStrong(&location, 0);
  return v5;
}

- (void)setFilled:(BOOL)a3
{
  if (self->_filled != a3)
  {
    self->_filled = a3;
    [(BuddyPasscodeFieldDot *)self _updateView];
  }
}

- (CGSize)intrinsicContentSize
{
  v2 = sub_1000F0DA8();
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3.receiver = v5;
  v3.super_class = BuddyPasscodeFieldDot;
  [(BuddyPasscodeFieldDot *)&v3 traitCollectionDidChange:location[0]];
  [(BuddyPasscodeFieldDot *)v5 _updateView];
  objc_storeStrong(location, 0);
}

- (void)_updateView
{
  v9 = self;
  v8[1] = a2;
  v2 = [(BuddyPasscodeFieldDot *)self traitCollection];
  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_1000F0F20;
  v7 = &unk_10032B0D0;
  v8[0] = v9;
  [v2 performAsCurrentTraitCollection:&v3];

  objc_storeStrong(v8, 0);
}

@end