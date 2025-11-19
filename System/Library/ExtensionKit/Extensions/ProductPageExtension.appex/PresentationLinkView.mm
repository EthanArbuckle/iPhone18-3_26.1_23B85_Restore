@interface PresentationLinkView
- (_TtC20ProductPageExtension20PresentationLinkView)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation PresentationLinkView

- (_TtC20ProductPageExtension20PresentationLinkView)initWithCoder:(id)a3
{
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  swift_getObjectType();
  v3 = OBJC_IVAR____TtC20ProductPageExtension20PresentationLinkView_linkView;
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension20PresentationLinkView_linkView);
  v14 = self;
  sub_10076422C();
  [v4 sizeThatFits:{v5, v6}];
  v8 = v7;
  v9 = *(&self->super.super.super.isa + v3);
  sub_10076422C();
  v11 = v10;
  v13 = v12;
  sub_10076422C();
  [v9 setFrame:{v11, v13, CGRectGetWidth(v16), v8}];
}

@end