@interface FMMapAnnotationView
- (BOOL)shouldShowCallout;
- (_TtC6FindMy19FMMapAnnotationView)initWithAnnotation:(id)a3 reuseIdentifier:(id)a4;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_updateFromMap;
- (void)prepareForDisplay;
- (void)prepareForReuse;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation FMMapAnnotationView

- (_TtC6FindMy19FMMapAnnotationView)initWithAnnotation:(id)a3 reuseIdentifier:(id)a4
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
  return sub_1002DD734(v7, v4, v6);
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
    sub_1002DC850(v3);
    swift_unknownObjectRelease();
LABEL_4:

    return;
  }

  swift_unknownObjectRelease();
}

- (void)_updateFromMap
{
  v2 = self;
  sub_1002DDAF8();
}

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4
{
  v6 = self;
  sub_1002DE0D8(a3, a4);
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v10 = sub_1002DE7A8(a4, x, y);

  return v10;
}

- (void)traitCollectionDidChange:(id)a3
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for FMMapAnnotationView();
  v4 = a3;
  v5 = v6.receiver;
  [(FMMapAnnotationView *)&v6 traitCollectionDidChange:v4];
  sub_1002DCDC8();
}

- (BOOL)shouldShowCallout
{
  v2 = self;
  if ([(FMMapAnnotationView *)v2 isSelected])
  {
    v3 = *(&v2->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_shouldHideCallout);

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
  v2 = self;
  sub_1002DEA60();
}

@end