@interface FMClusteredAnnotationView
- (MKAnnotation)annotation;
- (_TtC6FindMy25FMClusteredAnnotationView)initWithAnnotation:(id)annotation reuseIdentifier:(id)identifier;
- (void)prepareForDisplay;
- (void)setAnnotation:(id)annotation;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation FMClusteredAnnotationView

- (MKAnnotation)annotation
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  annotation = [(FMClusteredAnnotationView *)&v4 annotation];

  return annotation;
}

- (void)setAnnotation:(id)annotation
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10008FDD8(annotation);
}

- (_TtC6FindMy25FMClusteredAnnotationView)initWithAnnotation:(id)annotation reuseIdentifier:(id)identifier
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
  return sub_100090B5C(v7, v4, v6);
}

- (void)prepareForDisplay
{
  selfCopy = self;
  sub_1000914AC();
}

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  changeCopy = change;
  v5 = v7.receiver;
  [(FMClusteredAnnotationView *)&v7 traitCollectionDidChange:changeCopy];

  sub_10008FF20(v6);

  sub_1000912E8();
}

@end