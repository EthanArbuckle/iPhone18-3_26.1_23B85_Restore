@interface LaunchMusicCellView
- (void)dealloc;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation LaunchMusicCellView

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v3 defaultCenter];
  [defaultCenter removeObserver:selfCopy];

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for LaunchMusicCellView();
  [(LaunchMusicCellView *)&v6 dealloc];
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10001D23C();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_10001D78C(change);
}

@end