@interface CarouselItemMaterialTextOverlay
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)handleSelection:(id)selection;
- (void)layoutSubviews;
@end

@implementation CarouselItemMaterialTextOverlay

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for CarouselItemMaterialTextOverlay();
  v2 = v6.receiver;
  [(CarouselItemMaterialTextOverlay *)&v6 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_materialBackground];
  sub_75D650();
  [v3 setFrame:?];
  sub_57B43C(0, v5);
  sub_B170(v5, v5[3]);
  sub_75D650();
  traitCollection = [v2 traitCollection];
  sub_7673E0();

  sub_BEB8(v5);
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  sub_57B43C(1, v11);
  v6 = sub_604168(v11, width, height);
  v8 = v7;

  sub_BEB8(v11);
  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)handleSelection:(id)selection
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_selectionHandler);
  if (v3)
  {
    selfCopy = self;
    v5 = sub_F714(v3);
    v3(v5);

    sub_F704(v3);
  }
}

@end