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
  sub_1000C8E14();
  v5.receiver = v4;
  v5.super_class = ObjectType;
  [(AppPromotionFormattedDateView *)&v5 dealloc];
}

- (UIColor)backgroundColor
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_backgroundView;
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
  v5 = OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_backgroundView;
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
  sub_1000CAFC0();
}

- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4
{
  swift_unknownObjectRetain();
  v6 = self;
  sub_1000CBC6C(v19);
  swift_getObjectType();
  sub_100536D74(a4, v19);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  swift_unknownObjectRelease();

  sub_1000CD59C(v19);
  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.var3 = v18;
  result.var2 = v17;
  result.var1 = v16;
  result.var0 = v15;
  return result;
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(AppPromotionFormattedDateView *)&v3 _dynamicUserInterfaceTraitDidChange];
  sub_1000CA164();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1000CC5BC(a3);
}

@end