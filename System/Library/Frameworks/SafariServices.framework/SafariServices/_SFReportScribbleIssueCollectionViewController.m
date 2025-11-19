@interface _SFReportScribbleIssueCollectionViewController
- (_SFReportScribbleIssueCollectionViewController)initWithBrowserContentController:(id)a3;
- (id)_issueStringForRowAtIndexPath:(id)a3;
- (void)_reportFeedbackForSelectedRowIndex:(int64_t)a3 selectedSubCategoryRowIndex:(int64_t)a4;
@end

@implementation _SFReportScribbleIssueCollectionViewController

- (_SFReportScribbleIssueCollectionViewController)initWithBrowserContentController:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _SFReportScribbleIssueCollectionViewController;
  v5 = [(_SFReportFeedbackCollectionViewController *)&v9 initWithBrowserContentController:v4];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_browserContentController, v4);
    v7 = v6;
  }

  return v6;
}

- (id)_issueStringForRowAtIndexPath:(id)a3
{
  v3 = a3;
  if ([v3 row] && objc_msgSend(v3, "row") != 1)
  {
    [v3 row];
  }

  v4 = _WBSLocalizedString();

  return v4;
}

- (void)_reportFeedbackForSelectedRowIndex:(int64_t)a3 selectedSubCategoryRowIndex:(int64_t)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained reportScribbleFeedbackForSelectedRowIndex:a3];
  }
}

@end