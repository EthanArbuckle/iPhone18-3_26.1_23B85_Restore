@interface CarouselItemCollectionLockupOverlay
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)handleSelection:(id)selection;
- (void)layoutSubviews;
@end

@implementation CarouselItemCollectionLockupOverlay

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for CarouselItemCollectionLockupOverlay(0);
  v2 = v6.receiver;
  [(CarouselItemCollectionLockupOverlay *)&v6 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_materialBackground];
  LayoutMarginsAware<>.layoutFrame.getter();
  [v3 setFrame:?];
  sub_1005412E8(0, v5);
  sub_10002A400(v5, v5[3]);
  LayoutMarginsAware<>.layoutFrame.getter();
  traitCollection = [v2 traitCollection];
  dispatch thunk of Placeable.place(at:with:)();

  sub_100007000(v5);
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  sub_1005412E8(1, v11);
  v6 = sub_10067A3C8(v11, width, height);
  v8 = v7;

  sub_100007000(v11);
  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)handleSelection:(id)selection
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_selectionHandler);
  if (v3)
  {
    selfCopy = self;
    v5 = sub_10000827C(v3);
    v3(v5);

    sub_10001F63C(v3);
  }
}

@end