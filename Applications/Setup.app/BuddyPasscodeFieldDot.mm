@interface BuddyPasscodeFieldDot
- (BuddyPasscodeFieldDot)init;
- (CGSize)intrinsicContentSize;
- (void)_updateView;
- (void)setFilled:(BOOL)filled;
- (void)traitCollectionDidChange:(id)change;
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
    layer = [location layer];
    [layer setCornerRadius:10.0];

    layer2 = [location layer];
    [layer2 setMasksToBounds:1];

    layer3 = [location layer];
    [layer3 setBorderWidth:2.0];

    [location _updateView];
  }

  v5 = location;
  objc_storeStrong(&location, 0);
  return v5;
}

- (void)setFilled:(BOOL)filled
{
  if (self->_filled != filled)
  {
    self->_filled = filled;
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

- (void)traitCollectionDidChange:(id)change
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, change);
  v3.receiver = selfCopy;
  v3.super_class = BuddyPasscodeFieldDot;
  [(BuddyPasscodeFieldDot *)&v3 traitCollectionDidChange:location[0]];
  [(BuddyPasscodeFieldDot *)selfCopy _updateView];
  objc_storeStrong(location, 0);
}

- (void)_updateView
{
  selfCopy = self;
  v8[1] = a2;
  traitCollection = [(BuddyPasscodeFieldDot *)self traitCollection];
  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_1000F0F20;
  v7 = &unk_10032B0D0;
  v8[0] = selfCopy;
  [traitCollection performAsCurrentTraitCollection:&v3];

  objc_storeStrong(v8, 0);
}

@end