@interface InsetCollectionViewControllerContentView
- (_TtC22SubscribePageExtensionP33_D5EB93F8F29FA420E99B1898AD0B2EE640InsetCollectionViewControllerContentView)initWithCoder:(id)coder;
- (_TtC22SubscribePageExtensionP33_D5EB93F8F29FA420E99B1898AD0B2EE640InsetCollectionViewControllerContentView)initWithFrame:(CGRect)frame;
- (unint64_t)edgesInsettingLayoutMarginsFromSafeArea;
- (void)setEdgesInsettingLayoutMarginsFromSafeArea:(unint64_t)area;
@end

@implementation InsetCollectionViewControllerContentView

- (unint64_t)edgesInsettingLayoutMarginsFromSafeArea
{
  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtensionP33_D5EB93F8F29FA420E99B1898AD0B2EE640InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset) != 1)
  {
    return 14;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  return [(InsetCollectionViewControllerContentView *)&v5 edgesInsettingLayoutMarginsFromSafeArea];
}

- (void)setEdgesInsettingLayoutMarginsFromSafeArea:(unint64_t)area
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  [(InsetCollectionViewControllerContentView *)&v4 setEdgesInsettingLayoutMarginsFromSafeArea:area];
}

- (_TtC22SubscribePageExtensionP33_D5EB93F8F29FA420E99B1898AD0B2EE640InsetCollectionViewControllerContentView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtensionP33_D5EB93F8F29FA420E99B1898AD0B2EE640InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset) = 1;
  v10.receiver = self;
  v10.super_class = ObjectType;
  return [(InsetCollectionViewControllerContentView *)&v10 initWithFrame:x, y, width, height];
}

- (_TtC22SubscribePageExtensionP33_D5EB93F8F29FA420E99B1898AD0B2EE640InsetCollectionViewControllerContentView)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtensionP33_D5EB93F8F29FA420E99B1898AD0B2EE640InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset) = 1;
  v9.receiver = self;
  v9.super_class = ObjectType;
  coderCopy = coder;
  v7 = [(InsetCollectionViewControllerContentView *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

@end