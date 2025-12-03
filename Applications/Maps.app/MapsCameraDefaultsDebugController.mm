@interface MapsCameraDefaultsDebugController
+ (id)navigationDestinationTitle;
- (_TtC4Maps33MapsCameraDefaultsDebugController)initWithCoder:(id)coder;
- (_TtC4Maps33MapsCameraDefaultsDebugController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC4Maps33MapsCameraDefaultsDebugController)initWithStyle:(int64_t)style;
- (void)prepareContent;
@end

@implementation MapsCameraDefaultsDebugController

+ (id)navigationDestinationTitle
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)prepareContent
{
  selfCopy = self;
  sub_10037E8C8();
}

- (_TtC4Maps33MapsCameraDefaultsDebugController)initWithStyle:(int64_t)style
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  return [(MapsCameraDefaultsDebugController *)&v5 initWithStyle:style];
}

- (_TtC4Maps33MapsCameraDefaultsDebugController)initWithNibName:(id)name bundle:(id)bundle
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
  v10 = [(MapsCameraDefaultsDebugController *)&v12 initWithNibName:name bundle:bundle];

  return v10;
}

- (_TtC4Maps33MapsCameraDefaultsDebugController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(MapsCameraDefaultsDebugController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end