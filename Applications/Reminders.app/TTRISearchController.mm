@interface TTRISearchController
- (_TtC9RemindersP33_40DF08D19C7958FE077E6BA029A791CA20TTRISearchController)initWithCoder:(id)coder;
- (_TtC9RemindersP33_40DF08D19C7958FE077E6BA029A791CA20TTRISearchController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC9RemindersP33_40DF08D19C7958FE077E6BA029A791CA20TTRISearchController)initWithSearchResultsController:(id)controller;
- (_TtC9RemindersP33_6BFE23A799CB20D2DB7CA4EA96508B8A20TTRISearchController)initWithCoder:(id)coder;
- (_TtC9RemindersP33_6BFE23A799CB20D2DB7CA4EA96508B8A20TTRISearchController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC9RemindersP33_6BFE23A799CB20D2DB7CA4EA96508B8A20TTRISearchController)initWithSearchResultsController:(id)controller;
@end

@implementation TTRISearchController

- (_TtC9RemindersP33_40DF08D19C7958FE077E6BA029A791CA20TTRISearchController)initWithSearchResultsController:(id)controller
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9RemindersP33_40DF08D19C7958FE077E6BA029A791CA20TTRISearchController_ttri_isBeingDismissed) = 0;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(TTRISearchController *)&v7 initWithSearchResultsController:controller];
}

- (_TtC9RemindersP33_6BFE23A799CB20D2DB7CA4EA96508B8A20TTRISearchController)initWithSearchResultsController:(id)controller
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9RemindersP33_6BFE23A799CB20D2DB7CA4EA96508B8A20TTRISearchController_ttri_isBeingDismissed) = 0;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(TTRISearchController *)&v7 initWithSearchResultsController:controller];
}

- (_TtC9RemindersP33_6BFE23A799CB20D2DB7CA4EA96508B8A20TTRISearchController)initWithNibName:(id)name bundle:(id)bundle
{
  ObjectType = swift_getObjectType();
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9RemindersP33_6BFE23A799CB20D2DB7CA4EA96508B8A20TTRISearchController_ttri_isBeingDismissed) = 0;
    bundleCopy = bundle;
    name = String._bridgeToObjectiveC()();
  }

  else
  {
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9RemindersP33_6BFE23A799CB20D2DB7CA4EA96508B8A20TTRISearchController_ttri_isBeingDismissed) = 0;
    bundleCopy2 = bundle;
  }

  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(TTRISearchController *)&v12 initWithNibName:name bundle:bundle];

  return v10;
}

- (_TtC9RemindersP33_6BFE23A799CB20D2DB7CA4EA96508B8A20TTRISearchController)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9RemindersP33_6BFE23A799CB20D2DB7CA4EA96508B8A20TTRISearchController_ttri_isBeingDismissed) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  coderCopy = coder;
  v7 = [(TTRISearchController *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

- (_TtC9RemindersP33_40DF08D19C7958FE077E6BA029A791CA20TTRISearchController)initWithNibName:(id)name bundle:(id)bundle
{
  ObjectType = swift_getObjectType();
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9RemindersP33_40DF08D19C7958FE077E6BA029A791CA20TTRISearchController_ttri_isBeingDismissed) = 0;
    bundleCopy = bundle;
    name = String._bridgeToObjectiveC()();
  }

  else
  {
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9RemindersP33_40DF08D19C7958FE077E6BA029A791CA20TTRISearchController_ttri_isBeingDismissed) = 0;
    bundleCopy2 = bundle;
  }

  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(TTRISearchController *)&v12 initWithNibName:name bundle:bundle];

  return v10;
}

- (_TtC9RemindersP33_40DF08D19C7958FE077E6BA029A791CA20TTRISearchController)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9RemindersP33_40DF08D19C7958FE077E6BA029A791CA20TTRISearchController_ttri_isBeingDismissed) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  coderCopy = coder;
  v7 = [(TTRISearchController *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

@end