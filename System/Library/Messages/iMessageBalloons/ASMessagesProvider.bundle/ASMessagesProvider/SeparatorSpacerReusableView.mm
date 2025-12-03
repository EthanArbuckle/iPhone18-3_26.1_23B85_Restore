@interface SeparatorSpacerReusableView
- (_TtC18ASMessagesProvider27SeparatorSpacerReusableView)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation SeparatorSpacerReusableView

- (_TtC18ASMessagesProvider27SeparatorSpacerReusableView)initWithCoder:(id)coder
{
  v3 = (self + OBJC_IVAR____TtC18ASMessagesProvider27SeparatorSpacerReusableView_separatorInsets);
  v4 = *&UIEdgeInsetsZero.bottom;
  *v3 = *&UIEdgeInsetsZero.top;
  v3[1] = v4;
  v5 = OBJC_IVAR____TtC18ASMessagesProvider27SeparatorSpacerReusableView_lineView;
  *(&self->super.super.super.super.isa + v5) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_65B9A0();
}

@end