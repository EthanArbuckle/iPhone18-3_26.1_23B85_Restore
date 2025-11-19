@interface CarouselItemMaterialTextOverlay
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)handleSelection:(id)a3;
- (void)layoutSubviews;
@end

@implementation CarouselItemMaterialTextOverlay

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for CarouselItemMaterialTextOverlay();
  v2 = v6.receiver;
  [(CarouselItemMaterialTextOverlay *)&v6 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC8AppStore31CarouselItemMaterialTextOverlay_materialBackground];
  LayoutMarginsAware<>.layoutFrame.getter();
  [v3 setFrame:?];
  sub_1002532F8(0, v5);
  sub_10002A400(v5, v5[3]);
  LayoutMarginsAware<>.layoutFrame.getter();
  v4 = [v2 traitCollection];
  dispatch thunk of Placeable.place(at:with:)();

  sub_100007000(v5);
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  sub_1002532F8(1, v11);
  v6 = sub_10067A3C8(v11, width, height);
  v8 = v7;

  sub_100007000(v11);
  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)handleSelection:(id)a3
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore31CarouselItemMaterialTextOverlay_selectionHandler);
  if (v3)
  {
    v4 = self;
    v5 = sub_10000827C(v3);
    v3(v5);

    sub_10001F63C(v3);
  }
}

@end