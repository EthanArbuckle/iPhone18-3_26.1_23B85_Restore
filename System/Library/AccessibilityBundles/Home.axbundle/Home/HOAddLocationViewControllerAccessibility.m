@interface HOAddLocationViewControllerAccessibility
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4 rowIdentifer:(id)a5;
@end

@implementation HOAddLocationViewControllerAccessibility

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4 rowIdentifer:(id)a5
{
  v11.receiver = self;
  v11.super_class = HOAddLocationViewControllerAccessibility;
  v7 = a5;
  v8 = [(HOAddLocationViewControllerAccessibility *)&v11 tableView:a3 cellForRowAtIndexPath:a4 rowIdentifer:v7];
  LODWORD(a3) = [v7 isEqualToString:{HOAddLocationWallpaperSectionRowThumbnail, v11.receiver, v11.super_class}];

  if (a3)
  {
    v9 = accessibilityLocalizedString(@"setup.wallpaper.preview.cell");
    [v8 setAccessibilityLabel:v9];
  }

  return v8;
}

@end