@interface AccessibilityStateObserver
+ (_TtC7Measure26AccessibilityStateObserver)shared;
+ (void)setShared:(id)a3;
- (NSArray)orderedWorldLineIDs;
- (NSDictionary)worldLines;
- (NSDictionary)worldPoints;
- (NSDictionary)worldRectangles;
- (_TtC7Measure26AccessibilityStateObserver)init;
- (int64_t)snapWorldPointType;
@end

@implementation AccessibilityStateObserver

+ (_TtC7Measure26AccessibilityStateObserver)shared
{
  if (qword_1004A04F8 != -1)
  {
    swift_once();
  }

  v3 = qword_1004D5060;

  return v3;
}

+ (void)setShared:(id)a3
{
  v3 = qword_1004A04F8;
  v4 = a3;
  if (v3 != -1)
  {
    v6 = v4;
    swift_once();
    v4 = v6;
  }

  v5 = qword_1004D5060;
  qword_1004D5060 = v4;

  _objc_release_x1(v4, v5);
}

- (_TtC7Measure26AccessibilityStateObserver)init
{
  v3 = OBJC_IVAR____TtC7Measure26AccessibilityStateObserver_implementation;
  type metadata accessor for AccessibilityStateObserverBridge();
  swift_allocObject();
  *(&self->super.isa + v3) = sub_10019C360();
  v6.receiver = self;
  v6.super_class = type metadata accessor for AccessibilityStateObserver();
  v4 = [(AccessibilityStateObserver *)&v6 init];
  (*(&v4->super.isa + OBJC_IVAR____TtC7Measure26AccessibilityStateObserver_implementation))[9] = &off_100471AB0;
  swift_unknownObjectWeakAssign();
  return v4;
}

- (int64_t)snapWorldPointType
{
  v2 = self;
  v3 = sub_10019CB80();

  return v3;
}

- (NSDictionary)worldLines
{
  if (qword_1004A0180 != -1)
  {
    self = swift_once();
  }

  if (qword_1004D4AD8)
  {
    swift_beginAccess();
    type metadata accessor for WorldLine();

    v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    return v2.super.isa;
  }

  else
  {
    __break(1u);
  }

  return self;
}

- (NSDictionary)worldPoints
{
  if (qword_1004A0180 != -1)
  {
    self = swift_once();
  }

  if (qword_1004D4AD8)
  {
    swift_beginAccess();
    type metadata accessor for WorldPoint();

    v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    return v2.super.isa;
  }

  else
  {
    __break(1u);
  }

  return self;
}

- (NSDictionary)worldRectangles
{
  v2 = self;
  sub_10019D2D4();

  type metadata accessor for WorldRectangle();
  v3.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (NSArray)orderedWorldLineIDs
{
  if (qword_1004A0180 != -1)
  {
    self = swift_once();
  }

  if (qword_1004D4AD8)
  {
    swift_beginAccess();

    v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

    return v2.super.isa;
  }

  else
  {
    __break(1u);
  }

  return self;
}

@end