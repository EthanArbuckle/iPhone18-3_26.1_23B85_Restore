@interface AudioTraitDisclosureViewController
- (_TtC16MusicApplication34AudioTraitDisclosureViewController)initWithCoder:(id)coder;
- (_TtC16MusicApplication34AudioTraitDisclosureViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation AudioTraitDisclosureViewController

- (_TtC16MusicApplication34AudioTraitDisclosureViewController)initWithCoder:(id)coder
{
  v3 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC16MusicApplication34AudioTraitDisclosureViewController_dismissHandler);
  *v3 = 0;
  v3[1] = 0;
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  [(AudioTraitDisclosureViewController *)&v7 viewWillDisappear:disappearCopy];
  v5 = *&v4[OBJC_IVAR____TtC16MusicApplication34AudioTraitDisclosureViewController_dismissHandler];
  if (v5)
  {

    v5(v6);
    sub_17654(v5);
  }
}

- (_TtC16MusicApplication34AudioTraitDisclosureViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end