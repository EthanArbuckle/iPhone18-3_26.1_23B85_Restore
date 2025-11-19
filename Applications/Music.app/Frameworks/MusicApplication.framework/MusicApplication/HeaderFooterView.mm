@interface HeaderFooterView
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (CGSize)sizeThatFits:(CGSize)a3;
- (id)preferredLayoutAttributesFittingAttributes:(id)a3;
- (void)layoutSubviews;
@end

@implementation HeaderFooterView

- (void)layoutSubviews
{
  v2 = self;
  sub_402218();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [*(&self->super.super.super.super.isa + OBJC_IVAR____TtC16MusicApplicationP33_7919D88BB8212442612DA538E61A458116HeaderFooterView_textView) sizeThatFits:{a3.width, a3.height}];
  result.height = v4;
  result.width = v3;
  return result;
}

- (id)preferredLayoutAttributesFittingAttributes:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_403830(v4);

  return v6;
}

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6
{
  length = a5.length;
  location = a5.location;
  v11 = sub_AB31C0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3150();
  v15 = a3;
  v16 = a4;
  v17 = self;
  LOBYTE(length) = sub_403934(v14, location, length);

  (*(v12 + 8))(v14, v11);
  return length & 1;
}

@end