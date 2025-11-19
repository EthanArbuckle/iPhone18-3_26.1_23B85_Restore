@interface AudioTraitDisclosureViewController
- (_TtC5Music34AudioTraitDisclosureViewController)initWithCoder:(id)a3;
- (_TtC5Music34AudioTraitDisclosureViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation AudioTraitDisclosureViewController

- (_TtC5Music34AudioTraitDisclosureViewController)initWithCoder:(id)a3
{
  v3 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC5Music34AudioTraitDisclosureViewController_dismissHandler);
  *v3 = 0;
  v3[1] = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  [(AudioTraitDisclosureViewController *)&v7 viewWillDisappear:v3];
  v5 = *&v4[OBJC_IVAR____TtC5Music34AudioTraitDisclosureViewController_dismissHandler];
  if (v5)
  {

    v5(v6);

    sub_100020438(v5);
  }

  else
  {
  }
}

- (_TtC5Music34AudioTraitDisclosureViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end