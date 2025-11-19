@interface NCNotificationContentViewInvertColorsAccessibility
- (id)_lazyThumbnailImageView;
- (void)_accessibilityLoadInvertColors;
@end

@implementation NCNotificationContentViewInvertColorsAccessibility

- (id)_lazyThumbnailImageView
{
  v4.receiver = self;
  v4.super_class = NCNotificationContentViewInvertColorsAccessibility;
  v2 = [(NCNotificationContentViewInvertColorsAccessibility *)&v4 _lazyThumbnailImageView];
  [v2 setAccessibilityIgnoresInvertColors:1];

  return v2;
}

- (void)_accessibilityLoadInvertColors
{
  v2 = [(NCNotificationContentViewInvertColorsAccessibility *)self safeValueForKey:@"_lazyThumbnailImageView"];
  [v2 setAccessibilityIgnoresInvertColors:1];
}

@end