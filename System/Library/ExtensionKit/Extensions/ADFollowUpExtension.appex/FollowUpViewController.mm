@interface FollowUpViewController
- (_TtC19ADFollowUpExtension22FollowUpViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)processFollowUpItem:(id)item selectedAction:(id)action completion:(id)completion;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation FollowUpViewController

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for FollowUpViewController();
  [(FollowUpViewController *)&v2 viewDidLoad];
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10000BF3C(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for FollowUpViewController();
  v4 = v5.receiver;
  [(FollowUpViewController *)&v5 viewWillDisappear:disappearCopy];
  [v4 finishProcessing];
}

- (void)processFollowUpItem:(id)item selectedAction:(id)action completion:(id)completion
{
  v8 = _Block_copy(completion);
  if (v8)
  {
    *(swift_allocObject() + 16) = v8;
    v8 = sub_10000FE38;
  }

  itemCopy = item;
  actionCopy = action;
  selfCopy = self;
  sub_10000C378(item, action, v8);
  sub_10000FDF0(v8);
}

- (_TtC19ADFollowUpExtension22FollowUpViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end