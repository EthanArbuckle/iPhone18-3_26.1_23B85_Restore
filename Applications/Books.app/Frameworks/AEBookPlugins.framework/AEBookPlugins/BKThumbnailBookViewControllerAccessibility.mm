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
- (void)contentViewReady:(id)ready;
- (void)scrubValueChanged:(id)changed;
- (void)toggleBookmark:(id)bookmark;
- (void)updateBookmarkButton;
- (void)viewDidLoad;
@end

@implementation BKThumbnailBookViewControllerAccessibility

- (void)contentViewReady:(id)ready
{
  v3.receiver = self;
  v3.super_class = BKThumbnailBookViewControllerAccessibility;
  [(BKThumbnailBookViewControllerAccessibility *)&v3 contentViewReady:ready];
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
  _libraryBarButtonItem = [(BKThumbnailBookViewControllerAccessibility *)&v5 _libraryBarButtonItem];
  v3 = AEAXLocString(@"library.button");
  [_libraryBarButtonItem setAccessibilityLabel:v3];

  return _libraryBarButtonItem;
}

- (id)_editToolboxBarButtonItem
{
  v5.receiver = self;
  v5.super_class = BKThumbnailBookViewControllerAccessibility;
  _editToolboxBarButtonItem = [(BKThumbnailBookViewControllerAccessibility *)&v5 _editToolboxBarButtonItem];
  v3 = AEAXLocString(@"markup.button");
  [_editToolboxBarButtonItem setAccessibilityLabel:v3];

  return _editToolboxBarButtonItem;
}

- (id)_searchBarButtonItem
{
  v5.receiver = self;
  v5.super_class = BKThumbnailBookViewControllerAccessibility;
  _searchBarButtonItem = [(BKThumbnailBookViewControllerAccessibility *)&v5 _searchBarButtonItem];
  v3 = AEAXLocString(@"search.button");
  [_searchBarButtonItem setAccessibilityLabel:v3];

  return _searchBarButtonItem;
}

- (id)_tocBarButtonItem
{
  v5.receiver = self;
  v5.super_class = BKThumbnailBookViewControllerAccessibility;
  _tocBarButtonItem = [(BKThumbnailBookViewControllerAccessibility *)&v5 _tocBarButtonItem];
  v3 = AEAXLocString(@"toc.button");
  [_tocBarButtonItem setAccessibilityLabel:v3];

  return _tocBarButtonItem;
}

- (id)_brightnessBarButtonItem
{
  v6.receiver = self;
  v6.super_class = BKThumbnailBookViewControllerAccessibility;
  _brightnessBarButtonItem = [(BKThumbnailBookViewControllerAccessibility *)&v6 _brightnessBarButtonItem];
  v3 = AEAXLocString(@"brightness.button");
  [_brightnessBarButtonItem setAccessibilityLabel:v3];

  v4 = AEAXLocString(@"brightness.button.hint");
  [_brightnessBarButtonItem setAccessibilityHint:v4];

  return _brightnessBarButtonItem;
}

- (id)_bookmarkBarButtonItem
{
  v6.receiver = self;
  v6.super_class = BKThumbnailBookViewControllerAccessibility;
  _bookmarkBarButtonItem = [(BKThumbnailBookViewControllerAccessibility *)&v6 _bookmarkBarButtonItem];
  v3 = AEAXLocString(@"bookmark.button");
  [_bookmarkBarButtonItem setAccessibilityLabel:v3];

  accessibilityTraits = [_bookmarkBarButtonItem accessibilityTraits];
  [_bookmarkBarButtonItem setAccessibilityTraits:UIAccessibilityTraitButton | accessibilityTraits];

  return _bookmarkBarButtonItem;
}

- (id)_bookmarkButton
{
  v5.receiver = self;
  v5.super_class = BKThumbnailBookViewControllerAccessibility;
  _bookmarkButton = [(BKThumbnailBookViewControllerAccessibility *)&v5 _bookmarkButton];
  v3 = AEAXLocString(@"bookmark.button");
  [_bookmarkButton setAccessibilityLabel:v3];

  return _bookmarkButton;
}

- (id)_fontBarButtonItem
{
  v8.receiver = self;
  v8.super_class = BKThumbnailBookViewControllerAccessibility;
  _fontBarButtonItem = [(BKThumbnailBookViewControllerAccessibility *)&v8 _fontBarButtonItem];
  v3 = AEAXLocString(@"font.button");
  [_fontBarButtonItem setAccessibilityLabel:v3];
  v4 = AEAXLocString(@"font.button");
  image = [_fontBarButtonItem image];
  [image setAccessibilityValue:v4];

  v6 = AEAXLocString(@"font.button.hint");
  [_fontBarButtonItem setAccessibilityHint:v6];

  return _fontBarButtonItem;
}

- (id)_directorySwitchBarButtonItem
{
  v17.receiver = self;
  v17.super_class = BKThumbnailBookViewControllerAccessibility;
  _directorySwitchBarButtonItem = [(BKThumbnailBookViewControllerAccessibility *)&v17 _directorySwitchBarButtonItem];
  v4 = [(BKThumbnailBookViewControllerAccessibility *)self imaxValueForKey:@"_directorySwitch"];
  v5 = [v4 imaxValueForKey:@"_segments"];

  v6 = [(BKThumbnailBookViewControllerAccessibility *)self imaxValueForKey:@"book"];
  v7 = [v6 imaxValueForKey:@"suppressTOC"];
  bOOLValue = [v7 BOOLValue];

  if (bOOLValue)
  {
    v9 = &dword_0 + 2;
  }

  else
  {
    v9 = &dword_0 + 3;
  }

  if (v9 == [v5 count])
  {
    firstObject = [v5 firstObject];
    v11 = AEAXLocString(@"grid.view");
    [firstObject setAccessibilityLabel:v11];

    if ((bOOLValue & 1) == 0)
    {
      v12 = [v5 objectAtIndex:1];
      v13 = AEAXLocString(@"list.view");
      [v12 setAccessibilityLabel:v13];
    }

    lastObject = [v5 lastObject];
    v15 = AEAXLocString(@"bookmark.button");
    [lastObject setAccessibilityLabel:v15];
  }

  return _directorySwitchBarButtonItem;
}

- (id)_audioBarButtonItem
{
  v5.receiver = self;
  v5.super_class = BKThumbnailBookViewControllerAccessibility;
  _audioBarButtonItem = [(BKThumbnailBookViewControllerAccessibility *)&v5 _audioBarButtonItem];
  v3 = AEAXLocString(@"audio.options");
  [_audioBarButtonItem setAccessibilityLabel:v3];

  return _audioBarButtonItem;
}

- (void)scrubValueChanged:(id)changed
{
  changedCopy = changed;
  v13.receiver = self;
  v13.super_class = BKThumbnailBookViewControllerAccessibility;
  [(BKThumbnailBookViewControllerAccessibility *)&v13 scrubValueChanged:changedCopy];
  NSClassFromString(@"BKScrubberControl");
  if (objc_opt_isKindOfClass())
  {
    v5 = [changedCopy imaxValueForKey:@"callout"];
    v6 = [v5 imaxValueForKey:@"title"];
    v7 = [v6 imaxValueForKey:@"text"];

    v8 = [changedCopy imaxValueForKey:@"callout"];
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

- (void)toggleBookmark:(id)bookmark
{
  v4.receiver = self;
  v4.super_class = BKThumbnailBookViewControllerAccessibility;
  [(BKThumbnailBookViewControllerAccessibility *)&v4 toggleBookmark:bookmark];
  [(BKThumbnailBookViewControllerAccessibility *)self _updateBookmark];
}

- (BOOL)bkaxUnbookmarkPage
{
  bkAccessibilityIsPageBookmarked = [(BKThumbnailBookViewControllerAccessibility *)self bkAccessibilityIsPageBookmarked];
  if (bkAccessibilityIsPageBookmarked)
  {
    [(BKThumbnailBookViewControllerAccessibility *)self toggleBookmark:0];
    v4 = UIAccessibilityAnnouncementNotification;
    v5 = AEAXLocString(@"page.unbookmarked");
    UIAccessibilityPostNotification(v4, v5);
  }

  return bkAccessibilityIsPageBookmarked;
}

- (BOOL)bkaxBookmarkPage
{
  bkAccessibilityIsPageBookmarked = [(BKThumbnailBookViewControllerAccessibility *)self bkAccessibilityIsPageBookmarked];
  if ((bkAccessibilityIsPageBookmarked & 1) == 0)
  {
    [(BKThumbnailBookViewControllerAccessibility *)self toggleBookmark:0];
    v4 = UIAccessibilityAnnouncementNotification;
    v5 = AEAXLocString(@"page.bookmarked");
    UIAccessibilityPostNotification(v4, v5);
  }

  return bkAccessibilityIsPageBookmarked ^ 1;
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
  _bookmarkButton = [(BKThumbnailBookViewControllerAccessibility *)&v8 _bookmarkButton];
  [_bookmarkButton setAccessibilityValue:v4];
  v7.receiver = self;
  v7.super_class = BKThumbnailBookViewControllerAccessibility;
  _bookmarkBarButtonItem = [(BKThumbnailBookViewControllerAccessibility *)&v7 _bookmarkBarButtonItem];
  [_bookmarkBarButtonItem setAccessibilityValue:v4];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  _libraryBarButtonItem = [(BKThumbnailBookViewControllerAccessibility *)self _libraryBarButtonItem];
  _tocBarButtonItem = [(BKThumbnailBookViewControllerAccessibility *)self _tocBarButtonItem];
  _directorySwitchBarButtonItem = [(BKThumbnailBookViewControllerAccessibility *)self _directorySwitchBarButtonItem];
  _brightnessBarButtonItem = [(BKThumbnailBookViewControllerAccessibility *)self _brightnessBarButtonItem];
  _editToolboxBarButtonItem = [(BKThumbnailBookViewControllerAccessibility *)self _editToolboxBarButtonItem];
  _audioBarButtonItem = [(BKThumbnailBookViewControllerAccessibility *)self _audioBarButtonItem];
  _searchBarButtonItem = [(BKThumbnailBookViewControllerAccessibility *)self _searchBarButtonItem];
  _bookmarkBarButtonItem = [(BKThumbnailBookViewControllerAccessibility *)self _bookmarkBarButtonItem];
  _bookmarkButton = [(BKThumbnailBookViewControllerAccessibility *)self _bookmarkButton];
  _fontBarButtonItem = [(BKThumbnailBookViewControllerAccessibility *)self _fontBarButtonItem];

  [(BKThumbnailBookViewControllerAccessibility *)self _updateBookmark];
}

@end