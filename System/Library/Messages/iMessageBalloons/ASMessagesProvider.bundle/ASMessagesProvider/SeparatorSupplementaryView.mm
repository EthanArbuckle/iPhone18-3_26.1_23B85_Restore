@interface SeparatorSupplementaryView
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
@end

@implementation SeparatorSupplementaryView

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  selfCopy = self;
  v5 = sub_31D844(width);
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)layoutSubviews
{
  v3 = sub_75D400();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SeparatorSupplementaryView();
  v20.receiver = self;
  v20.super_class = v7;
  selfCopy = self;
  [(SeparatorSupplementaryView *)&v20 layoutSubviews];
  v9 = *(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider26SeparatorSupplementaryView_lineView);
  v10 = OBJC_IVAR____TtC18ASMessagesProvider26SeparatorSupplementaryView_separator;
  swift_beginAccess();
  (*(v4 + 16))(v6, selfCopy + v10, v3);
  [(SeparatorSupplementaryView *)selfCopy bounds];
  sub_75D390();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  (*(v4 + 8))(v6, v3);
  [v9 setFrame:{v12, v14, v16, v18}];
}

@end