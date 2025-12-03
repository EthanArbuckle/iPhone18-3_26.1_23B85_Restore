@interface HeaderFooterView
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (CGSize)sizeThatFits:(CGSize)fits;
- (id)preferredLayoutAttributesFittingAttributes:(id)attributes;
- (void)layoutSubviews;
@end

@implementation HeaderFooterView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_402218();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [*(&self->super.super.super.super.isa + OBJC_IVAR____TtC16MusicApplicationP33_7919D88BB8212442612DA538E61A458116HeaderFooterView_textView) sizeThatFits:{fits.width, fits.height}];
  result.height = v4;
  result.width = v3;
  return result;
}

- (id)preferredLayoutAttributesFittingAttributes:(id)attributes
{
  attributesCopy = attributes;
  selfCopy = self;
  v6 = sub_403830(attributesCopy);

  return v6;
}

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction
{
  length = range.length;
  location = range.location;
  v11 = sub_AB31C0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3150();
  viewCopy = view;
  lCopy = l;
  selfCopy = self;
  LOBYTE(length) = sub_403934(v14, location, length);

  (*(v12 + 8))(v14, v11);
  return length & 1;
}

@end