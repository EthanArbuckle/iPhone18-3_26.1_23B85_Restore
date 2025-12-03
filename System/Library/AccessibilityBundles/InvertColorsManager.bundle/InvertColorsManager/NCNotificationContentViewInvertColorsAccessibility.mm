@interface NCNotificationContentViewInvertColorsAccessibility
- (id)_lazyThumbnailImageView;
- (void)_accessibilityLoadInvertColors;
@end

@implementation NCNotificationContentViewInvertColorsAccessibility

- (id)_lazyThumbnailImageView
{
  v4.receiver = self;
  v4.super_class = NCNotificationContentViewInvertColorsAccessibility;
  _lazyThumbnailImageView = [(NCNotificationContentViewInvertColorsAccessibility *)&v4 _lazyThumbnailImageView];
  [_lazyThumbnailImageView setAccessibilityIgnoresInvertColors:1];

  return _lazyThumbnailImageView;
}

- (void)_accessibilityLoadInvertColors
{
  v2 = [(NCNotificationContentViewInvertColorsAccessibility *)self safeValueForKey:@"_lazyThumbnailImageView"];
  [v2 setAccessibilityIgnoresInvertColors:1];
}

@end