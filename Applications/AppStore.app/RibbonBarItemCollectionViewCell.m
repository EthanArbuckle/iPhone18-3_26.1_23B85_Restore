@interface RibbonBarItemCollectionViewCell
- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4;
- (void)handleTap;
- (void)layoutSubviews;
- (void)setAccessibilityTraits:(unint64_t)a3;
- (void)setIsAccessibilityElement:(BOOL)a3;
@end

@implementation RibbonBarItemCollectionViewCell

- (void)layoutSubviews
{
  v2 = self;
  sub_1006E9E20();
}

- (void)setIsAccessibilityElement:(BOOL)a3
{
  v3 = a3;
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  [(RibbonBarItemCollectionViewCell *)&v4 setIsAccessibilityElement:v3];
}

- (void)setAccessibilityTraits:(unint64_t)a3
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  [(RibbonBarItemCollectionViewCell *)&v4 setAccessibilityTraits:a3];
}

- (void)handleTap
{
  v2 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_tapAction);
  if (v2)
  {
    v3 = self;
    v4 = sub_10000827C(v2);
    v2(v4);

    sub_10001F63C(v2);
  }
}

- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4
{
  swift_unknownObjectRetain();
  v6 = self;
  sub_1006EA084(v20);
  sub_10002A400(v20, v20[3]);
  v7 = [a4 traitCollection];
  dispatch thunk of Placeable.measure(toFit:with:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  swift_unknownObjectRelease();
  sub_100007000(v20);
  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.var3 = v19;
  result.var2 = v18;
  result.var1 = v17;
  result.var0 = v16;
  return result;
}

@end