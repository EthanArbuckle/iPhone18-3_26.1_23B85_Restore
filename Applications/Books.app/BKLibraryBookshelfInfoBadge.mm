@interface BKLibraryBookshelfInfoBadge
- (BKLibraryBookshelfInfoBadge)initWithCoder:(id)coder;
- (BKLibraryBookshelfInfoBadge)initWithFrame:(CGRect)frame;
- (NSAttributedString)attributedBadgeText;
- (void)layoutSubviews;
- (void)setAttributedBadgeText:(id)text;
@end

@implementation BKLibraryBookshelfInfoBadge

- (BKLibraryBookshelfInfoBadge)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = (self + OBJC_IVAR___BKLibraryBookshelfInfoBadge_badgeText);
  *v8 = 0;
  v8[1] = 0;
  v9 = (self + OBJC_IVAR___BKLibraryBookshelfInfoBadge_fallbackBadgeText);
  v10 = type metadata accessor for LibraryBookshelfInfoBadge();
  *v9 = 0;
  v9[1] = 0;
  v12.receiver = self;
  v12.super_class = v10;
  return [(BKLibraryBookshelfInfoBadge *)&v12 initWithFrame:x, y, width, height];
}

- (BKLibraryBookshelfInfoBadge)initWithCoder:(id)coder
{
  v3 = (self + OBJC_IVAR___BKLibraryBookshelfInfoBadge_badgeText);
  *v3 = 0;
  v3[1] = 0;
  v4 = (self + OBJC_IVAR___BKLibraryBookshelfInfoBadge_fallbackBadgeText);
  *v4 = 0;
  v4[1] = 0;
  result = sub_1007A38A4();
  __break(1u);
  return result;
}

- (NSAttributedString)attributedBadgeText
{
  selfCopy = self;
  v3 = sub_1005721DC();

  return v3;
}

- (void)setAttributedBadgeText:(id)text
{
  textCopy = text;
  selfCopy = self;
  sub_100572770(text);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100572430();
}

@end