@interface ShelfFooterView
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)didTapWithTitleButton:(id)button;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation ShelfFooterView

- (CGSize)sizeThatFits:(CGSize)fits
{
  selfCopy = self;
  v4 = sub_10050D148();
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10050D398();
}

- (void)prepareForReuse
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v2 = v6.receiver;
  [(ShelfFooterView *)&v6 prepareForReuse];
  v3 = *&v2[OBJC_IVAR____TtC8AppStore15ShelfFooterView_separator];
  sub_100005744(0, &qword_100970180);
  v4 = static UIColor.defaultLine.getter();
  [v3 setBackgroundColor:{v4, v6.receiver, v6.super_class}];

  v5 = OBJC_IVAR____TtC8AppStore15ShelfFooterView_titleButton;
  [*&v2[OBJC_IVAR____TtC8AppStore15ShelfFooterView_titleButton] setHidden:0];
  [*&v2[v5] setTitle:0 forState:0];
}

- (void)didTapWithTitleButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  sub_10050D6F4(buttonCopy);
}

@end