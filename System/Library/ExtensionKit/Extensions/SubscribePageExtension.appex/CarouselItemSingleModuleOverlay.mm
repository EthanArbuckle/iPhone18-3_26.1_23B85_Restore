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
  sub_10023F918(v4);
  sub_10000C888(v4, v4[3]);
  sub_1007477B4();
  traitCollection = [v2 traitCollection];
  sub_100751244();

  sub_10000C620(v4);
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6 = sub_10016D1E8(width, height);
  sub_10023F918(v12);
  v7 = sub_100731FD0(v12, v6, height);
  v9 = v8;

  sub_10000C620(v12);
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
  v9 = sub_100240BE0(eventCopy);

  return v9;
}

- (void)handleSelection:(id)selection
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemSingleModuleOverlay_selectionHandler);
  if (v3)
  {
    selfCopy = self;
    v5 = sub_10001B5AC(v3);
    v3(v5);

    sub_1000164A8(v3);
  }
}

@end