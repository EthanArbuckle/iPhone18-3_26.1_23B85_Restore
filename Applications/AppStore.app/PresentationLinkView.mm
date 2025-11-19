@interface PresentationLinkView
- (_TtC8AppStore20PresentationLinkView)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation PresentationLinkView

- (_TtC8AppStore20PresentationLinkView)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  swift_getObjectType();
  v3 = OBJC_IVAR____TtC8AppStore20PresentationLinkView_linkView;
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore20PresentationLinkView_linkView);
  v14 = self;
  LayoutMarginsAware<>.layoutFrame.getter();
  [v4 sizeThatFits:{v5, v6}];
  v8 = v7;
  v9 = *(&self->super.super.super.isa + v3);
  LayoutMarginsAware<>.layoutFrame.getter();
  v11 = v10;
  v13 = v12;
  LayoutMarginsAware<>.layoutFrame.getter();
  [v9 setFrame:{v11, v13, CGRectGetWidth(v16), v8}];
}

@end