@interface CRLSelectionAwareAlertController
- (_TtC8Freeform32CRLSelectionAwareAlertController)initWithCoder:(id)a3;
- (_TtC8Freeform32CRLSelectionAwareAlertController)initWithNibName:(id)a3 bundle:(id)a4;
@end

@implementation CRLSelectionAwareAlertController

- (_TtC8Freeform32CRLSelectionAwareAlertController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8Freeform32CRLSelectionAwareAlertController_staysOpenOnSelectionChange) = 1;
    v6 = a4;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8Freeform32CRLSelectionAwareAlertController_staysOpenOnSelectionChange) = 1;
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for CRLSelectionAwareAlertController();
  v9 = [(CRLSelectionAwareAlertController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC8Freeform32CRLSelectionAwareAlertController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8Freeform32CRLSelectionAwareAlertController_staysOpenOnSelectionChange) = 1;
  v7.receiver = self;
  v7.super_class = type metadata accessor for CRLSelectionAwareAlertController();
  v4 = a3;
  v5 = [(CRLSelectionAwareAlertController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end