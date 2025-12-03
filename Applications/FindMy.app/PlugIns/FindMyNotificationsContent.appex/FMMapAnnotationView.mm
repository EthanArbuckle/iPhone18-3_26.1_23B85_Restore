@interface FMMapAnnotationView
- (BOOL)shouldShowCallout;
- (_TtC26FindMyNotificationsContent19FMMapAnnotationView)initWithAnnotation:(id)annotation reuseIdentifier:(id)identifier;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_updateFromMap;
- (void)prepareForDisplay;
- (void)prepareForReuse;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation FMMapAnnotationView

- (_TtC26FindMyNotificationsContent19FMMapAnnotationView)initWithAnnotation:(id)annotation reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = swift_unknownObjectRetain();
  return sub_1000093BC(v7, v4, v6);
}

- (void)prepareForDisplay
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for FMMapAnnotationView();
  v2 = v4.receiver;
  [(FMMapAnnotationView *)&v4 prepareForDisplay];
  if (![v2 annotation])
  {
    goto LABEL_4;
  }

  type metadata accessor for FMAnnotation();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    sub_10000A00C(v3);
    swift_unknownObjectRelease();
LABEL_4:

    return;
  }

  swift_unknownObjectRelease();
}

- (void)_updateFromMap
{
  selfCopy = self;
  sub_10000A5C0();
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  selfCopy = self;
  sub_10000ABA0(selected, animated);
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v10 = sub_10000B270(event, x, y);

  return v10;
}

- (void)traitCollectionDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for FMMapAnnotationView();
  changeCopy = change;
  v5 = v6.receiver;
  [(FMMapAnnotationView *)&v6 traitCollectionDidChange:changeCopy];
  sub_10000B460();
}

- (BOOL)shouldShowCallout
{
  selfCopy = self;
  if ([(FMMapAnnotationView *)selfCopy isSelected])
  {
    v3 = *(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_shouldHideCallout);

    v4 = v3 ^ 1;
  }

  else
  {

    v4 = 0;
  }

  return v4 & 1;
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_10000B81C();
}

@end