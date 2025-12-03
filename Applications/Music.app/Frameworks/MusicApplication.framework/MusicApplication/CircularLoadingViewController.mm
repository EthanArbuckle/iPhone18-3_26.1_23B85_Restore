@interface CircularLoadingViewController
- (_TtC16MusicApplication29CircularLoadingViewController)initWithCoder:(id)coder;
- (_TtC16MusicApplication29CircularLoadingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation CircularLoadingViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_D5F78();
}

- (_TtC16MusicApplication29CircularLoadingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  ObjectType = swift_getObjectType();
  if (name)
  {
    sub_AB92A0();
    *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication29CircularLoadingViewController_circleLayer) = 0;
    *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication29CircularLoadingViewController_progressLayer) = 0;
    bundleCopy = bundle;
    name = sub_AB9260();
  }

  else
  {
    *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication29CircularLoadingViewController_circleLayer) = 0;
    *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication29CircularLoadingViewController_progressLayer) = 0;
    bundleCopy2 = bundle;
  }

  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(CircularLoadingViewController *)&v12 initWithNibName:name bundle:bundle];

  return v10;
}

- (_TtC16MusicApplication29CircularLoadingViewController)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication29CircularLoadingViewController_circleLayer) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication29CircularLoadingViewController_progressLayer) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  coderCopy = coder;
  v7 = [(CircularLoadingViewController *)&v9 initWithCoder:coderCopy];

  return v7;
}

@end