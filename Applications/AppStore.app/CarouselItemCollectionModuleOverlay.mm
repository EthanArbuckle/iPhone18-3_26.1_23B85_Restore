@interface CarouselItemCollectionModuleOverlay
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)handleSelection:(id)a3;
- (void)layoutSubviews;
@end

@implementation CarouselItemCollectionModuleOverlay

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(CarouselItemCollectionModuleOverlay *)&v5 layoutSubviews];
  sub_10067ABD4(v4);
  sub_10002A400(v4, v4[3]);
  LayoutMarginsAware<>.layoutFrame.getter();
  v3 = [v2 traitCollection];
  dispatch thunk of Placeable.place(at:with:)();

  sub_100007000(v4);
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  v6 = sub_100270A74(width, height);
  sub_10067ABD4(v12);
  v7 = sub_10067A3E0(v12, sub_100270A74, v6, height);
  v9 = v8;

  sub_100007000(v12);
  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)handleSelection:(id)a3
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore35CarouselItemCollectionModuleOverlay_selectionHandler);
  if (v3)
  {
    v4 = self;
    v5 = sub_10000827C(v3);
    v3(v5);

    sub_10001F63C(v3);
  }
}

@end