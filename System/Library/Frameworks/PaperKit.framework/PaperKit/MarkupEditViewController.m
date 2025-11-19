@interface MarkupEditViewController
- (_TtC8PaperKit24MarkupEditViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)didTapAddShapeListItemView:(id)a3 forEvent:(id)a4;
- (void)didTapAddTextBoxListItemView:(id)a3 forEvent:(id)a4;
- (void)didTapOpacityListItemView:(id)a3 forEvent:(id)a4;
- (void)updatePreferredContentSize;
- (void)viewDidLoad;
@end

@implementation MarkupEditViewController

- (void)viewDidLoad
{
  v2 = self;
  MarkupEditViewController.viewDidLoad()();
}

- (void)updatePreferredContentSize
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_stackView);
  v3 = *MEMORY[0x1E69DE090];
  v4 = *(MEMORY[0x1E69DE090] + 8);
  v7 = self;
  [v2 systemLayoutSizeFittingSize_];
  [(MarkupEditViewController *)v7 setPreferredContentSize:fmax(v5, 250.0), v6 + 24.0];
}

- (void)didTapAddTextBoxListItemView:(id)a3 forEvent:(id)a4
{
  if (a3)
  {
    v5 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v6 = self;
  }

  [(MarkupEditViewController *)self dismissViewControllerAnimated:1 completion:0];
  v7 = self + OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 1);
    ObjectType = swift_getObjectType();
    (*(v8 + 16))(self, ObjectType, v8);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v10, &_sypSgMd);
}

- (void)didTapAddShapeListItemView:(id)a3 forEvent:(id)a4
{
  if (a3)
  {
    v5 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    v6 = self;
  }

  specialized static MarkupEditViewController.presentShapePicker(_:replacing:from:popoverDelegate:)(*(&self->super.super.super.isa + OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_shapeButtonListViewController), self, v7, 0);
  outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_sypSgMd);
}

- (void)didTapOpacityListItemView:(id)a3 forEvent:(id)a4
{
  if (a3)
  {
    v5 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
    v6 = self;
  }

  [(MarkupEditViewController *)self dismissViewControllerAnimated:1 completion:0, v7, v8];

  outlined destroy of StocksKitCurrencyCache.Provider?(&v7, &_sypSgMd);
}

- (_TtC8PaperKit24MarkupEditViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end