@interface SearchTransparencyView
- (_TtC22SubscribePageExtension22SearchTransparencyView)initWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation SearchTransparencyView

- (_TtC22SubscribePageExtension22SearchTransparencyView)initWithCoder:(id)a3
{
  v4 = sub_100750534();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC22SubscribePageExtension22SearchTransparencyView_linkedLabel;
  if (qword_100921340 != -1)
  {
    swift_once();
  }

  v9 = sub_10000D0FC(v4, qword_1009816F8);
  (*(v5 + 16))(v7, v9, v4);
  v10 = objc_allocWithZone(type metadata accessor for DynamicTypeLinkedLabel());
  *(&self->super.super.super.super.isa + v8) = sub_10004DA8C(v7, 0, 0);
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = type metadata accessor for SearchTransparencyView();
  v2 = v11.receiver;
  [(SearchTransparencyView *)&v11 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension22SearchTransparencyView_linkedLabel];
  sub_1007477B4();
  [v3 measurementsWithFitting:v2 in:{v4, v5, v11.receiver, v11.super_class}];
  v7 = v6;
  v9 = v8;
  sub_1007477B4();
  v10 = CGRectGetMidX(v12) - v7 * 0.5;
  sub_1007477B4();
  [v3 setFrame:{v10, CGRectGetMidY(v13) - v9 * 0.5, v7, v9}];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SearchTransparencyView();
  v2 = v3.receiver;
  [(SearchTransparencyView *)&v3 prepareForReuse];
  sub_10004E1D8();
}

@end