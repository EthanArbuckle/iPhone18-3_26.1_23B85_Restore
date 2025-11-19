@interface ShelfFooterView
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)didTapWithTitleButton:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation ShelfFooterView

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = self;
  v4 = sub_10059A948();
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_10059AB98();
}

- (void)prepareForReuse
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v2 = v6.receiver;
  [(ShelfFooterView *)&v6 prepareForReuse];
  v3 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension15ShelfFooterView_separator];
  sub_100016C60(0, &qword_100923500);
  v4 = sub_100753DB4();
  [v3 setBackgroundColor:{v4, v6.receiver, v6.super_class}];

  v5 = OBJC_IVAR____TtC22SubscribePageExtension15ShelfFooterView_titleButton;
  [*&v2[OBJC_IVAR____TtC22SubscribePageExtension15ShelfFooterView_titleButton] setHidden:0];
  [*&v2[v5] setTitle:0 forState:0];
}

- (void)didTapWithTitleButton:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10059AEF4(v4);
}

@end