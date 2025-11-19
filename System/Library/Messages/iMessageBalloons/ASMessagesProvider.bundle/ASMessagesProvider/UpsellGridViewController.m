@interface UpsellGridViewController
- (_TtC18ASMessagesProvider24UpsellGridViewController)initWithCoder:(id)a3;
- (_TtC18ASMessagesProvider24UpsellGridViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
- (void)viewDidLoad;
@end

@implementation UpsellGridViewController

- (_TtC18ASMessagesProvider24UpsellGridViewController)initWithCoder:(id)a3
{
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)loadView
{
  v2 = self;
  if (([(UpsellGridViewController *)v2 isViewLoaded]& 1) == 0)
  {
    [(UpsellGridViewController *)v2 setView:*(&v2->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider24UpsellGridViewController_gridView)];
  }
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(UpsellGridViewController *)&v5 viewDidLoad];
  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    [v3 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

    sub_75A160();
  }

  else
  {
    __break(1u);
  }
}

- (_TtC18ASMessagesProvider24UpsellGridViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end