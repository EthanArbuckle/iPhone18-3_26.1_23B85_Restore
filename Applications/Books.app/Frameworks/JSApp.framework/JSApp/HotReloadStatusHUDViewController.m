@interface HotReloadStatusHUDViewController
- (_TtC5JSAppP33_E222B00B621AE7255E22C290E7F82EA232HotReloadStatusHUDViewController)initWithCoder:(id)a3;
- (_TtC5JSAppP33_E222B00B621AE7255E22C290E7F82EA232HotReloadStatusHUDViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation HotReloadStatusHUDViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_5D258();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_5D3E0();
}

- (_TtC5JSAppP33_E222B00B621AE7255E22C290E7F82EA232HotReloadStatusHUDViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_843AC();
    *(&self->super.super.super.isa + OBJC_IVAR____TtC5JSAppP33_E222B00B621AE7255E22C290E7F82EA232HotReloadStatusHUDViewController_hudView) = 0;
    v6 = (&self->super.super.super.isa + OBJC_IVAR____TtC5JSAppP33_E222B00B621AE7255E22C290E7F82EA232HotReloadStatusHUDViewController_text);
    *v6 = 0;
    v6[1] = 0;
    v7 = a4;
    v8 = sub_8437C();
  }

  else
  {
    *(&self->super.super.super.isa + OBJC_IVAR____TtC5JSAppP33_E222B00B621AE7255E22C290E7F82EA232HotReloadStatusHUDViewController_hudView) = 0;
    v9 = (&self->super.super.super.isa + OBJC_IVAR____TtC5JSAppP33_E222B00B621AE7255E22C290E7F82EA232HotReloadStatusHUDViewController_text);
    *v9 = 0;
    v9[1] = 0;
    v10 = a4;
    v8 = 0;
  }

  v13.receiver = self;
  v13.super_class = type metadata accessor for HotReloadStatusHUDViewController();
  v11 = [(HotReloadStatusHUDViewController *)&v13 initWithNibName:v8 bundle:a4];

  return v11;
}

- (_TtC5JSAppP33_E222B00B621AE7255E22C290E7F82EA232HotReloadStatusHUDViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5JSAppP33_E222B00B621AE7255E22C290E7F82EA232HotReloadStatusHUDViewController_hudView) = 0;
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC5JSAppP33_E222B00B621AE7255E22C290E7F82EA232HotReloadStatusHUDViewController_text);
  *v4 = 0;
  v4[1] = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for HotReloadStatusHUDViewController();
  v5 = a3;
  v6 = [(HotReloadStatusHUDViewController *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end