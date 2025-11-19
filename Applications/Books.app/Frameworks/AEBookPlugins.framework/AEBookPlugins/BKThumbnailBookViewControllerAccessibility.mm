@interface BKThumbnailBookViewControllerAccessibility
- (BOOL)bkaxBookmarkPage;
- (BOOL)bkaxUnbookmarkPage;
- (id)_audioBarButtonItem;
- (id)_bookmarkBarButtonItem;
- (id)_bookmarkButton;
- (id)_brightnessBarButtonItem;
- (id)_directorySwitchBarButtonItem;
- (id)_editToolboxBarButtonItem;
- (id)_fontBarButtonItem;
- (id)_libraryBarButtonItem;
- (id)_searchBarButtonItem;
- (id)_tocBarButtonItem;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_updateBookmark;
- (void)contentViewReady:(id)a3;
- (void)scrubValueChanged:(id)a3;
- (void)toggleBookmark:(id)a3;
- (void)updateBookmarkButton;
- (void)viewDidLoad;
@end

@implementation BKThumbnailBookViewControllerAccessibility

- (void)contentViewReady:(id)a3
{
  v3.receiver = self;
  v3.super_class = BKThumbnailBookViewControllerAccessibility;
  [(BKThumbnailBookViewControllerAccessibility *)&v3 contentViewReady:a3];
  UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, 0);
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = BKThumbnailBookViewControllerAccessibility;
  [(BKThumbnailBookViewControllerAccessibility *)&v4 viewDidLoad];
  v3 = [(BKThumbnailBookViewControllerAccessibility *)self imaxValueForKey:@"_pageNumberHUD"];
  [v3 setIsAccessibilityElement:0];
}

- (id)_libraryBarButtonItem
{
  v5.receiver = self;
  v5.super_class = BKThumbnailBookViewControllerAccessibility;
  v2 = [(BKThumbnailBookViewControllerAccessibility *)&v5 _libraryBarButtonItem];
  v3 = AEAXLocString(@"library.button");
  [v2 setAccessibilityLabel:v3];

  return v2;
}

- (id)_editToolboxBarButtonItem
{
  v5.receiver = self;
  v5.super_class = BKThumbnailBookViewControllerAccessibility;
  v2 = [(BKThumbnailBookViewControllerAccessibility *)&v5 _editToolboxBarButtonItem];
  v3 = AEAXLocString(@"markup.button");
  [v2 setAccessibilityLabel:v3];

  return v2;
}

- (id)_searchBarButtonItem
{
  v5.receiver = self;
  v5.super_class = BKThumbnailBookViewControllerAccessibility;
  v2 = [(BKThumbnailBookViewControllerAccessibility *)&v5 _searchBarButtonItem];
  v3 = AEAXLocString(@"search.button");
  [v2 setAccessibilityLabel:v3];

  return v2;
}

- (id)_tocBarButtonItem
{
  v5.receiver = self;
  v5.super_class = BKThumbnailBookViewControllerAccessibility;
  v2 = [(BKThumbnailBookViewControllerAccessibility *)&v5 _tocBarButtonItem];
  v3 = AEAXLocString(@"toc.button");
  [v2 setAccessibilityLabel:v3];

  return v2;
}

- (id)_brightnessBarButtonItem
{
  v6.receiver = self;
  v6.super_class = BKThumbnailBookViewControllerAccessibility;
  v2 = [(BKThumbnailBookViewControllerAccessibility *)&v6 _brightnessBarButtonItem];
  v3 = AEAXLocString(@"brightness.button");
  [v2 setAccessibilityLabel:v3];

  v4 = AEAXLocString(@"brightness.button.hint");
  [v2 setAccessibilityHint:v4];

  return v2;
}

- (id)_bookmarkBarButtonItem
{
  v6.receiver = self;
  v6.super_class = BKThumbnailBookViewControllerAccessibility;
  v2 = [(BKThumbnailBookViewControllerAccessibility *)&v6 _bookmarkBarButtonItem];
  v3 = AEAXLocString(@"bookmark.button");
  [v2 setAccessibilityLabel:v3];

  v4 = [v2 accessibilityTraits];
  [v2 setAccessibilityTraits:UIAccessibilityTraitButton | v4];

  return v2;
}

- (id)_bookmarkButton
{
  v5.receiver = self;
  v5.super_class = BKThumbnailBookViewControllerAccessibility;
  v2 = [(BKThumbnailBookViewControllerAccessibility *)&v5 _bookmarkButton];
  v3 = AEAXLocString(@"bookmark.button");
  [v2 setAccessibilityLabel:v3];

  return v2;
}

- (id)_fontBarButtonItem
{
  v8.receiver = self;
  v8.super_class = BKThumbnailBookViewControllerAccessibility;
  v2 = [(BKThumbnailBookViewControllerAccessibility *)&v8 _fontBarButtonItem];
  v3 = AEAXLocString(@"font.button");
  [v2 setAccessibilityLabel:v3];
  v4 = AEAXLocString(@"font.button");
  v5 = [v2 image];
  [v5 setAccessibilityValue:v4];

  v6 = AEAXLocString(@"font.button.hint");
  [v2 setAccessibilityHint:v6];

  return v2;
}

- (id)_directorySwitchBarButtonItem
{
  v17.receiver = self;
  v17.super_class = BKThumbnailBookViewControllerAccessibility;
  v3 = [(BKThumbnailBookViewControllerAccessibility *)&v17 _directorySwitchBarButtonItem];
  v4 = [(BKThumbnailBookViewControllerAccessibility *)self imaxValueForKey:@"_directorySwitch"];
  v5 = [v4 imaxValueForKey:@"_segments"];

  v6 = [(BKThumbnailBookViewControllerAccessibility *)self imaxValueForKey:@"book"];
  v7 = [v6 imaxValueForKey:@"suppressTOC"];
  v8 = [v7 BOOLValue];

  if (v8)
  {
    v9 = &dword_0 + 2;
  }

  else
  {
    v9 = &dword_0 + 3;
  }

  if (v9 == [v5 count])
  {
    v10 = [v5 firstObject];
    v11 = AEAXLocString(@"grid.view");
    [v10 setAccessibilityLabel:v11];

    if ((v8 & 1) == 0)
    {
      v12 = [v5 objectAtIndex:1];
      v13 = AEAXLocString(@"list.view");
      [v12 setAccessibilityLabel:v13];
    }

    v14 = [v5 lastObject];
    v15 = AEAXLocString(@"bookmark.button");
    [v14 setAccessibilityLabel:v15];
  }

  return v3;
}

- (id)_audioBarButtonItem
{
  v5.receiver = self;
  v5.super_class = BKThumbnailBookViewControllerAccessibility;
  v2 = [(BKThumbnailBookViewControllerAccessibility *)&v5 _audioBarButtonItem];
  v3 = AEAXLocString(@"audio.options");
  [v2 setAccessibilityLabel:v3];

  return v2;
}

- (void)scrubValueChanged:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = BKThumbnailBookViewControllerAccessibility;
  [(BKThumbnailBookViewControllerAccessibility *)&v13 scrubValueChanged:v4];
  NSClassFromString(@"BKScrubberControl");
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 imaxValueForKey:@"callout"];
    v6 = [v5 imaxValueForKey:@"title"];
    v7 = [v6 imaxValueForKey:@"text"];

    v8 = [v4 imaxValueForKey:@"callout"];
    v9 = [v8 imaxValueForKey:@"subtitle"];
    v10 = [v9 imaxValueForKey:@"text"];

    v12 = __IMAccessibilityStringForVariablesSentinel;
    v11 = __IMAccessibilityStringForVariables();
    if ([v11 length])
    {
      UIAccessibilityPostNotification(UIAccessibilityAnnouncementNotification, v11);
    }
  }

  else if (IMAccessibilityShouldPerformValidationChecks())
  {
    [NSException raise:@"Accessibility" format:@"sender is not a BKScrubber"];
  }
}

- (void)toggleBookmark:(id)a3
{
  v4.receiver = self;
  v4.super_class = BKThumbnailBookViewControllerAccessibility;
  [(BKThumbnailBookViewControllerAccessibility *)&v4 toggleBookmark:a3];
  [(BKThumbnailBookViewControllerAccessibility *)self _updateBookmark];
}

- (BOOL)bkaxUnbookmarkPage
{
  v3 = [(BKThumbnailBookViewControllerAccessibility *)self bkAccessibilityIsPageBookmarked];
  if (v3)
  {
    [(BKThumbnailBookViewControllerAccessibility *)self toggleBookmark:0];
    v4 = UIAccessibilityAnnouncementNotification;
    v5 = AEAXLocString(@"page.unbookmarked");
    UIAccessibilityPostNotification(v4, v5);
  }

  return v3;
}

- (BOOL)bkaxBookmarkPage
{
  v3 = [(BKThumbnailBookViewControllerAccessibility *)self bkAccessibilityIsPageBookmarked];
  if ((v3 & 1) == 0)
  {
    [(BKThumbnailBookViewControllerAccessibility *)self toggleBookmark:0];
    v4 = UIAccessibilityAnnouncementNotification;
    v5 = AEAXLocString(@"page.bookmarked");
    UIAccessibilityPostNotification(v4, v5);
  }

  return v3 ^ 1;
}

- (void)updateBookmarkButton
{
  v3.receiver = self;
  v3.super_class = BKThumbnailBookViewControllerAccessibility;
  [(BKThumbnailBookViewControllerAccessibility *)&v3 updateBookmarkButton];
  [(BKThumbnailBookViewControllerAccessibility *)self _updateBookmark];
}

- (void)_updateBookmark
{
  if ([(BKThumbnailBookViewControllerAccessibility *)self bkAccessibilityIsPageBookmarked])
  {
    v3 = @"bookmark.button.on";
  }

  else
  {
    v3 = @"bookmark.button.off";
  }

  v4 = AEAXLocString(v3);
  v8.receiver = self;
  v8.super_class = BKThumbnailBookViewControllerAccessibility;
  v5 = [(BKThumbnailBookViewControllerAccessibility *)&v8 _bookmarkButton];
  [v5 setAccessibilityValue:v4];
  v7.receiver = self;
  v7.super_class = BKThumbnailBookViewControllerAccessibility;
  v6 = [(BKThumbnailBookViewControllerAccessibility *)&v7 _bookmarkBarButtonItem];
  [v6 setAccessibilityValue:v4];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3 = [(BKThumbnailBookViewControllerAccessibility *)self _libraryBarButtonItem];
  v4 = [(BKThumbnailBookViewControllerAccessibility *)self _tocBarButtonItem];
  v5 = [(BKThumbnailBookViewControllerAccessibility *)self _directorySwitchBarButtonItem];
  v6 = [(BKThumbnailBookViewControllerAccessibility *)self _brightnessBarButtonItem];
  v7 = [(BKThumbnailBookViewControllerAccessibility *)self _editToolboxBarButtonItem];
  v8 = [(BKThumbnailBookViewControllerAccessibility *)self _audioBarButtonItem];
  v9 = [(BKThumbnailBookViewControllerAccessibility *)self _searchBarButtonItem];
  v10 = [(BKThumbnailBookViewControllerAccessibility *)self _bookmarkBarButtonItem];
  v11 = [(BKThumbnailBookViewControllerAccessibility *)self _bookmarkButton];
  v12 = [(BKThumbnailBookViewControllerAccessibility *)self _fontBarButtonItem];

  [(BKThumbnailBookViewControllerAccessibility *)self _updateBookmark];
}

@end