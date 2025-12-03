@interface SearchTransparencyView
- (_TtC8AppStore22SearchTransparencyView)initWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation SearchTransparencyView

- (_TtC8AppStore22SearchTransparencyView)initWithCoder:(id)coder
{
  v4 = type metadata accessor for FontUseCase();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC8AppStore22SearchTransparencyView_linkedLabel;
  if (qword_10096E170 != -1)
  {
    swift_once();
  }

  v9 = sub_1000056A8(v4, qword_1009D13D0);
  (*(v5 + 16))(v7, v9, v4);
  v10 = objc_allocWithZone(type metadata accessor for DynamicTypeLinkedLabel());
  *(&self->super.super.super.super.isa + v8) = sub_1002F5B8C(v7, 0, 0);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = type metadata accessor for SearchTransparencyView();
  v2 = v11.receiver;
  [(SearchTransparencyView *)&v11 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC8AppStore22SearchTransparencyView_linkedLabel];
  LayoutMarginsAware<>.layoutFrame.getter();
  [v3 measurementsWithFitting:v2 in:{v4, v5, v11.receiver, v11.super_class}];
  v7 = v6;
  v9 = v8;
  LayoutMarginsAware<>.layoutFrame.getter();
  v10 = CGRectGetMidX(v12) - v7 * 0.5;
  LayoutMarginsAware<>.layoutFrame.getter();
  [v3 setFrame:{v10, CGRectGetMidY(v13) - v9 * 0.5, v7, v9}];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SearchTransparencyView();
  v2 = v3.receiver;
  [(SearchTransparencyView *)&v3 prepareForReuse];
  sub_1002F62D8();
}

@end