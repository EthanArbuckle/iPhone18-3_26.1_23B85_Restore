@interface UpsellGridView
- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4;
- (_TtC22SubscribePageExtension14UpsellGridView)initWithFrame:(CGRect)a3;
- (id)impressionItems;
- (void)layoutSubviews;
@end

@implementation UpsellGridView

- (void)layoutSubviews
{
  v2 = self;
  sub_1004567E8();
}

- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4
{
  swift_unknownObjectRetain();
  v5 = self;
  v6 = sub_100457910();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  swift_unknownObjectRelease();

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.var3 = v16;
  result.var2 = v15;
  result.var1 = v14;
  result.var0 = v13;
  return result;
}

- (id)impressionItems
{
  sub_100458694();

  v2.super.isa = sub_100753294().super.isa;

  return v2.super.isa;
}

- (_TtC22SubscribePageExtension14UpsellGridView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end