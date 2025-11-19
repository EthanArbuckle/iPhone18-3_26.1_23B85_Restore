@interface SearchTransparencyView
- (_TtC18ASMessagesProvider22SearchTransparencyView)initWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation SearchTransparencyView

- (_TtC18ASMessagesProvider22SearchTransparencyView)initWithCoder:(id)a3
{
  v4 = sub_7666D0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC18ASMessagesProvider22SearchTransparencyView_linkedLabel;
  if (qword_93D960 != -1)
  {
    swift_once();
  }

  v9 = sub_BE38(v4, qword_99F418);
  (*(v5 + 16))(v7, v9, v4);
  v10 = objc_allocWithZone(type metadata accessor for DynamicTypeLinkedLabel());
  *(&self->super.super.super.super.isa + v8) = sub_4ECF40(v7, 0, 0);
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = type metadata accessor for SearchTransparencyView();
  v2 = v11.receiver;
  [(SearchTransparencyView *)&v11 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider22SearchTransparencyView_linkedLabel];
  sub_75D650();
  [v3 measurementsWithFitting:v2 in:{v4, v5, v11.receiver, v11.super_class}];
  v7 = v6;
  v9 = v8;
  sub_75D650();
  v10 = CGRectGetMidX(v12) - v7 * 0.5;
  sub_75D650();
  [v3 setFrame:{v10, CGRectGetMidY(v13) - v9 * 0.5, v7, v9}];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SearchTransparencyView();
  v2 = v3.receiver;
  [(SearchTransparencyView *)&v3 prepareForReuse];
  sub_4ED68C();
}

@end