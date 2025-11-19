@interface FollowUpViewController
- (_TtC19ADFollowUpExtension22FollowUpViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)processFollowUpItem:(id)a3 selectedAction:(id)a4 completion:(id)a5;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation FollowUpViewController

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for FollowUpViewController();
  [(FollowUpViewController *)&v2 viewDidLoad];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_10000BF3C(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for FollowUpViewController();
  v4 = v5.receiver;
  [(FollowUpViewController *)&v5 viewWillDisappear:v3];
  [v4 finishProcessing];
}

- (void)processFollowUpItem:(id)a3 selectedAction:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  if (v8)
  {
    *(swift_allocObject() + 16) = v8;
    v8 = sub_10000FE38;
  }

  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_10000C378(a3, a4, v8);
  sub_10000FDF0(v8);
}

- (_TtC19ADFollowUpExtension22FollowUpViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end