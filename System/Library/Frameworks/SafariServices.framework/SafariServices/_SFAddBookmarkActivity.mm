@interface _SFAddBookmarkActivity
- (BOOL)canPerformWithActivityItems:(id)items;
- (_SFSingleBookmarkNavigationController)bookmarkNavigationController;
- (id)activityTitle;
@end

@implementation _SFAddBookmarkActivity

- (id)activityTitle
{
  [MEMORY[0x1E69C8880] isSaveForLaterEnabled];
  v2 = _WBSLocalizedString();

  return v2;
}

- (BOOL)canPerformWithActivityItems:(id)items
{
  mEMORY[0x1E69B1B18] = [MEMORY[0x1E69B1B18] sharedFeatureManager];
  isBookmarksAvailable = [mEMORY[0x1E69B1B18] isBookmarksAvailable];

  if (!isBookmarksAvailable)
  {
    return 0;
  }

  mEMORY[0x1E69E20E8] = [MEMORY[0x1E69E20E8] sharedWebFilterSettings];
  usesAllowedSitesOnly = [mEMORY[0x1E69E20E8] usesAllowedSitesOnly];

  if (usesAllowedSitesOnly)
  {
    return 0;
  }

  v8 = MEMORY[0x1E696AAE8];

  return [v8 safari_isMobileSafariInstalled];
}

- (_SFSingleBookmarkNavigationController)bookmarkNavigationController
{
  bookmarkNavigationController = self->_bookmarkNavigationController;
  if (!bookmarkNavigationController)
  {
    v4 = [_SFSingleBookmarkNavigationController alloc];
    safariBookmarkCollection = [MEMORY[0x1E69E20F8] safariBookmarkCollection];
    v6 = [(_SFSingleBookmarkNavigationController *)v4 initWithCollection:safariBookmarkCollection];
    v7 = self->_bookmarkNavigationController;
    self->_bookmarkNavigationController = v6;

    [(_SFSingleBookmarkNavigationController *)self->_bookmarkNavigationController setBookmarkNavDelegate:self];
    bookmarkNavigationController = self->_bookmarkNavigationController;
  }

  return bookmarkNavigationController;
}

@end