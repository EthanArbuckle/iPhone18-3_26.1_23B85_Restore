@interface BKLibraryBookshelfImageViewWithMinimumAccessibilityFrameSize
- (BKLibraryBookshelfImageViewWithMinimumAccessibilityFrameSize)initWithFrame:(CGRect)frame;
- (CGRect)accessibilityFrame;
@end

@implementation BKLibraryBookshelfImageViewWithMinimumAccessibilityFrameSize

- (BKLibraryBookshelfImageViewWithMinimumAccessibilityFrameSize)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = BKLibraryBookshelfImageViewWithMinimumAccessibilityFrameSize;
  v3 = [(BKLibraryBookshelfImageViewWithMinimumAccessibilityFrameSize *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    +[BKLibraryBookshelfImageViewWithMinimumAccessibilityFrameSize accessibilityAcceptableMinimumSizeForDimension];
    [(BKLibraryBookshelfImageViewWithMinimumAccessibilityFrameSize *)v3 setAccessibilityFrameMinimumWidth:?];
    +[BKLibraryBookshelfImageViewWithMinimumAccessibilityFrameSize accessibilityAcceptableMinimumSizeForDimension];
    [(BKLibraryBookshelfImageViewWithMinimumAccessibilityFrameSize *)v3 setAccessibilityFrameMinimumHeight:?];
  }

  return v3;
}

- (CGRect)accessibilityFrame
{
  v15.receiver = self;
  v15.super_class = BKLibraryBookshelfImageViewWithMinimumAccessibilityFrameSize;
  [(BKLibraryBookshelfImageViewWithMinimumAccessibilityFrameSize *)&v15 accessibilityFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(BKLibraryBookshelfImageViewWithMinimumAccessibilityFrameSize *)self accessibilityFrameMinimumHeight];
  v12 = fmax(v11 - v10, 0.0);
  [(BKLibraryBookshelfImageViewWithMinimumAccessibilityFrameSize *)self accessibilityFrameMinimumWidth];
  v14 = fmax(v13 - v8, 0.0) * -0.5;
  v16.origin.x = v4;
  v16.origin.y = v6;
  v16.size.width = v8;
  v16.size.height = v10;
  return CGRectInset(v16, v14, v12 * -0.5);
}

@end