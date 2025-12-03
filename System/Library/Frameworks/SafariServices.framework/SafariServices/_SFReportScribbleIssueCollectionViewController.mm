@interface _SFReportScribbleIssueCollectionViewController
- (_SFReportScribbleIssueCollectionViewController)initWithBrowserContentController:(id)controller;
- (id)_issueStringForRowAtIndexPath:(id)path;
- (void)_reportFeedbackForSelectedRowIndex:(int64_t)index selectedSubCategoryRowIndex:(int64_t)rowIndex;
@end

@implementation _SFReportScribbleIssueCollectionViewController

- (_SFReportScribbleIssueCollectionViewController)initWithBrowserContentController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = _SFReportScribbleIssueCollectionViewController;
  v5 = [(_SFReportFeedbackCollectionViewController *)&v9 initWithBrowserContentController:controllerCopy];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_browserContentController, controllerCopy);
    v7 = v6;
  }

  return v6;
}

- (id)_issueStringForRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy row] && objc_msgSend(pathCopy, "row") != 1)
  {
    [pathCopy row];
  }

  v4 = _WBSLocalizedString();

  return v4;
}

- (void)_reportFeedbackForSelectedRowIndex:(int64_t)index selectedSubCategoryRowIndex:(int64_t)rowIndex
{
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained reportScribbleFeedbackForSelectedRowIndex:index];
  }
}

@end