@interface JSVideoDetailViewController
- (_TtC16MusicApplication27JSVideoDetailViewController)initWithCoder:(id)a3;
- (_TtC16MusicApplication27JSVideoDetailViewController)initWithNibName:(id)a3 bundle:(id)a4;
@end

@implementation JSVideoDetailViewController

- (_TtC16MusicApplication27JSVideoDetailViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_AB92A0();
    *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication27JSVideoDetailViewController_modelResponse) = 0;
    *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication27JSVideoDetailViewController_modelResponseInvalidationObserver) = 0;
    v6 = a4;
    v7 = sub_AB9260();
  }

  else
  {
    *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication27JSVideoDetailViewController_modelResponse) = 0;
    *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication27JSVideoDetailViewController_modelResponseInvalidationObserver) = 0;
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for JSVideoDetailViewController();
  v9 = [(JSVideoDetailViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC16MusicApplication27JSVideoDetailViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication27JSVideoDetailViewController_modelResponse) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication27JSVideoDetailViewController_modelResponseInvalidationObserver) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for JSVideoDetailViewController();
  v4 = a3;
  v5 = [(JSVideoDetailViewController *)&v7 initWithCoder:v4];

  return v5;
}

@end