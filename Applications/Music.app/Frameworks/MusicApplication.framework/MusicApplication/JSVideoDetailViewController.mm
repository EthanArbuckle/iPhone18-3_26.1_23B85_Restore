@interface JSVideoDetailViewController
- (_TtC16MusicApplication27JSVideoDetailViewController)initWithCoder:(id)coder;
- (_TtC16MusicApplication27JSVideoDetailViewController)initWithNibName:(id)name bundle:(id)bundle;
@end

@implementation JSVideoDetailViewController

- (_TtC16MusicApplication27JSVideoDetailViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_AB92A0();
    *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication27JSVideoDetailViewController_modelResponse) = 0;
    *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication27JSVideoDetailViewController_modelResponseInvalidationObserver) = 0;
    bundleCopy = bundle;
    v7 = sub_AB9260();
  }

  else
  {
    *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication27JSVideoDetailViewController_modelResponse) = 0;
    *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication27JSVideoDetailViewController_modelResponseInvalidationObserver) = 0;
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for JSVideoDetailViewController();
  v9 = [(JSVideoDetailViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC16MusicApplication27JSVideoDetailViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication27JSVideoDetailViewController_modelResponse) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication27JSVideoDetailViewController_modelResponseInvalidationObserver) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for JSVideoDetailViewController();
  coderCopy = coder;
  v5 = [(JSVideoDetailViewController *)&v7 initWithCoder:coderCopy];

  return v5;
}

@end