@interface MFSuggestionController
+ (void)initialize;
- (MFMessageHeaderView)headerView;
- (MFSuggestionController)initWithDelegate:(id)a3 headerView:(id)a4;
- (MFSuggestionHandlingDelegate)delegate;
- (id)createAnalysisOperation;
- (id)suggestionCategoryComparatorForManager:(id)a3;
- (id)viewControllerForPresentingFromBannerByPresenter:(id)a3;
- (void)clearSuggestionsBannerAnimated:(BOOL)a3;
- (void)presentViewController:(id)a3;
- (void)suggestionPresenterWantsToShowBanner:(id)a3;
@end

@implementation MFSuggestionController

+ (void)initialize
{
  if (qword_1006DD6D0 != -1)
  {
    sub_10048C3A8();
  }
}

- (MFSuggestionController)initWithDelegate:(id)a3 headerView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = MFSuggestionController;
  v8 = [(MFSuggestionController *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, v6);
    objc_storeWeak(&v9->_headerView, v7);
    v10 = objc_alloc_init(SGFoundInSuggestionPresenter);
    suggestionPresenter = v9->_suggestionPresenter;
    v9->_suggestionPresenter = v10;

    [(SGFoundInSuggestionPresenter *)v9->_suggestionPresenter setDelegate:v9];
    v12 = [EFScheduler serialDispatchQueueSchedulerWithName:@"com.apple.mobilemail.MFSuggestionController" qualityOfService:25];
    scheduler = v9->_scheduler;
    v9->_scheduler = v12;
  }

  return v9;
}

- (id)createAnalysisOperation
{
  v3 = [MFSuggestionAnalysisOperation alloc];
  v4 = [(MFSuggestionController *)self suggestionPresenter];
  v5 = [(MFSuggestionController *)self scheduler];
  v6 = [(MFSuggestionAnalysisOperation *)v3 initWithDelegate:self presenter:v4 scheduler:v5];

  return v6;
}

- (void)clearSuggestionsBannerAnimated:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_headerView);
  v6 = [(MFSuggestionController *)self suggestionBanner];
  [WeakRetained removeHeaderBlock:v6 animated:v3];

  [(MFSuggestionController *)self setSuggestionBanner:0];
}

- (void)presentViewController:(id)a3
{
  v5 = a3;
  v4 = [(MFSuggestionController *)self delegate];
  [v4 presentSuggestionViewController:v5];
}

- (void)suggestionPresenterWantsToShowBanner:(id)a3
{
  v14 = a3;
  v4 = [(MFSuggestionController *)self delegate];
  v5 = [v4 showsBanners];

  if (v5)
  {
    v6 = [v14 banner];
    v7 = [(MFSuggestionController *)self suggestionBanner];

    if (v7)
    {
      v8 = [(MFSuggestionController *)self suggestionBanner];
      [v8 setBanner:v6];
    }

    else
    {
      v8 = [[MFSuggestionBannerView alloc] initWithFrame:v6 banner:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
      [(MFSuggestionController *)self setSuggestionBanner:v8];
    }

    v9 = [v14 suggestions];
    if ([v9 count] == 1)
    {
      v10 = [v9 firstObject];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        [v6 setImages:0];
      }
    }

    WeakRetained = objc_loadWeakRetained(&self->_headerView);
    v13 = [(MFSuggestionController *)self suggestionBanner];
    [WeakRetained insertHeaderBlock:v13 atIndex:0 animated:1];
  }
}

- (id)viewControllerForPresentingFromBannerByPresenter:(id)a3
{
  v3 = [(MFSuggestionController *)self delegate];
  v4 = [v3 viewControllerForPresentingSuggestions];

  return v4;
}

- (id)suggestionCategoryComparatorForManager:(id)a3
{
  v3 = +[EMListUnsubscribeSuggestion unsubscribeSuggestionComparator];

  return v3;
}

- (MFSuggestionHandlingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (MFMessageHeaderView)headerView
{
  WeakRetained = objc_loadWeakRetained(&self->_headerView);

  return WeakRetained;
}

@end