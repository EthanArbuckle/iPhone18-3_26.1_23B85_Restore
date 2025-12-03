@interface SoftwareUpdateRequiredFlow
- (_TtC20HeadphoneProxService26SoftwareUpdateRequiredFlow)initWithCoder:(id)coder;
- (_TtC20HeadphoneProxService26SoftwareUpdateRequiredFlow)initWithNibName:(id)name bundle:(id)bundle;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)proxCardFlowDidDismiss;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation SoftwareUpdateRequiredFlow

- (void)configureWithContext:(id)context completion:(id)completion
{
  v4 = _Block_copy(completion);
  if (v4)
  {
    v5 = v4;
    (*(v4 + 2))();

    _Block_release(v5);
  }

  else
  {
    __break(1u);
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10003E778(appear);
}

- (_TtC20HeadphoneProxService26SoftwareUpdateRequiredFlow)initWithNibName:(id)name bundle:(id)bundle
{
  ObjectType = swift_getObjectType();
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    bundleCopy = bundle;
    name = String._bridgeToObjectiveC()();
  }

  else
  {
    bundleCopy2 = bundle;
  }

  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(SoftwareUpdateRequiredFlow *)&v12 initWithNibName:name bundle:bundle];

  return v10;
}

- (_TtC20HeadphoneProxService26SoftwareUpdateRequiredFlow)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(SoftwareUpdateRequiredFlow *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

- (void)proxCardFlowDidDismiss
{
  selfCopy = self;
  v2 = sub_10003E658();
  if (v2)
  {
    [v2 dismiss];
    swift_unknownObjectRelease();
  }
}

@end