@interface LaunchMusicCellView
- (void)dealloc;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation LaunchMusicCellView

- (void)dealloc
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 defaultCenter];
  [v5 removeObserver:v4];

  v6.receiver = v4;
  v6.super_class = type metadata accessor for LaunchMusicCellView();
  [(LaunchMusicCellView *)&v6 dealloc];
}

- (void)layoutSubviews
{
  v2 = self;
  sub_10001D23C();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10001D78C(a3);
}

@end