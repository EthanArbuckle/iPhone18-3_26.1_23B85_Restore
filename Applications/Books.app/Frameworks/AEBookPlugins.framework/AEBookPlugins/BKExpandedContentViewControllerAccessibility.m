@interface BKExpandedContentViewControllerAccessibility
- (void)close:(BOOL)a3;
- (void)setToolbarVisible:(BOOL)a3 animated:(BOOL)a4;
- (void)stopActivityIndicator:(BOOL)a3;
@end

@implementation BKExpandedContentViewControllerAccessibility

- (void)setToolbarVisible:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (!UIAccessibilityIsVoiceOverRunning() || v5)
  {
    v7.receiver = self;
    v7.super_class = BKExpandedContentViewControllerAccessibility;
    [(BKExpandedContentViewControllerAccessibility *)&v7 setToolbarVisible:v5 animated:v4];
  }
}

- (void)close:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = BKExpandedContentViewControllerAccessibility;
  [(BKExpandedContentViewControllerAccessibility *)&v3 close:a3];
  UIAccessibilityPostNotification(UIAccessibilityScreenChangedNotification, 0);
}

- (void)stopActivityIndicator:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = BKExpandedContentViewControllerAccessibility;
  [(BKExpandedContentViewControllerAccessibility *)&v8 stopActivityIndicator:a3];
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