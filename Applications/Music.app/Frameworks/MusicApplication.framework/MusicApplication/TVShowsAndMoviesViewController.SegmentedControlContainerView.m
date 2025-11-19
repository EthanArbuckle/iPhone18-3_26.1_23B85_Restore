@interface TVShowsAndMoviesViewController.SegmentedControlContainerView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtCC16MusicApplication30TVShowsAndMoviesViewControllerP33_0A44ACF94072246E8AD16A61955F73C029SegmentedControlContainerView)initWithCoder:(id)a3;
- (_TtCC16MusicApplication30TVShowsAndMoviesViewControllerP33_0A44ACF94072246E8AD16A61955F73C029SegmentedControlContainerView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)music_inheritedLayoutInsetsDidChange;
@end

@implementation TVShowsAndMoviesViewController.SegmentedControlContainerView

- (_TtCC16MusicApplication30TVShowsAndMoviesViewControllerP33_0A44ACF94072246E8AD16A61955F73C029SegmentedControlContainerView)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR____TtCC16MusicApplication30TVShowsAndMoviesViewControllerP33_0A44ACF94072246E8AD16A61955F73C029SegmentedControlContainerView_segmentedControl;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(UISegmentedControl) init];
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v14[0].receiver = self;
  v14[0].super_class = type metadata accessor for TVShowsAndMoviesViewController.SegmentedControlContainerView();
  v2 = v14[0].receiver;
  [(objc_super *)v14 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtCC16MusicApplication30TVShowsAndMoviesViewControllerP33_0A44ACF94072246E8AD16A61955F73C029SegmentedControlContainerView_segmentedControl];
  [v2 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [v2 layoutMargins];
  UIEdgeInsetsInsetRect(v5, v7, v9, v11, v12, v13);
  memset(&v14[1], 0, 32);
  v15 = 1;
  sub_ABA480();
  [v3 setFrame:?];
}

- (CGSize)intrinsicContentSize
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtCC16MusicApplication30TVShowsAndMoviesViewControllerP33_0A44ACF94072246E8AD16A61955F73C029SegmentedControlContainerView_segmentedControl);
  v3 = self;
  [v2 intrinsicContentSize];
  [(TVShowsAndMoviesViewController.SegmentedControlContainerView *)v3 layoutMargins];
  sub_AB9EB0();
  sub_ABA530();
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = *(&self->super.super.super.isa + OBJC_IVAR____TtCC16MusicApplication30TVShowsAndMoviesViewControllerP33_0A44ACF94072246E8AD16A61955F73C029SegmentedControlContainerView_segmentedControl);
  v6 = self;
  [v5 intrinsicContentSize];
  [(TVShowsAndMoviesViewController.SegmentedControlContainerView *)v6 layoutMargins];
  sub_AB9EB0();
  sub_ABA530();
  v8 = v7;
  v10 = v9;

  if (width > v8)
  {
    v11 = width;
  }

  else
  {
    v11 = v8;
  }

  if (width <= 0.0)
  {
    v11 = v8;
  }

  if (height > v10)
  {
    v12 = height;
  }

  else
  {
    v12 = v10;
  }

  if (height <= 0.0)
  {
    v12 = v10;
  }

  result.height = v12;
  result.width = v11;
  return result;
}

- (void)music_inheritedLayoutInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TVShowsAndMoviesViewController.SegmentedControlContainerView();
  v2 = v3.receiver;
  [(TVShowsAndMoviesViewController.SegmentedControlContainerView *)&v3 music_inheritedLayoutInsetsDidChange];
  [v2 music_inheritedLayoutInsets];
  [v2 layoutMargins];
  [v2 setLayoutMargins:?];
  [v2 music_inheritedLayoutInsets];
  [v2 layoutMargins];
  [v2 setLayoutMargins:?];
}

- (_TtCC16MusicApplication30TVShowsAndMoviesViewControllerP33_0A44ACF94072246E8AD16A61955F73C029SegmentedControlContainerView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end