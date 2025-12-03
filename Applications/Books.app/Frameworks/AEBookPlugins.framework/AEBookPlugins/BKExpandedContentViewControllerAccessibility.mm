@interface BKExpandedContentViewControllerAccessibility
- (void)close:(BOOL)close;
- (void)setToolbarVisible:(BOOL)visible animated:(BOOL)animated;
- (void)stopActivityIndicator:(BOOL)indicator;
@end

@implementation BKExpandedContentViewControllerAccessibility

- (void)setToolbarVisible:(BOOL)visible animated:(BOOL)animated
{
  animatedCopy = animated;
  visibleCopy = visible;
  if (!UIAccessibilityIsVoiceOverRunning() || visibleCopy)
  {
    v7.receiver = self;
    v7.super_class = BKExpandedContentViewControllerAccessibility;
    [(BKExpandedContentViewControllerAccessibility *)&v7 setToolbarVisible:visibleCopy animated:animatedCopy];
  }
}

- (void)close:(BOOL)close
{
  v3.receiver = self;
  v3.super_class = BKExpandedContentViewControllerAccessibility;
  [(BKExpandedContentViewControllerAccessibility *)&v3 close:close];
  UIAccessibilityPostNotification(UIAccessibilityScreenChangedNotification, 0);
}

- (void)stopActivityIndicator:(BOOL)indicator
{
  v8.receiver = self;
  v8.super_class = BKExpandedContentViewControllerAccessibility;
  [(BKExpandedContentViewControllerAccessibility *)&v8 stopActivityIndicator:indicator];
  v4 = UIAccessibilityAnnouncementNotification;
  v5 = AEAXLocString(@"preview.visible");
  UIAccessibilityPostNotification(v4, v5);

  v6 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_DF350;
  block[3] = &unk_1E2BD0;
  block[4] = self;
  dispatch_after(v6, &_dispatch_main_q, block);
}

@end