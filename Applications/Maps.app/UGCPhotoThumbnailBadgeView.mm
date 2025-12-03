@interface UGCPhotoThumbnailBadgeView
+ (UIFont)attributionFont;
- (_TtC4Maps26UGCPhotoThumbnailBadgeView)initWithCoder:(id)coder;
- (void)setAttributedText:(id)text;
@end

@implementation UGCPhotoThumbnailBadgeView

- (_TtC4Maps26UGCPhotoThumbnailBadgeView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC4Maps26UGCPhotoThumbnailBadgeView_attributedText) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)setAttributedText:(id)text
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC4Maps26UGCPhotoThumbnailBadgeView_attributedText);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC4Maps26UGCPhotoThumbnailBadgeView_attributedText) = text;
  textCopy = text;
  selfCopy = self;

  [*(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC4Maps26UGCPhotoThumbnailBadgeView_label) setAttributedText:textCopy];
}

+ (UIFont)attributionFont
{
  v2 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleCaption2];

  return v2;
}

@end