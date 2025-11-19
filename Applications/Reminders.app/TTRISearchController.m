@interface TTRISearchController
- (_TtC9RemindersP33_40DF08D19C7958FE077E6BA029A791CA20TTRISearchController)initWithCoder:(id)a3;
- (_TtC9RemindersP33_40DF08D19C7958FE077E6BA029A791CA20TTRISearchController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC9RemindersP33_40DF08D19C7958FE077E6BA029A791CA20TTRISearchController)initWithSearchResultsController:(id)a3;
- (_TtC9RemindersP33_6BFE23A799CB20D2DB7CA4EA96508B8A20TTRISearchController)initWithCoder:(id)a3;
- (_TtC9RemindersP33_6BFE23A799CB20D2DB7CA4EA96508B8A20TTRISearchController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC9RemindersP33_6BFE23A799CB20D2DB7CA4EA96508B8A20TTRISearchController)initWithSearchResultsController:(id)a3;
@end

@implementation TTRISearchController

- (_TtC9RemindersP33_40DF08D19C7958FE077E6BA029A791CA20TTRISearchController)initWithSearchResultsController:(id)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9RemindersP33_40DF08D19C7958FE077E6BA029A791CA20TTRISearchController_ttri_isBeingDismissed) = 0;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(TTRISearchController *)&v7 initWithSearchResultsController:a3];
}

- (_TtC9RemindersP33_6BFE23A799CB20D2DB7CA4EA96508B8A20TTRISearchController)initWithSearchResultsController:(id)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9RemindersP33_6BFE23A799CB20D2DB7CA4EA96508B8A20TTRISearchController_ttri_isBeingDismissed) = 0;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(TTRISearchController *)&v7 initWithSearchResultsController:a3];
}

- (_TtC9RemindersP33_6BFE23A799CB20D2DB7CA4EA96508B8A20TTRISearchController)initWithNibName:(id)a3 bundle:(id)a4
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9RemindersP33_6BFE23A799CB20D2DB7CA4EA96508B8A20TTRISearchController_ttri_isBeingDismissed) = 0;
    v8 = a4;
    a3 = String._bridgeToObjectiveC()();
  }

  else
  {
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9RemindersP33_6BFE23A799CB20D2DB7CA4EA96508B8A20TTRISearchController_ttri_isBeingDismissed) = 0;
    v9 = a4;
  }

  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(TTRISearchController *)&v12 initWithNibName:a3 bundle:a4];

  return v10;
}

- (_TtC9RemindersP33_6BFE23A799CB20D2DB7CA4EA96508B8A20TTRISearchController)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9RemindersP33_6BFE23A799CB20D2DB7CA4EA96508B8A20TTRISearchController_ttri_isBeingDismissed) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  v6 = a3;
  v7 = [(TTRISearchController *)&v9 initWithCoder:v6];

  if (v7)
  {
  }

  return v7;
}

- (_TtC9RemindersP33_40DF08D19C7958FE077E6BA029A791CA20TTRISearchController)initWithNibName:(id)a3 bundle:(id)a4
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9RemindersP33_40DF08D19C7958FE077E6BA029A791CA20TTRISearchController_ttri_isBeingDismissed) = 0;
    v8 = a4;
    a3 = String._bridgeToObjectiveC()();
  }

  else
  {
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9RemindersP33_40DF08D19C7958FE077E6BA029A791CA20TTRISearchController_ttri_isBeingDismissed) = 0;
    v9 = a4;
  }

  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(TTRISearchController *)&v12 initWithNibName:a3 bundle:a4];

  return v10;
}

- (_TtC9RemindersP33_40DF08D19C7958FE077E6BA029A791CA20TTRISearchController)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9RemindersP33_40DF08D19C7958FE077E6BA029A791CA20TTRISearchController_ttri_isBeingDismissed) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  v6 = a3;
  v7 = [(TTRISearchController *)&v9 initWithCoder:v6];

  if (v7)
  {
  }

  return v7;
}

@end