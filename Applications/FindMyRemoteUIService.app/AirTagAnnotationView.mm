@interface AirTagAnnotationView
+ (Class)calloutViewClass;
- (_TtC21FindMyRemoteUIService20AirTagAnnotationView)initWithAnnotation:(id)annotation reuseIdentifier:(id)identifier;
- (_TtC21FindMyRemoteUIService20AirTagAnnotationView)initWithCoder:(id)coder;
- (id)_balloonImage;
@end

@implementation AirTagAnnotationView

+ (Class)calloutViewClass
{
  sub_10003B1B0();

  return swift_getObjCClassFromMetadata();
}

- (_TtC21FindMyRemoteUIService20AirTagAnnotationView)initWithAnnotation:(id)annotation reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    swift_unknownObjectRetain();
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    swift_unknownObjectRetain();
    v6 = 0;
  }

  v9.receiver = self;
  v9.super_class = type metadata accessor for AirTagAnnotationView();
  v7 = [(AirTagAnnotationView *)&v9 initWithAnnotation:annotation reuseIdentifier:v6];

  swift_unknownObjectRelease();
  return v7;
}

- (_TtC21FindMyRemoteUIService20AirTagAnnotationView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for AirTagAnnotationView();
  coderCopy = coder;
  v5 = [(AirTagAnnotationView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

- (id)_balloonImage
{
  selfCopy = self;
  if ([(AirTagAnnotationView *)selfCopy annotation])
  {
    type metadata accessor for AirTagMapAnnotation();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtC21FindMyRemoteUIService19AirTagMapAnnotation_roleEmoji);
      v5 = *(v3 + OBJC_IVAR____TtC21FindMyRemoteUIService19AirTagMapAnnotation_roleEmoji + 8);

      v6 = sub_10003DCB4(v4, v5, 56.0);
      swift_unknownObjectRelease();

      v7 = v6;
      goto LABEL_7;
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v7 = 0;
LABEL_7:

  return v7;
}

@end