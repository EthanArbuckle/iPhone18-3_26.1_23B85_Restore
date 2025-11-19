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
  v3 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_materialBackground];
  sub_1007477B4();
  [v3 setFrame:?];
  sub_10052EA80(0, v5);
  sub_10000C888(v5, v5[3]);
  sub_1007477B4();
  v4 = [v2 traitCollection];
  sub_100751244();

  sub_10000C620(v5);
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  sub_10052EA80(1, v11);
  v6 = sub_100731FD0(v11, width, height);
  v8 = v7;

  sub_10000C620(v11);
  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)handleSelection:(id)a3
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_selectionHandler);
  if (v3)
  {
    v4 = self;
    v5 = sub_10001B5AC(v3);
    v3(v5);

    sub_1000164A8(v3);
  }
}

@end