@interface ShowHeaderView
- (void)preferredContentSizeChanged:(id)changed;
- (void)secondaryButtonSubtitleLabelTapped;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation ShowHeaderView

- (void)preferredContentSizeChanged:(id)changed
{
  v4 = sub_3019D8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3019C8();
  selfCopy = self;
  sub_2C6828();

  (*(v5 + 8))(v7, v4);
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.isa = change;
  ShowHeaderView.traitCollectionDidChange(_:)(v9);
}

- (void)secondaryButtonSubtitleLabelTapped
{
  selfCopy = self;
  sub_2C6D3C();
}

@end