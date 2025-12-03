@interface _SFReportTranslationIssueCollectionViewController
- (_SFReportTranslationIssueCollectionViewController)initWithBrowserContentController:(id)controller;
- (id)_issueStringForRowAtIndexPath:(id)path;
- (void)_reportFeedbackForSelectedRowIndex:(int64_t)index selectedSubCategoryRowIndex:(int64_t)rowIndex;
@end

@implementation _SFReportTranslationIssueCollectionViewController

- (_SFReportTranslationIssueCollectionViewController)initWithBrowserContentController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = _SFReportTranslationIssueCollectionViewController;
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
  v3 = [path row];
  v4 = 0;
  if (v3 <= 2)
  {
    if (v3 > 2)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v3 <= 5 || v3 == 6)
  {
LABEL_7:
    v4 = _WBSLocalizedString();
  }

LABEL_8:

  return v4;
}

- (void)_reportFeedbackForSelectedRowIndex:(int64_t)index selectedSubCategoryRowIndex:(int64_t)rowIndex
{
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  activeDocument = [WeakRetained activeDocument];
  translationContext = [activeDocument translationContext];

  [translationContext requestSendFeedbackForTranslationIssue:index];
}

@end