@interface UpsellArtworkView
- (void)layoutSubviews;
@end

@implementation UpsellArtworkView

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(UpsellArtworkView *)&v5 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews17UpsellArtworkView_shadowView];
  if (v3)
  {
    v4 = v3;
    [v2 bounds];
    [v4 setFrame:?];
  }
}

@end