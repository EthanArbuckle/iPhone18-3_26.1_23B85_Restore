@interface CheckoutContainerView
- (_TtC11AssetViewer21CheckoutContainerView)initWithFrame:(CGRect)frame;
- (void)contentSizeCategoryDidChangeWithNotification:(id)notification;
- (void)layoutSubviews;
@end

@implementation CheckoutContainerView

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CheckoutContainerView();
  v2 = v3.receiver;
  [(CheckoutContainerView *)&v3 layoutSubviews];
  sub_24134123C();
}

- (void)contentSizeCategoryDidChangeWithNotification:(id)notification
{
  v4 = sub_24135125C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24135123C();
  v8 = *(&self->super.super.super.isa + OBJC_IVAR____TtC11AssetViewer21CheckoutContainerView_traitManager);
  v9 = objc_opt_self();
  selfCopy = self;
  currentTraitCollection = [v9 currentTraitCollection];
  preferredContentSizeCategory = [currentTraitCollection preferredContentSizeCategory];

  v13 = *(v8 + 24);
  *(v8 + 24) = preferredContentSizeCategory;

  sub_24134123C();
  (*(v5 + 8))(v7, v4);
}

- (_TtC11AssetViewer21CheckoutContainerView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end