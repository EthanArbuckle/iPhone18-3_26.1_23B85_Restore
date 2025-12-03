@interface CRLSelectionAwareAlertController
- (_TtC8Freeform32CRLSelectionAwareAlertController)initWithCoder:(id)coder;
- (_TtC8Freeform32CRLSelectionAwareAlertController)initWithNibName:(id)name bundle:(id)bundle;
@end

@implementation CRLSelectionAwareAlertController

- (_TtC8Freeform32CRLSelectionAwareAlertController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8Freeform32CRLSelectionAwareAlertController_staysOpenOnSelectionChange) = 1;
    bundleCopy = bundle;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8Freeform32CRLSelectionAwareAlertController_staysOpenOnSelectionChange) = 1;
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for CRLSelectionAwareAlertController();
  v9 = [(CRLSelectionAwareAlertController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC8Freeform32CRLSelectionAwareAlertController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8Freeform32CRLSelectionAwareAlertController_staysOpenOnSelectionChange) = 1;
  v7.receiver = self;
  v7.super_class = type metadata accessor for CRLSelectionAwareAlertController();
  coderCopy = coder;
  v5 = [(CRLSelectionAwareAlertController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end