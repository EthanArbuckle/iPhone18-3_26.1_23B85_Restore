@interface MapsDesignDebugController
+ (id)navigationDestinationTitle;
- (_TtC4Maps25MapsDesignDebugController)initWithCoder:(id)a3;
- (_TtC4Maps25MapsDesignDebugController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC4Maps25MapsDesignDebugController)initWithStyle:(int64_t)a3;
- (void)prepareContent;
@end

@implementation MapsDesignDebugController

+ (id)navigationDestinationTitle
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)prepareContent
{
  v2 = self;
  sub_10032FD74();
}

- (_TtC4Maps25MapsDesignDebugController)initWithStyle:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  return [(MapsDesignDebugController *)&v5 initWithStyle:a3];
}

- (_TtC4Maps25MapsDesignDebugController)initWithNibName:(id)a3 bundle:(id)a4
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = a4;
    a3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = a4;
  }

  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(MapsDesignDebugController *)&v12 initWithNibName:a3 bundle:a4];

  return v10;
}

- (_TtC4Maps25MapsDesignDebugController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(MapsDesignDebugController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end