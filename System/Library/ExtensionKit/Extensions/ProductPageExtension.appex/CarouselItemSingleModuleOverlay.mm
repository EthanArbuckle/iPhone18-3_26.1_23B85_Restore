@interface CarouselItemSingleModuleOverlay
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveEvent:(id)event;
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)handleSelection:(id)selection;
- (void)layoutSubviews;
@end

@implementation CarouselItemSingleModuleOverlay

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(CarouselItemSingleModuleOverlay *)&v5 layoutSubviews];
  sub_100725E4C(v4);
  sub_10000CF78(v4, v4[3]);
  sub_10076422C();
  traitCollection = [v2 traitCollection];
  sub_10076E0EC();

  sub_10000CD74(v4);
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6 = sub_10010F998(width, height);
  sub_100725E4C(v12);
  v7 = sub_1007255F0(v12, sub_10010F998, v6, height);
  v9 = v8;

  sub_10000CD74(v12);
  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveEvent:(id)event
{
  recognizerCopy = recognizer;
  eventCopy = event;
  selfCopy = self;
  v9 = sub_100727128(eventCopy);

  return v9;
}

- (void)handleSelection:(id)selection
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension31CarouselItemSingleModuleOverlay_selectionHandler);
  if (v3)
  {
    selfCopy = self;
    v5 = sub_10001CE50(v3);
    v3(v5);

    sub_1000167E0(v3);
  }
}

@end