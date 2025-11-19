@interface AppPromotionFormattedDateView
- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4;
- (UIColor)backgroundColor;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation AppPromotionFormattedDateView

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = self;
  sub_1002C17B4();
  v5.receiver = v4;
  v5.super_class = ObjectType;
  [(AppPromotionFormattedDateView *)&v5 dealloc];
}

- (UIColor)backgroundColor
{
  v3 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_backgroundView;
  swift_beginAccess();
  v4 = *(&self->super.super.super.isa + v3);
  if (v4)
  {
    v4 = [v4 backgroundColor];
  }

  return v4;
}

- (void)setBackgroundColor:(id)a3
{
  v5 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_backgroundView;
  swift_beginAccess();
  v6 = *(&self->super.super.super.isa + v5);
  if (v6)
  {
    [v6 setBackgroundColor:a3];
  }
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1002C5920();
}

- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  v6 = self;
  v7 = sub_1002C915C(a4);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  swift_unknownObjectRelease();

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.var3 = v17;
  result.var2 = v16;
  result.var1 = v15;
  result.var0 = v14;
  return result;
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(AppPromotionFormattedDateView *)&v3 _dynamicUserInterfaceTraitDidChange];
  sub_1002C4AC4();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1002C6F08(a3);
}

@end