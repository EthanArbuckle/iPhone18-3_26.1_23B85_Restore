@interface _SFReportWebCompatibilityIssueCollectionViewController
- (_SFReportWebCompatibilityIssueCollectionViewController)initWithBrowserContentController:(id)controller;
- (id)_issueStringForRowAtIndexPath:(id)path;
- (id)_subCategoryStringForRowAtIndexPath:(id)path;
- (int64_t)_numberOfIssueSubCategories;
- (void)_issueSelectedAtIndexPath:(id)path;
- (void)_reportFeedbackForSelectedRowIndex:(int64_t)index selectedSubCategoryRowIndex:(int64_t)rowIndex;
@end

@implementation _SFReportWebCompatibilityIssueCollectionViewController

- (_SFReportWebCompatibilityIssueCollectionViewController)initWithBrowserContentController:(id)controller
{
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = _SFReportWebCompatibilityIssueCollectionViewController;
  v5 = [(_SFReportFeedbackCollectionViewController *)&v12 initWithBrowserContentController:controllerCopy];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_browserContentController, controllerCopy);
    issueCategories = [MEMORY[0x1E69C9048] issueCategories];
    v8 = [issueCategories safari_mapObjectsUsingBlock:&__block_literal_global_49];
    issueStrings = v6->_issueStrings;
    v6->_issueStrings = v8;

    v10 = v6;
  }

  return v6;
}

- (id)_issueStringForRowAtIndexPath:(id)path
{
  issueStrings = self->_issueStrings;
  item = [path item];

  return [(NSArray *)issueStrings objectAtIndexedSubscript:item];
}

- (void)_issueSelectedAtIndexPath:(id)path
{
  v4 = MEMORY[0x1E69C9048];
  pathCopy = path;
  issueCategories = [v4 issueCategories];
  item = [pathCopy item];

  v8 = [issueCategories objectAtIndexedSubscript:item];
  selectedIssueCategory = self->_selectedIssueCategory;
  self->_selectedIssueCategory = v8;

  collectionView = [(_SFReportWebCompatibilityIssueCollectionViewController *)self collectionView];
  [collectionView reloadData];
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

- (id)_subCategoryStringForRowAtIndexPath:(id)path
{
  v3 = MEMORY[0x1E69C9048];
  selectedIssueCategory = self->_selectedIssueCategory;
  pathCopy = path;
  v6 = [v3 subCategoriesForIssueCategory:{-[NSNumber integerValue](selectedIssueCategory, "integerValue")}];
  item = [pathCopy item];

  v8 = [v6 objectAtIndexedSubscript:item];
  v9 = [v3 stringForSubCategory:{objc_msgSend(v8, "integerValue")}];

  return v9;
}

- (void)_reportFeedbackForSelectedRowIndex:(int64_t)index selectedSubCategoryRowIndex:(int64_t)rowIndex
{
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  if (objc_opt_respondsToSelector())
  {
    v6 = [MEMORY[0x1E69C9048] subCategoriesForIssueCategory:index];
    v7 = [v6 objectAtIndexedSubscript:rowIndex];
    [WeakRetained reportWebCompatibilityFeedbackForActiveTabDocumentWithIssueCategory:index subCategory:{objc_msgSend(v7, "integerValue")}];
  }
}

@end