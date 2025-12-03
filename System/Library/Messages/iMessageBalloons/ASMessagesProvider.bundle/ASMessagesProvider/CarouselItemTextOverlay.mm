@interface CarouselItemTextOverlay
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)handleSelection:(id)selection;
- (void)layoutSubviews;
@end

@implementation CarouselItemTextOverlay

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for CarouselItemTextOverlay();
  v2 = v5.receiver;
  [(CarouselItemTextOverlay *)&v5 layoutSubviews];
  sub_605068(v4);
  sub_B170(v4, v4[3]);
  sub_75D650();
  traitCollection = [v2 traitCollection];
  sub_7673E0();

  sub_BEB8(v4);
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  sub_605068(v11);
  v6 = sub_604180(v11, sub_28613C, width, height);
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
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider23CarouselItemTextOverlay_selectionHandler);
  if (v3)
  {
    selfCopy = self;
    v5 = sub_F714(v3);
    v3(v5);

    sub_F704(v3);
  }
}

@end