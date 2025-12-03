@interface MFSuggestionController
+ (void)initialize;
- (MFMessageHeaderView)headerView;
- (MFSuggestionController)initWithDelegate:(id)delegate headerView:(id)view;
- (MFSuggestionHandlingDelegate)delegate;
- (id)createAnalysisOperation;
- (id)suggestionCategoryComparatorForManager:(id)manager;
- (id)viewControllerForPresentingFromBannerByPresenter:(id)presenter;
- (void)clearSuggestionsBannerAnimated:(BOOL)animated;
- (void)presentViewController:(id)controller;
- (void)suggestionPresenterWantsToShowBanner:(id)banner;
@end

@implementation MFSuggestionController

+ (void)initialize
{
  if (qword_1006DD6D0 != -1)
  {
    sub_10048C3A8();
  }
}

- (MFSuggestionController)initWithDelegate:(id)delegate headerView:(id)view
{
  delegateCopy = delegate;
  viewCopy = view;
  v15.receiver = self;
  v15.super_class = MFSuggestionController;
  v8 = [(MFSuggestionController *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, delegateCopy);
    objc_storeWeak(&v9->_headerView, viewCopy);
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
  suggestionPresenter = [(MFSuggestionController *)self suggestionPresenter];
  scheduler = [(MFSuggestionController *)self scheduler];
  v6 = [(MFSuggestionAnalysisOperation *)v3 initWithDelegate:self presenter:suggestionPresenter scheduler:scheduler];

  return v6;
}

- (void)clearSuggestionsBannerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  WeakRetained = objc_loadWeakRetained(&self->_headerView);
  suggestionBanner = [(MFSuggestionController *)self suggestionBanner];
  [WeakRetained removeHeaderBlock:suggestionBanner animated:animatedCopy];

  [(MFSuggestionController *)self setSuggestionBanner:0];
}

- (void)presentViewController:(id)controller
{
  controllerCopy = controller;
  delegate = [(MFSuggestionController *)self delegate];
  [delegate presentSuggestionViewController:controllerCopy];
}

- (void)suggestionPresenterWantsToShowBanner:(id)banner
{
  bannerCopy = banner;
  delegate = [(MFSuggestionController *)self delegate];
  showsBanners = [delegate showsBanners];

  if (showsBanners)
  {
    banner = [bannerCopy banner];
    suggestionBanner = [(MFSuggestionController *)self suggestionBanner];

    if (suggestionBanner)
    {
      suggestionBanner2 = [(MFSuggestionController *)self suggestionBanner];
      [suggestionBanner2 setBanner:banner];
    }

    else
    {
      suggestionBanner2 = [[MFSuggestionBannerView alloc] initWithFrame:banner banner:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
      [(MFSuggestionController *)self setSuggestionBanner:suggestionBanner2];
    }

    suggestions = [bannerCopy suggestions];
    if ([suggestions count] == 1)
    {
      firstObject = [suggestions firstObject];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        [banner setImages:0];
      }
    }

    WeakRetained = objc_loadWeakRetained(&self->_headerView);
    suggestionBanner3 = [(MFSuggestionController *)self suggestionBanner];
    [WeakRetained insertHeaderBlock:suggestionBanner3 atIndex:0 animated:1];
  }
}

- (id)viewControllerForPresentingFromBannerByPresenter:(id)presenter
{
  delegate = [(MFSuggestionController *)self delegate];
  viewControllerForPresentingSuggestions = [delegate viewControllerForPresentingSuggestions];

  return viewControllerForPresentingSuggestions;
}

- (id)suggestionCategoryComparatorForManager:(id)manager
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