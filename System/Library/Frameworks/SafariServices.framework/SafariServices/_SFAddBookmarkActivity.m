@interface _SFAddBookmarkActivity
- (BOOL)canPerformWithActivityItems:(id)a3;
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

- (BOOL)canPerformWithActivityItems:(id)a3
{
  v3 = [MEMORY[0x1E69B1B18] sharedFeatureManager];
  v4 = [v3 isBookmarksAvailable];

  if (!v4)
  {
    return 0;
  }

  v5 = [MEMORY[0x1E69E20E8] sharedWebFilterSettings];
  v6 = [v5 usesAllowedSitesOnly];

  if (v6)
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
    v5 = [MEMORY[0x1E69E20F8] safariBookmarkCollection];
    v6 = [(_SFSingleBookmarkNavigationController *)v4 initWithCollection:v5];
    v7 = self->_bookmarkNavigationController;
    self->_bookmarkNavigationController = v6;

    [(_SFSingleBookmarkNavigationController *)self->_bookmarkNavigationController setBookmarkNavDelegate:self];
    bookmarkNavigationController = self->_bookmarkNavigationController;
  }

  return bookmarkNavigationController;
}

@end