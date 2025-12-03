@interface HOAddLocationViewControllerAccessibility
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path rowIdentifer:(id)identifer;
@end

@implementation HOAddLocationViewControllerAccessibility

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path rowIdentifer:(id)identifer
{
  v11.receiver = self;
  v11.super_class = HOAddLocationViewControllerAccessibility;
  identiferCopy = identifer;
  v8 = [(HOAddLocationViewControllerAccessibility *)&v11 tableView:view cellForRowAtIndexPath:path rowIdentifer:identiferCopy];
  LODWORD(view) = [identiferCopy isEqualToString:{HOAddLocationWallpaperSectionRowThumbnail, v11.receiver, v11.super_class}];

  if (view)
  {
    v9 = accessibilityLocalizedString(@"setup.wallpaper.preview.cell");
    [v8 setAccessibilityLabel:v9];
  }

  return v8;
}

@end