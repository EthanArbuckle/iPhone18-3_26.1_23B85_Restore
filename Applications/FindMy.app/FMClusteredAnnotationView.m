@interface FMClusteredAnnotationView
- (MKAnnotation)annotation;
- (_TtC6FindMy25FMClusteredAnnotationView)initWithAnnotation:(id)a3 reuseIdentifier:(id)a4;
- (void)prepareForDisplay;
- (void)setAnnotation:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation FMClusteredAnnotationView

- (MKAnnotation)annotation
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = [(FMClusteredAnnotationView *)&v4 annotation];

  return v2;
}

- (void)setAnnotation:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_10008FDD8(a3);
}

- (_TtC6FindMy25FMClusteredAnnotationView)initWithAnnotation:(id)a3 reuseIdentifier:(id)a4
{
  if (a4)
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
  v2 = self;
  sub_1000914AC();
}

- (void)traitCollectionDidChange:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v7.receiver;
  [(FMClusteredAnnotationView *)&v7 traitCollectionDidChange:v4];

  sub_10008FF20(v6);

  sub_1000912E8();
}

@end