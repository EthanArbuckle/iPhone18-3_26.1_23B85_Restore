@interface FollowUpViewController
- (_TtC30AssistantCoreFollowupExtension22FollowUpViewController)init;
- (_TtC30AssistantCoreFollowupExtension22FollowUpViewController)initWithCoder:(id)a3;
- (_TtC30AssistantCoreFollowupExtension22FollowUpViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)processFollowUpItem:(id)a3 selectedAction:(id)a4 completion:(id)a5;
@end

@implementation FollowUpViewController

- (_TtC30AssistantCoreFollowupExtension22FollowUpViewController)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FollowUpViewController();
  return [(FollowUpViewController *)&v3 initWithNibName:0 bundle:0];
}

- (_TtC30AssistantCoreFollowupExtension22FollowUpViewController)initWithCoder:(id)a3
{
  result = sub_1000014BC();
  __break(1u);
  return result;
}

- (void)processFollowUpItem:(id)a3 selectedAction:(id)a4 completion:(id)a5
{
  v5 = _Block_copy(a5);
  if (v5)
  {
    v6 = v5;
    (*(v5 + 2))(v5, 1);

    _Block_release(v6);
  }

  else
  {
    __break(1u);
  }
}

- (_TtC30AssistantCoreFollowupExtension22FollowUpViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end