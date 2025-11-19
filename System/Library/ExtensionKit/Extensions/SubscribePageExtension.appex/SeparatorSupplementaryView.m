@interface SeparatorSupplementaryView
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
@end

@implementation SeparatorSupplementaryView

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = self;
  v5 = sub_10050F9FC(width);
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)layoutSubviews
{
  v3 = sub_100747564();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SeparatorSupplementaryView();
  v20.receiver = self;
  v20.super_class = v7;
  v8 = self;
  [(SeparatorSupplementaryView *)&v20 layoutSubviews];
  v9 = *(&v8->super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension26SeparatorSupplementaryView_lineView);
  v10 = OBJC_IVAR____TtC22SubscribePageExtension26SeparatorSupplementaryView_separator;
  swift_beginAccess();
  (*(v4 + 16))(v6, v8 + v10, v3);
  [(SeparatorSupplementaryView *)v8 bounds];
  sub_1007474F4();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  (*(v4 + 8))(v6, v3);
  [v9 setFrame:{v12, v14, v16, v18}];
}

@end