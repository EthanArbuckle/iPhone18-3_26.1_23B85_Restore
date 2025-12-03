@interface UGCInlinePOIEnrichmentViewController
- (UGCInlinePOIEnrichmentController)enrichmentController;
- (UGCInlinePOIEnrichmentViewController)initWithPOIEnrichmentForm:(id)form;
- (void)formDidChange:(id)change;
- (void)poiEnrichmentViewController:(id)controller captureUserAction:(int)action value:(id)value target:(int)target;
- (void)poiEnrichmentViewController:(id)controller captureUserActionForRatingCategoryState:(int64_t)state value:(id)value target:(int)target;
- (void)poiEnrichmentViewController:(id)controller didSelectAddPhotosUsingSourceType:(int64_t)type presentationOptions:(id)options;
- (void)poiEnrichmentViewController:(id)controller didSelectTermsOfServiceURL:(id)l;
- (void)poiEnrichmentViewController:(id)controller presentInformedConsentIfNeededWithCompletion:(id)completion;
- (void)poiEnrichmentViewControllerPresentPOIEnrichment:(id)enrichment;
- (void)setFormInteractionEnabled:(BOOL)enabled;
- (void)viewDidLoad;
@end

@implementation UGCInlinePOIEnrichmentViewController

- (UGCInlinePOIEnrichmentController)enrichmentController
{
  WeakRetained = objc_loadWeakRetained(&self->_enrichmentController);

  return WeakRetained;
}

- (void)poiEnrichmentViewControllerPresentPOIEnrichment:(id)enrichment
{
  enrichmentController = [(UGCInlinePOIEnrichmentViewController *)self enrichmentController];
  [enrichmentController presentPOIEnrichment];
}

- (void)poiEnrichmentViewController:(id)controller didSelectTermsOfServiceURL:(id)l
{
  lCopy = l;
  enrichmentController = [(UGCInlinePOIEnrichmentViewController *)self enrichmentController];
  [enrichmentController openTermsOfServiceURL:lCopy];
}

- (void)poiEnrichmentViewController:(id)controller captureUserAction:(int)action value:(id)value target:(int)target
{
  v6 = *&target;
  v7 = *&action;
  valueCopy = value;
  enrichmentController = [(UGCInlinePOIEnrichmentViewController *)self enrichmentController];
  [enrichmentController captureUserAction:v7 value:valueCopy target:v6];
}

- (void)poiEnrichmentViewController:(id)controller captureUserActionForRatingCategoryState:(int64_t)state value:(id)value target:(int)target
{
  v6 = *&target;
  valueCopy = value;
  enrichmentController = [(UGCInlinePOIEnrichmentViewController *)self enrichmentController];
  [enrichmentController captureUserActionForRatingState:state value:valueCopy target:v6];
}

- (void)poiEnrichmentViewController:(id)controller didSelectAddPhotosUsingSourceType:(int64_t)type presentationOptions:(id)options
{
  optionsCopy = options;
  enrichmentController = [(UGCInlinePOIEnrichmentViewController *)self enrichmentController];
  [enrichmentController requestAddPhotosWithSourceType:type presentationOptions:optionsCopy];
}

- (void)poiEnrichmentViewController:(id)controller presentInformedConsentIfNeededWithCompletion:(id)completion
{
  completionCopy = completion;
  enrichmentController = [(UGCInlinePOIEnrichmentViewController *)self enrichmentController];
  [enrichmentController presentInformedConsentIfNeededWithCompletion:completionCopy];
}

- (void)formDidChange:(id)change
{
  isComplete = [(UGCPOIEnrichmentForm *)self->_poiEnrichmentForm isComplete];
  if (qword_10195F098 != -1)
  {
    dispatch_once(&qword_10195F098, &stru_101651A48);
  }

  v4 = qword_10195F090;
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (isComplete)
  {
    if (v5)
    {
      v9 = 0;
      v6 = "POI enrichement form is complete";
      v7 = &v9;
LABEL_8:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, v6, v7, 2u);
    }
  }

  else if (v5)
  {
    v8 = 0;
    v6 = "POI enrichement form is not complete";
    v7 = &v8;
    goto LABEL_8;
  }
}

- (void)setFormInteractionEnabled:(BOOL)enabled
{
  if (self->_formInteractionEnabled != enabled)
  {
    enabledCopy = enabled;
    self->_formInteractionEnabled = enabled;
    if ([(UGCInlinePOIEnrichmentViewController *)self isViewLoaded])
    {
      contentVC = self->_contentVC;

      [(UGCPOIEnrichmentViewController *)contentVC setFormInteractionEnabled:enabledCopy];
    }
  }
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = UGCInlinePOIEnrichmentViewController;
  [(UGCInlinePOIEnrichmentViewController *)&v13 viewDidLoad];
  [(UGCInlinePOIEnrichmentViewController *)self _mapsui_resetViewLayoutMargins];
  v3 = [[UGCPOIEnrichmentViewController alloc] initWithPOIEnrichmentForm:self->_poiEnrichmentForm presentationContext:1];
  contentVC = self->_contentVC;
  self->_contentVC = v3;

  [(UGCPOIEnrichmentViewController *)self->_contentVC setIsInlineMode:1];
  [(UGCPOIEnrichmentViewController *)self->_contentVC setFormInteractionEnabled:self->_formInteractionEnabled];
  [(UGCPOIEnrichmentViewController *)self->_contentVC setDelegate:self];
  view = [(UGCPOIEnrichmentViewController *)self->_contentVC view];
  [view setPreservesSuperviewLayoutMargins:1];

  view2 = [(UGCInlinePOIEnrichmentViewController *)self view];
  view3 = [(UGCPOIEnrichmentViewController *)self->_contentVC view];
  [view2 addSubview:view3];

  [(UGCInlinePOIEnrichmentViewController *)self addChildViewController:self->_contentVC];
  [(UGCPOIEnrichmentViewController *)self->_contentVC didMoveToParentViewController:self];
  v8 = [MUEdgeLayout alloc];
  view4 = [(UGCPOIEnrichmentViewController *)self->_contentVC view];
  view5 = [(UGCInlinePOIEnrichmentViewController *)self view];
  v11 = [v8 initWithItem:view4 container:view5];

  v14 = v11;
  v12 = [NSArray arrayWithObjects:&v14 count:1];
  [NSLayoutConstraint _mapsui_activateLayouts:v12];
}

- (UGCInlinePOIEnrichmentViewController)initWithPOIEnrichmentForm:(id)form
{
  formCopy = form;
  v10.receiver = self;
  v10.super_class = UGCInlinePOIEnrichmentViewController;
  v6 = [(UGCInlinePOIEnrichmentViewController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_poiEnrichmentForm, form);
    ratingsForm = [(UGCPOIEnrichmentForm *)v7->_poiEnrichmentForm ratingsForm];
    [ratingsForm addObserver:v7];
  }

  return v7;
}

@end