@interface _SFReportWebCompatibilityIssueCollectionViewController
- (_SFReportWebCompatibilityIssueCollectionViewController)initWithBrowserContentController:(id)a3;
- (id)_issueStringForRowAtIndexPath:(id)a3;
- (id)_subCategoryStringForRowAtIndexPath:(id)a3;
- (int64_t)_numberOfIssueSubCategories;
- (void)_issueSelectedAtIndexPath:(id)a3;
- (void)_reportFeedbackForSelectedRowIndex:(int64_t)a3 selectedSubCategoryRowIndex:(int64_t)a4;
@end

@implementation _SFReportWebCompatibilityIssueCollectionViewController

- (_SFReportWebCompatibilityIssueCollectionViewController)initWithBrowserContentController:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _SFReportWebCompatibilityIssueCollectionViewController;
  v5 = [(_SFReportFeedbackCollectionViewController *)&v12 initWithBrowserContentController:v4];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_browserContentController, v4);
    v7 = [MEMORY[0x1E69C9048] issueCategories];
    v8 = [v7 safari_mapObjectsUsingBlock:&__block_literal_global_49];
    issueStrings = v6->_issueStrings;
    v6->_issueStrings = v8;

    v10 = v6;
  }

  return v6;
}

- (id)_issueStringForRowAtIndexPath:(id)a3
{
  issueStrings = self->_issueStrings;
  v4 = [a3 item];

  return [(NSArray *)issueStrings objectAtIndexedSubscript:v4];
}

- (void)_issueSelectedAtIndexPath:(id)a3
{
  v4 = MEMORY[0x1E69C9048];
  v5 = a3;
  v6 = [v4 issueCategories];
  v7 = [v5 item];

  v8 = [v6 objectAtIndexedSubscript:v7];
  selectedIssueCategory = self->_selectedIssueCategory;
  self->_selectedIssueCategory = v8;

  v10 = [(_SFReportWebCompatibilityIssueCollectionViewController *)self collectionView];
  [v10 reloadData];
}

- (int64_t)_numberOfIssueSubCategories
{
  result = self->_selectedIssueCategory;
  if (result)
  {
    v3 = [MEMORY[0x1E69C9048] subCategoriesForIssueCategory:{objc_msgSend(result, "integerValue")}];
    v4 = [v3 count];

    return v4;
  }

  return result;
}

- (id)_subCategoryStringForRowAtIndexPath:(id)a3
{
  v3 = MEMORY[0x1E69C9048];
  selectedIssueCategory = self->_selectedIssueCategory;
  v5 = a3;
  v6 = [v3 subCategoriesForIssueCategory:{-[NSNumber integerValue](selectedIssueCategory, "integerValue")}];
  v7 = [v5 item];

  v8 = [v6 objectAtIndexedSubscript:v7];
  v9 = [v3 stringForSubCategory:{objc_msgSend(v8, "integerValue")}];

  return v9;
}

- (void)_reportFeedbackForSelectedRowIndex:(int64_t)a3 selectedSubCategoryRowIndex:(int64_t)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  if (objc_opt_respondsToSelector())
  {
    v6 = [MEMORY[0x1E69C9048] subCategoriesForIssueCategory:a3];
    v7 = [v6 objectAtIndexedSubscript:a4];
    [WeakRetained reportWebCompatibilityFeedbackForActiveTabDocumentWithIssueCategory:a3 subCategory:{objc_msgSend(v7, "integerValue")}];
  }
}

@end