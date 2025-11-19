@interface ParagraphView
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (CGRect)bounds;
- (CGRect)frame;
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
- (void)music_inheritedLayoutInsetsDidChange;
- (void)setBounds:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation ParagraphView

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_4CFB68(a3);
}

- (void)music_inheritedLayoutInsetsDidChange
{
  v2 = self;
  sub_4CFD54();
}

- (CGRect)frame
{
  sub_88978(self, a2, &selRef_frame);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  sub_4CFF74(&selRef_frame, &selRef_setFrame_, x, y, width, height);
}

- (CGRect)bounds
{
  sub_88978(self, a2, &selRef_bounds);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  sub_4CFF74(&selRef_bounds, &selRef_setBounds_, x, y, width, height);
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  sub_4CDE34(width, height);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_4D0110();
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
  LOBYTE(length) = sub_4D2510(v14, location, length);

  (*(v12 + 8))(v14, v11);
  return length & 1;
}

@end