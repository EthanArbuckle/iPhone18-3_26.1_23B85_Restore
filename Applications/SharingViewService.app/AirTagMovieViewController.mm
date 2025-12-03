@interface AirTagMovieViewController
- (_TtC18SharingViewService25AirTagMovieViewController)initWithContentView:(id)view;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation AirTagMovieViewController

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100099604(appear);
}

- (_TtC18SharingViewService25AirTagMovieViewController)initWithContentView:(id)view
{
  v5 = &self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC18SharingViewService25AirTagMovieViewController_movie];
  *v5 = 0;
  *(v5 + 1) = 0;
  self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC18SharingViewService25AirTagMovieViewController_shouldSkipEngageMovie] = 0;
  swift_unknownObjectWeakInit();
  v7.receiver = self;
  v7.super_class = type metadata accessor for AirTagMovieViewController();
  return [(AirTagMovieViewController *)&v7 initWithContentView:view];
}

@end