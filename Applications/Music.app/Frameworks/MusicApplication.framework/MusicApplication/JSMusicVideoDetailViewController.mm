@interface JSMusicVideoDetailViewController
- (_TtC16MusicApplication32JSMusicVideoDetailViewController)initWithCoder:(id)a3;
- (_TtC16MusicApplication32JSMusicVideoDetailViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation JSMusicVideoDetailViewController

- (_TtC16MusicApplication32JSMusicVideoDetailViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC16MusicApplication32JSMusicVideoDetailViewController_detailHeaderLockupView) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC16MusicApplication32JSMusicVideoDetailViewController_contentItem) = 0;
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_5C174();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_5D534();
}

- (_TtC16MusicApplication32JSMusicVideoDetailViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end