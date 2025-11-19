@interface BKLibraryBookshelfInfoBadge
- (BKLibraryBookshelfInfoBadge)initWithCoder:(id)a3;
- (BKLibraryBookshelfInfoBadge)initWithFrame:(CGRect)a3;
- (NSAttributedString)attributedBadgeText;
- (void)layoutSubviews;
- (void)setAttributedBadgeText:(id)a3;
@end

@implementation BKLibraryBookshelfInfoBadge

- (BKLibraryBookshelfInfoBadge)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (BKLibraryBookshelfInfoBadge)initWithCoder:(id)a3
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
  v2 = self;
  v3 = sub_1005721DC();

  return v3;
}

- (void)setAttributedBadgeText:(id)a3
{
  v6 = a3;
  v5 = self;
  sub_100572770(a3);
}

- (void)layoutSubviews
{
  v2 = self;
  sub_100572430();
}

@end