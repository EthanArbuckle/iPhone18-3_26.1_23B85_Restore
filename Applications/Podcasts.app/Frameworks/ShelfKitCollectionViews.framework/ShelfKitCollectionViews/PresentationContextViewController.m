@interface PresentationContextViewController
- (_TtC23ShelfKitCollectionViews33PresentationContextViewController)initWithCoder:(id)a3;
- (_TtC23ShelfKitCollectionViews33PresentationContextViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)dismissViewControllerWithTransition:(int)a3 completion:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation PresentationContextViewController

- (_TtC23ShelfKitCollectionViews33PresentationContextViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews33PresentationContextViewController_contextViewController) = 0;
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews33PresentationContextViewController_flowController);
  *v3 = 0;
  v3[1] = 0;
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews33PresentationContextViewController_actionRunner);
  *v4 = 0;
  v4[1] = 0;
  v5 = (&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews33PresentationContextViewController_dismissOverride);
  *v5 = 0;
  v5[1] = 0;
  result = sub_30D648();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for PresentationContextViewController();
  v2 = v6.receiver;
  [(PresentationContextViewController *)&v6 viewDidLoad];
  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() clearColor];
    [v4 setBackgroundColor:v5];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = type metadata accessor for PresentationContextViewController();
  v4 = v8.receiver;
  [(PresentationContextViewController *)&v8 viewDidAppear:v3];
  v5 = *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews33PresentationContextViewController_contextViewController];
  if (v5)
  {
    v6 = v4[OBJC_IVAR____TtC23ShelfKitCollectionViews33PresentationContextViewController_animatedContext];
    v7 = v5;
    [v4 presentViewController:v7 animated:v6 completion:{0, v8.receiver, v8.super_class}];
  }
}

- (void)dismissViewControllerWithTransition:(int)a3 completion:(id)a4
{
  v4 = *&a3;
  v6 = _Block_copy(a4);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_2B12C8;
  }

  else
  {
    v7 = 0;
  }

  v8 = self;
  sub_2B0DD4(v4, v6, v7);
  sub_2B8D4(v6, v7);
}

- (_TtC23ShelfKitCollectionViews33PresentationContextViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end