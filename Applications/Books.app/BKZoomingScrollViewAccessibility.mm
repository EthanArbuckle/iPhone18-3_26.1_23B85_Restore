@interface BKZoomingScrollViewAccessibility
- (id)_accessibilityScrollStatus;
- (void)accessibilityScrollDownPage;
- (void)accessibilityScrollLeftPage;
- (void)accessibilityScrollRightPage;
- (void)accessibilityScrollUpPage;
@end

@implementation BKZoomingScrollViewAccessibility

- (id)_accessibilityScrollStatus
{
  v3 = [(BKZoomingScrollViewAccessibility *)self imaxValueForKey:@"visibleBounds"];
  [v3 rectValue];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(BKZoomingScrollViewAccessibility *)self imaxValueForKey:@"_accessibilityContentSize"];
  [v12 sizeValue];
  v14 = v13;
  v16 = v15;

  if (byte_100AF75D0 == 1)
  {
    v17 = v16 / v11;
    v18 = ceilf(v17);
    v27.origin.x = v5;
    v27.origin.y = v7;
    v27.size.width = v9;
    v27.size.height = v11;
    v19 = CGRectGetMidY(v27) / v16;
  }

  else
  {
    v20 = v14 / v9;
    v18 = ceilf(v20);
    v28.origin.x = v5;
    v28.origin.y = v7;
    v28.size.width = v9;
    v28.size.height = v11;
    v19 = CGRectGetMidX(v28) / v14;
  }

  v21 = v19 * v18;
  v22 = (floorf(v21) + 1.0);
  v23 = sub_1000765EC(@"picture.book.scroll.status %ld %ld");
  v24 = [NSString stringWithFormat:v23, v22, v18];

  return v24;
}

- (void)accessibilityScrollDownPage
{
  byte_100AF75D0 = 1;
  [(BKZoomingScrollViewAccessibility *)self _bkaxIgnoreNextNotification:UIAccessibilityPageScrolledNotification];
  v5.receiver = self;
  v5.super_class = BKZoomingScrollViewAccessibility;
  [(BKZoomingScrollViewAccessibility *)&v5 accessibilityScrollDownPage];
  v3 = UIAccessibilityAnnouncementNotification;
  _accessibilityScrollStatus = [(BKZoomingScrollViewAccessibility *)self _accessibilityScrollStatus];
  UIAccessibilityPostNotification(v3, _accessibilityScrollStatus);
}

- (void)accessibilityScrollUpPage
{
  byte_100AF75D0 = 1;
  [(BKZoomingScrollViewAccessibility *)self _bkaxIgnoreNextNotification:UIAccessibilityPageScrolledNotification];
  v5.receiver = self;
  v5.super_class = BKZoomingScrollViewAccessibility;
  [(BKZoomingScrollViewAccessibility *)&v5 accessibilityScrollUpPage];
  v3 = UIAccessibilityAnnouncementNotification;
  _accessibilityScrollStatus = [(BKZoomingScrollViewAccessibility *)self _accessibilityScrollStatus];
  UIAccessibilityPostNotification(v3, _accessibilityScrollStatus);
}

- (void)accessibilityScrollLeftPage
{
  byte_100AF75D0 = 0;
  [(BKZoomingScrollViewAccessibility *)self _bkaxIgnoreNextNotification:UIAccessibilityPageScrolledNotification];
  v5.receiver = self;
  v5.super_class = BKZoomingScrollViewAccessibility;
  [(BKZoomingScrollViewAccessibility *)&v5 accessibilityScrollLeftPage];
  v3 = UIAccessibilityAnnouncementNotification;
  _accessibilityScrollStatus = [(BKZoomingScrollViewAccessibility *)self _accessibilityScrollStatus];
  UIAccessibilityPostNotification(v3, _accessibilityScrollStatus);
}

- (void)accessibilityScrollRightPage
{
  byte_100AF75D0 = 0;
  [(BKZoomingScrollViewAccessibility *)self _bkaxIgnoreNextNotification:UIAccessibilityPageScrolledNotification];
  v5.receiver = self;
  v5.super_class = BKZoomingScrollViewAccessibility;
  [(BKZoomingScrollViewAccessibility *)&v5 accessibilityScrollRightPage];
  v3 = UIAccessibilityAnnouncementNotification;
  _accessibilityScrollStatus = [(BKZoomingScrollViewAccessibility *)self _accessibilityScrollStatus];
  UIAccessibilityPostNotification(v3, _accessibilityScrollStatus);
}

@end