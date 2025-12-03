@interface FollowUpViewController
- (_TtC30AssistantCoreFollowupExtension22FollowUpViewController)init;
- (_TtC30AssistantCoreFollowupExtension22FollowUpViewController)initWithCoder:(id)coder;
- (_TtC30AssistantCoreFollowupExtension22FollowUpViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)processFollowUpItem:(id)item selectedAction:(id)action completion:(id)completion;
@end

@implementation FollowUpViewController

- (_TtC30AssistantCoreFollowupExtension22FollowUpViewController)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FollowUpViewController();
  return [(FollowUpViewController *)&v3 initWithNibName:0 bundle:0];
}

- (_TtC30AssistantCoreFollowupExtension22FollowUpViewController)initWithCoder:(id)coder
{
  result = sub_1000014BC();
  __break(1u);
  return result;
}

- (void)processFollowUpItem:(id)item selectedAction:(id)action completion:(id)completion
{
  v5 = _Block_copy(completion);
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

- (_TtC30AssistantCoreFollowupExtension22FollowUpViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end