@interface _SFReportTranslationIssueCollectionViewController
- (_SFReportTranslationIssueCollectionViewController)initWithBrowserContentController:(id)a3;
- (id)_issueStringForRowAtIndexPath:(id)a3;
- (void)_reportFeedbackForSelectedRowIndex:(int64_t)a3 selectedSubCategoryRowIndex:(int64_t)a4;
@end

@implementation _SFReportTranslationIssueCollectionViewController

- (_SFReportTranslationIssueCollectionViewController)initWithBrowserContentController:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _SFReportTranslationIssueCollectionViewController;
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
  v3 = [a3 row];
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

- (void)_reportFeedbackForSelectedRowIndex:(int64_t)a3 selectedSubCategoryRowIndex:(int64_t)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  v6 = [WeakRetained activeDocument];
  v7 = [v6 translationContext];

  [v7 requestSendFeedbackForTranslationIssue:a3];
}

@end