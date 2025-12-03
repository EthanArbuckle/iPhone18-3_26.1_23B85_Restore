@interface MusicSBS_TextContentView
- (CGSize)sizeThatFits:(CGSize)fits;
- (MusicSBS_TextContentView)initWithFrame:(CGRect)frame;
- (UILabel)accessibilityTranslationLabel;
- (UIView)accessibilityMainTextView;
- (id)copy;
- (void)layoutSubviews;
@end

@implementation MusicSBS_TextContentView

- (UIView)accessibilityMainTextView
{
  v2 = sub_100530874();

  return v2;
}

- (UILabel)accessibilityTranslationLabel
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR___MusicSBS_TextContentView_textView);
  if (v2)
  {
    return *(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel);
  }

  __break(1u);
  return self;
}

- (id)copy
{
  selfCopy = self;
  sub_10053092C(v5);

  sub_10000C8CC(v5, v5[3]);
  v3 = sub_100574478();
  sub_100010474(v5);
  return v3;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  sub_10053228C(width, height);
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
  selfCopy = self;
  sub_100532390();
}

- (MusicSBS_TextContentView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end