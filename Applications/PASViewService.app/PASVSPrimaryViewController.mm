@interface PASVSPrimaryViewController
- (_TtC14PASViewService26PASVSPrimaryViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)didInvalidateForRemoteAlert;
@end

@implementation PASVSPrimaryViewController

- (void)configureWithContext:(id)context completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_1000157DC;
  }

  else
  {
    v7 = 0;
  }

  contextCopy = context;
  selfCopy = self;
  sub_10000FDEC(context, v6, v7);
  sub_100015794(v6);
}

- (void)didInvalidateForRemoteAlert
{
  selfCopy = self;
  sub_100013A2C("PASVSPrimaryViewController didInvalidateForRemoteAlert");
}

- (_TtC14PASViewService26PASVSPrimaryViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_100013C58(v5, v7, bundle);
}

@end