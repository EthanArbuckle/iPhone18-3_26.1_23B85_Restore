@interface PresentationContextViewController
- (_TtC20ProductPageExtension33PresentationContextViewController)initWithCoder:(id)a3;
- (_TtC20ProductPageExtension33PresentationContextViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)dismissViewControllerWithTransition:(int)a3 completion:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation PresentationContextViewController

- (_TtC20ProductPageExtension33PresentationContextViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension33PresentationContextViewController_contextViewController) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension33PresentationContextViewController_hasPresentedViewController) = 0;
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension33PresentationContextViewController_dismissOverride);
  *v3 = 0;
  v3[1] = 0;
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1000B9244();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for PresentationContextViewController();
  v4 = v7.receiver;
  [(PresentationContextViewController *)&v7 viewWillAppear:v3];
  v5 = [v4 presentationController];
  if (v5)
  {
    v6 = v5;
    [v5 _setContainerIgnoresDirectTouchEvents:1];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_1000B93FC(a3);
}

- (void)dismissViewControllerWithTransition:(int)a3 completion:(id)a4
{
  v4 = *&a3;
  v6 = _Block_copy(a4);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_1000B9ADC;
  }

  else
  {
    v7 = 0;
  }

  v8 = self;
  sub_1000B96B0(v4, v6, v7);
  sub_1000167E0(v6);
}

- (_TtC20ProductPageExtension33PresentationContextViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end