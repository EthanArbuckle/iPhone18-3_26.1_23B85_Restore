@interface BKLibraryBookshelfCoverView
- (BKLibraryBookshelfCoverView)initWithFrame:(CGRect)frame;
- (id)_ancestorCell;
@end

@implementation BKLibraryBookshelfCoverView

- (BKLibraryBookshelfCoverView)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = BKLibraryBookshelfCoverView;
  return [(BKLibraryBookshelfCoverView *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
}

- (id)_ancestorCell
{
  superview = [(BKLibraryBookshelfCoverView *)self superview];
  if (superview)
  {
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v2Superview = [superview superview];

      superview = v2Superview;
    }

    while (v2Superview);
  }

  return superview;
}

@end