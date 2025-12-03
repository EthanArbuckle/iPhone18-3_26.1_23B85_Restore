@interface RoundedCornerView
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation RoundedCornerView

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for RoundedCornerView();
  v2 = v6.receiver;
  [(RoundedCornerView *)&v6 layoutSubviews];
  v3 = OBJC_IVAR____TtC11AppStoreKit17RoundedCornerView_borderView;
  swift_beginAccess();
  v4 = *&v2[v3];
  if (v4)
  {
    v5 = v4;
    [v2 bounds];
    [v5 setFrame_];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for RoundedCornerView();
  v4 = v8.receiver;
  changeCopy = change;
  [(RoundedCornerView *)&v8 traitCollectionDidChange:changeCopy];
  traitCollection = [v4 traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (!changeCopy || userInterfaceStyle != [changeCopy userInterfaceStyle])
  {
    (*((*MEMORY[0x1E69E7D40] & *v4) + 0xE8))();
  }
}

@end