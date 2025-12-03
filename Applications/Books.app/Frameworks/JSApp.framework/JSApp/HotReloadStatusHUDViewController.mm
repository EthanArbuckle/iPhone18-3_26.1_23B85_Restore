@interface HotReloadStatusHUDViewController
- (_TtC5JSAppP33_E222B00B621AE7255E22C290E7F82EA232HotReloadStatusHUDViewController)initWithCoder:(id)coder;
- (_TtC5JSAppP33_E222B00B621AE7255E22C290E7F82EA232HotReloadStatusHUDViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation HotReloadStatusHUDViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_5D258();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_5D3E0();
}

- (_TtC5JSAppP33_E222B00B621AE7255E22C290E7F82EA232HotReloadStatusHUDViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_843AC();
    *(&self->super.super.super.isa + OBJC_IVAR____TtC5JSAppP33_E222B00B621AE7255E22C290E7F82EA232HotReloadStatusHUDViewController_hudView) = 0;
    v6 = (&self->super.super.super.isa + OBJC_IVAR____TtC5JSAppP33_E222B00B621AE7255E22C290E7F82EA232HotReloadStatusHUDViewController_text);
    *v6 = 0;
    v6[1] = 0;
    bundleCopy = bundle;
    v8 = sub_8437C();
  }

  else
  {
    *(&self->super.super.super.isa + OBJC_IVAR____TtC5JSAppP33_E222B00B621AE7255E22C290E7F82EA232HotReloadStatusHUDViewController_hudView) = 0;
    v9 = (&self->super.super.super.isa + OBJC_IVAR____TtC5JSAppP33_E222B00B621AE7255E22C290E7F82EA232HotReloadStatusHUDViewController_text);
    *v9 = 0;
    v9[1] = 0;
    bundleCopy2 = bundle;
    v8 = 0;
  }

  v13.receiver = self;
  v13.super_class = type metadata accessor for HotReloadStatusHUDViewController();
  v11 = [(HotReloadStatusHUDViewController *)&v13 initWithNibName:v8 bundle:bundle];

  return v11;
}

- (_TtC5JSAppP33_E222B00B621AE7255E22C290E7F82EA232HotReloadStatusHUDViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5JSAppP33_E222B00B621AE7255E22C290E7F82EA232HotReloadStatusHUDViewController_hudView) = 0;
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC5JSAppP33_E222B00B621AE7255E22C290E7F82EA232HotReloadStatusHUDViewController_text);
  *v4 = 0;
  v4[1] = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for HotReloadStatusHUDViewController();
  coderCopy = coder;
  v6 = [(HotReloadStatusHUDViewController *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end