@interface B389AnnotationView
+ (Class)calloutViewClass;
- (_TtC18SharingViewServiceP33_A90FF226C003DA47E3B07A4439E9D09718B389AnnotationView)initWithAnnotation:(id)annotation reuseIdentifier:(id)identifier;
- (_TtC18SharingViewServiceP33_A90FF226C003DA47E3B07A4439E9D09718B389AnnotationView)initWithCoder:(id)coder;
- (id)_balloonImage;
@end

@implementation B389AnnotationView

+ (Class)calloutViewClass
{
  sub_1000122EC(0, &qword_1001BD8E8);

  return swift_getObjCClassFromMetadata();
}

- (_TtC18SharingViewServiceP33_A90FF226C003DA47E3B07A4439E9D09718B389AnnotationView)initWithAnnotation:(id)annotation reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *&self->_MKPuckAnnotationView_opaque[OBJC_IVAR____TtC18SharingViewServiceP33_A90FF226C003DA47E3B07A4439E9D09718B389AnnotationView_calloutInnerDiameter] = 0x404C000000000000;
    swift_unknownObjectRetain();
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    *&self->_MKPuckAnnotationView_opaque[OBJC_IVAR____TtC18SharingViewServiceP33_A90FF226C003DA47E3B07A4439E9D09718B389AnnotationView_calloutInnerDiameter] = 0x404C000000000000;
    swift_unknownObjectRetain();
    v6 = 0;
  }

  v9.receiver = self;
  v9.super_class = type metadata accessor for B389AnnotationView();
  v7 = [(B389AnnotationView *)&v9 initWithAnnotation:annotation reuseIdentifier:v6];

  swift_unknownObjectRelease();
  return v7;
}

- (_TtC18SharingViewServiceP33_A90FF226C003DA47E3B07A4439E9D09718B389AnnotationView)initWithCoder:(id)coder
{
  *&self->_MKPuckAnnotationView_opaque[OBJC_IVAR____TtC18SharingViewServiceP33_A90FF226C003DA47E3B07A4439E9D09718B389AnnotationView_calloutInnerDiameter] = 0x404C000000000000;
  v7.receiver = self;
  v7.super_class = type metadata accessor for B389AnnotationView();
  coderCopy = coder;
  v5 = [(B389AnnotationView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

- (id)_balloonImage
{
  selfCopy = self;
  if ([(B389AnnotationView *)selfCopy annotation])
  {
    type metadata accessor for B389MapAnnotation();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtC18SharingViewService17B389MapAnnotation_roleEmoji);
      v5 = *(v3 + OBJC_IVAR____TtC18SharingViewService17B389MapAnnotation_roleEmoji + 8);

      v6 = sub_1000E94A4(v4, v5, 56.0);
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