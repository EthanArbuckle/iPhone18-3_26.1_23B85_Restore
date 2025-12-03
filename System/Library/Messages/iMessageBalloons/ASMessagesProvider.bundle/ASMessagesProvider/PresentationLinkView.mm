@interface PresentationLinkView
- (_TtC18ASMessagesProvider20PresentationLinkView)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation PresentationLinkView

- (_TtC18ASMessagesProvider20PresentationLinkView)initWithCoder:(id)coder
{
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  swift_getObjectType();
  v3 = OBJC_IVAR____TtC18ASMessagesProvider20PresentationLinkView_linkView;
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider20PresentationLinkView_linkView);
  selfCopy = self;
  sub_75D650();
  [v4 sizeThatFits:{v5, v6}];
  v8 = v7;
  v9 = *(&self->super.super.super.isa + v3);
  sub_75D650();
  v11 = v10;
  v13 = v12;
  sub_75D650();
  [v9 setFrame:{v11, v13, CGRectGetWidth(v16), v8}];
}

@end