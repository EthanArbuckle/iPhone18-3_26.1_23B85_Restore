@interface BookmarksBarLabelButtonAccessibility
- (id)accessibilityLabel;
@end

@implementation BookmarksBarLabelButtonAccessibility

- (id)accessibilityLabel
{
  v3 = MEMORY[0x29EDBA0F8];
  v4 = accessibilityLocalizedString(@"bookmark.button");
  v8.receiver = self;
  v8.super_class = BookmarksBarLabelButtonAccessibility;
  v5 = [(BookmarksBarLabelButtonAccessibility *)&v8 accessibilityLabel];
  v6 = [v3 stringWithFormat:v4, v5];

  return v6;
}

@end