@interface UGCPhotoThumbnailBadgeView
+ (UIFont)attributionFont;
- (_TtC4Maps26UGCPhotoThumbnailBadgeView)initWithCoder:(id)a3;
- (void)setAttributedText:(id)a3;
@end

@implementation UGCPhotoThumbnailBadgeView

- (_TtC4Maps26UGCPhotoThumbnailBadgeView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC4Maps26UGCPhotoThumbnailBadgeView_attributedText) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)setAttributedText:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC4Maps26UGCPhotoThumbnailBadgeView_attributedText);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC4Maps26UGCPhotoThumbnailBadgeView_attributedText) = a3;
  v5 = a3;
  v6 = self;

  [*(&v6->super.super.super.isa + OBJC_IVAR____TtC4Maps26UGCPhotoThumbnailBadgeView_label) setAttributedText:v5];
}

+ (UIFont)attributionFont
{
  v2 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleCaption2];

  return v2;
}

@end