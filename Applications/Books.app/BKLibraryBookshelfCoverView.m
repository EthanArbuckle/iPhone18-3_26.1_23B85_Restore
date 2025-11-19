@interface BKLibraryBookshelfCoverView
- (BKLibraryBookshelfCoverView)initWithFrame:(CGRect)a3;
- (id)_ancestorCell;
@end

@implementation BKLibraryBookshelfCoverView

- (BKLibraryBookshelfCoverView)initWithFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = BKLibraryBookshelfCoverView;
  return [(BKLibraryBookshelfCoverView *)&v4 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
}

- (id)_ancestorCell
{
  v2 = [(BKLibraryBookshelfCoverView *)self superview];
  if (v2)
  {
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v3 = [v2 superview];

      v2 = v3;
    }

    while (v3);
  }

  return v2;
}

@end