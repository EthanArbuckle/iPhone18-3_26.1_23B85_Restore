@interface UGCPOIEnrichmentViewController
- (NSArray)sectionControllers;
- (UGCPOIEnrichmentViewController)initWithPOIEnrichmentForm:(id)form presentationContext:(int64_t)context;
- (UGCPOIEnrichmentViewControllerDelegate)delegate;
- (int)currentTarget;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)_updateConstraints;
- (void)_updateRowItems;
- (void)_updateScrollViewHairlinesAnimated:(BOOL)animated;
- (void)captureUserAction:(int)action withValue:(id)value;
- (void)photosSectionController:(id)controller selectedAddPhotosUsingSourceType:(int64_t)type presentationOptions:(id)options;
- (void)photosSectionController:(id)controller userActionCapturedForAction:(int)action value:(id)value;
- (void)photosSectionController:(id)controller willShowPhotoCarousel:(BOOL)carousel;
- (void)ratingsSectionController:(id)controller presentInformedConsentIfNeededWithCompletion:(id)completion;
- (void)ratingsSectionController:(id)controller userActionCapturedForRatingCategoryState:(int64_t)state value:(id)value;
- (void)ratingsSectionControllerPresentPOIEnrichment:(id)enrichment;
- (void)sectionControllerDidUpdateRowItems:(id)items;
- (void)sectionControllerRequestsLegalAttribution:(id)attribution;
- (void)setFormInteractionEnabled:(BOOL)enabled;
- (void)setIsInlineMode:(BOOL)mode;
- (void)setScrollEnabled:(BOOL)enabled;
- (void)submissionFinishedWithError:(id)error;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation UGCPOIEnrichmentViewController

- (UGCPOIEnrichmentViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)captureUserAction:(int)action withValue:(id)value
{
  v4 = *&action;
  valueCopy = value;
  [GEOAPPortal captureUserAction:v4 target:[(UGCPOIEnrichmentViewController *)self currentTarget] value:valueCopy];
}

- (int)currentTarget
{
  presentationContext = [(UGCPOIEnrichmentViewController *)self presentationContext];
  if (presentationContext > 2)
  {
    return 0;
  }

  else
  {
    return dword_101215418[presentationContext];
  }
}

- (void)photosSectionController:(id)controller userActionCapturedForAction:(int)action value:(id)value
{
  v5 = *&action;
  valueCopy = value;
  delegate = [(UGCPOIEnrichmentViewController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(UGCPOIEnrichmentViewController *)self delegate];
    [delegate2 poiEnrichmentViewController:self captureUserAction:v5 value:valueCopy target:{-[UGCPOIEnrichmentViewController currentTarget](self, "currentTarget")}];
  }
}

- (void)photosSectionController:(id)controller selectedAddPhotosUsingSourceType:(int64_t)type presentationOptions:(id)options
{
  optionsCopy = options;
  if ([(UGCPOIEnrichmentViewController *)self defersPhotoPresentationToParent])
  {
    delegate = [(UGCPOIEnrichmentViewController *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      delegate2 = [(UGCPOIEnrichmentViewController *)self delegate];
      [delegate2 poiEnrichmentViewController:self didSelectAddPhotosUsingSourceType:type presentationOptions:optionsCopy];
    }
  }
}

- (void)ratingsSectionControllerPresentPOIEnrichment:(id)enrichment
{
  delegate = [(UGCPOIEnrichmentViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(UGCPOIEnrichmentViewController *)self delegate];
    [delegate2 poiEnrichmentViewControllerPresentPOIEnrichment:self];
  }
}

- (void)ratingsSectionController:(id)controller userActionCapturedForRatingCategoryState:(int64_t)state value:(id)value
{
  valueCopy = value;
  delegate = [(UGCPOIEnrichmentViewController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(UGCPOIEnrichmentViewController *)self delegate];
    [delegate2 poiEnrichmentViewController:self captureUserActionForRatingCategoryState:state value:valueCopy target:{-[UGCPOIEnrichmentViewController currentTarget](self, "currentTarget")}];
  }
}

- (void)ratingsSectionController:(id)controller presentInformedConsentIfNeededWithCompletion:(id)completion
{
  completionCopy = completion;
  delegate = [(UGCPOIEnrichmentViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(UGCPOIEnrichmentViewController *)self delegate];
    [delegate2 poiEnrichmentViewController:self presentInformedConsentIfNeededWithCompletion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 1);
  }
}

- (void)sectionControllerRequestsLegalAttribution:(id)attribution
{
  v4 = GEOConfigGetString();
  v7 = [NSURL URLWithString:v4];

  delegate = [(UGCPOIEnrichmentViewController *)self delegate];
  LOBYTE(v4) = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(UGCPOIEnrichmentViewController *)self delegate];
    [delegate2 poiEnrichmentViewController:self didSelectTermsOfServiceURL:v7];
  }

  else
  {
    delegate2 = [[SFSafariViewController alloc] initWithURL:v7];
    [(UGCPOIEnrichmentViewController *)self presentViewController:delegate2 animated:1 completion:0];
  }
}

- (void)photosSectionController:(id)controller willShowPhotoCarousel:(BOOL)carousel
{
  if ([(UGCPOIEnrichmentViewController *)self hasTransitionedToPhotoCarousel]!= carousel)
  {
    [(UGCPOIEnrichmentViewController *)self setHasTransitionedToPhotoCarousel:1];

    [(UGCPOIEnrichmentViewController *)self _updateRowItems];
  }
}

- (void)sectionControllerDidUpdateRowItems:(id)items
{
  [(UGCPOIEnrichmentViewController *)self _updateRowItems];
  delegate = [(UGCPOIEnrichmentViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(UGCPOIEnrichmentViewController *)self delegate];
    [delegate2 contentDidUpdate];
  }
}

- (void)submissionFinishedWithError:(id)error
{
  if (!error)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    sectionControllers = [(UGCPOIEnrichmentViewController *)self sectionControllers];
    v4 = [sectionControllers countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(sectionControllers);
          }

          [*(*(&v8 + 1) + 8 * v7) handleSuccessfulSubmission];
          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [sectionControllers countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }
}

- (void)_updateScrollViewHairlinesAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(UGCPOIEnrichmentViewController *)self isViewLoaded])
  {
    topScrollHairline = self->_topScrollHairline;
    if (self->_scrollEnabled)
    {
      if (!topScrollHairline)
      {
        v6 = [[UGCHairlineView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
        v7 = self->_topScrollHairline;
        self->_topScrollHairline = v6;

        view = [(UGCPOIEnrichmentViewController *)self view];
        [view addSubview:self->_topScrollHairline];

        v9 = [[MUEdgeLayout alloc] initWithItem:self->_topScrollHairline container:self->_scrollView];
        [v9 setEdges:11];
        [v9 activate];
      }

      if (!self->_bottomScrollHairline)
      {
        v12 = [[UGCHairlineView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
        bottomScrollHairline = self->_bottomScrollHairline;
        self->_bottomScrollHairline = v12;

        view2 = [(UGCPOIEnrichmentViewController *)self view];
        [view2 addSubview:self->_bottomScrollHairline];

        v15 = [[MUEdgeLayout alloc] initWithItem:self->_bottomScrollHairline container:self->_scrollView];
        [v15 setEdges:14];
        [v15 activate];
      }

      v16 = [(UIScrollView *)self->_scrollView _maps_edgesObscuringContentIncludingContentInsets:0];
      if (v16)
      {
        v17 = 1.0;
      }

      else
      {
        v17 = 0.0;
      }

      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100B19488;
      v22[3] = &unk_101638450;
      v22[4] = self;
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100B1949C;
      v21[3] = &unk_101638478;
      v21[4] = self;
      [UIScrollView _maps_updateHairlineAlpha:animatedCopy animated:v22 getter:v21 setter:v17];
      if ((v16 & 4) != 0)
      {
        v18 = 1.0;
      }

      else
      {
        v18 = 0.0;
      }

      v19[4] = self;
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100B194B0;
      v20[3] = &unk_101638450;
      v20[4] = self;
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100B194C4;
      v19[3] = &unk_101638478;
      [UIScrollView _maps_updateHairlineAlpha:animatedCopy animated:v20 getter:v19 setter:v18];
    }

    else
    {
      [(UGCHairlineView *)topScrollHairline removeFromSuperview];
      v10 = self->_topScrollHairline;
      self->_topScrollHairline = 0;

      [(UGCHairlineView *)self->_bottomScrollHairline removeFromSuperview];
      v11 = self->_bottomScrollHairline;
      self->_bottomScrollHairline = 0;
    }
  }
}

- (void)_updateRowItems
{
  v3 = +[NSMutableArray array];
  [(MUStackLayout *)self->_stackLayout prepare];
  [(MUStackLayout *)self->_stackLayout setArrangedLayoutItems:&__NSArray0__struct];
  if (self->_isInlineMode)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = 16.0;
  }

  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = [(UGCPOIEnrichmentViewController *)self sectionControllers];
  v40 = [obj countByEnumeratingWithState:&v50 objects:v56 count:16];
  if (v40)
  {
    v39 = *v51;
    do
    {
      v5 = 0;
      do
      {
        if (*v51 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v41 = v5;
        v6 = *(*(&v50 + 1) + 8 * v5);
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        rowItems = [v6 rowItems];
        v8 = [rowItems countByEnumeratingWithState:&v46 objects:v55 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v47;
          do
          {
            for (i = 0; i != v9; i = i + 1)
            {
              if (*v47 != v10)
              {
                objc_enumerationMutation(rowItems);
              }

              v12 = *(*(&v46 + 1) + 8 * i);
              rowView = [v12 rowView];
              if (([rowView isHidden] & 1) == 0)
              {
                [rowView setPreservesSuperviewLayoutMargins:1];
                [v3 addObject:rowView];
                [(UIView *)self->_contentView addSubview:rowView];
                [(MUStackLayout *)self->_stackLayout addArrangedLayoutItem:rowView];
                [v12 bottomSpacing];
                if (v14 > 0.0)
                {
                  v15 = v3;
                  stackLayout = self->_stackLayout;
                  [v12 bottomSpacing];
                  v17 = stackLayout;
                  v3 = v15;
                  [(MUStackLayout *)v17 setPadding:rowView forArrangedLayoutItem:0.0, v4, v18, v4];
                }
              }
            }

            v9 = [rowItems countByEnumeratingWithState:&v46 objects:v55 count:16];
          }

          while (v9);
        }

        v5 = v41 + 1;
      }

      while ((v41 + 1) != v40);
      v40 = [obj countByEnumeratingWithState:&v50 objects:v56 count:16];
    }

    while (v40);
  }

  arrangedLayoutItems = [(MUStackLayout *)self->_stackLayout arrangedLayoutItems];
  v20 = [arrangedLayoutItems count];

  if (v20)
  {
    if (self->_scrollEnabled && sub_10000FA08(self) != 5)
    {
      v29 = self->_stackLayout;
      arrangedLayoutItems2 = [(MUStackLayout *)v29 arrangedLayoutItems];
      lastObject = [arrangedLayoutItems2 lastObject];
      top = 0.0;
      bottom = 12.0;
      v28 = v29;
      leading = v4;
      trailing = v4;
    }

    else
    {
      v21 = self->_stackLayout;
      arrangedLayoutItems2 = [(MUStackLayout *)v21 arrangedLayoutItems];
      lastObject = [arrangedLayoutItems2 lastObject];
      top = NSDirectionalEdgeInsetsZero.top;
      leading = NSDirectionalEdgeInsetsZero.leading;
      bottom = NSDirectionalEdgeInsetsZero.bottom;
      trailing = NSDirectionalEdgeInsetsZero.trailing;
      v28 = v21;
    }

    [(MUStackLayout *)v28 setPadding:lastObject forArrangedLayoutItem:top, leading, bottom, trailing];
  }

  [(MUStackLayout *)self->_stackLayout activate];
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v30 = self->_rowViews;
  v31 = [(NSArray *)v30 countByEnumeratingWithState:&v42 objects:v54 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v43;
    do
    {
      for (j = 0; j != v32; j = j + 1)
      {
        if (*v43 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v42 + 1) + 8 * j);
        if (([v3 containsObject:v35] & 1) == 0)
        {
          [v35 removeFromSuperview];
        }
      }

      v32 = [(NSArray *)v30 countByEnumeratingWithState:&v42 objects:v54 count:16];
    }

    while (v32);
  }

  v36 = [v3 copy];
  rowViews = self->_rowViews;
  self->_rowViews = v36;
}

- (void)setFormInteractionEnabled:(BOOL)enabled
{
  if (self->_formInteractionEnabled != enabled)
  {
    enabledCopy = enabled;
    self->_formInteractionEnabled = enabled;
    if ([(UGCPOIEnrichmentViewController *)self isViewLoaded])
    {
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      sectionControllers = [(UGCPOIEnrichmentViewController *)self sectionControllers];
      v6 = [sectionControllers countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v11;
        do
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v11 != v8)
            {
              objc_enumerationMutation(sectionControllers);
            }

            [*(*(&v10 + 1) + 8 * i) setFormInteractionEnabled:enabledCopy];
          }

          v7 = [sectionControllers countByEnumeratingWithState:&v10 objects:v14 count:16];
        }

        while (v7);
      }
    }
  }
}

- (void)setScrollEnabled:(BOOL)enabled
{
  if (self->_scrollEnabled != enabled)
  {
    self->_scrollEnabled = enabled;
    if ([(UGCPOIEnrichmentViewController *)self isViewLoaded])
    {
      [(UIScrollView *)self->_scrollView setScrollEnabled:self->_scrollEnabled];
      [(UGCPOIEnrichmentViewController *)self _updateConstraints];
    }

    [(UGCPOIEnrichmentViewController *)self _updateScrollViewHairlinesAnimated:0];
  }
}

- (void)setIsInlineMode:(BOOL)mode
{
  modeCopy = mode;
  self->_isInlineMode = mode;
  [(UGCPOIEnrichmentViewController *)self setScrollEnabled:!mode];
  [(UGCPOIEnrichmentViewController *)self setDefersPhotoPresentationToParent:modeCopy];

  [(UGCPOIEnrichmentViewController *)self setUseTopPromotedAndInsetGroupedNutritionLabel:modeCopy];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = UGCPOIEnrichmentViewController;
  [(UGCPOIEnrichmentViewController *)&v3 viewDidLayoutSubviews];
  [(UGCPOIEnrichmentViewController *)self _updateScrollViewHairlinesAnimated:0];
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = UGCPOIEnrichmentViewController;
  [(UGCPOIEnrichmentViewController *)&v12 viewDidLoad];
  [(UGCPOIEnrichmentViewController *)self _setupSubviews];
  [(UGCPOIEnrichmentViewController *)self _setupConstraints];
  [(UGCPOIEnrichmentViewController *)self _updateConstraints];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  sectionControllers = [(UGCPOIEnrichmentViewController *)self sectionControllers];
  v4 = [sectionControllers countByEnumeratingWithState:&v8 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(sectionControllers);
        }

        [*(*(&v8 + 1) + 8 * v7) setFormInteractionEnabled:self->_formInteractionEnabled];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [sectionControllers countByEnumeratingWithState:&v8 objects:v13 count:16];
    }

    while (v5);
  }

  if (![(UGCPOIEnrichmentViewController *)self isInlineMode])
  {
    [(UGCPOIEnrichmentViewController *)self captureUserAction:2142];
  }
}

- (void)_updateConstraints
{
  [(NSLayoutConstraint *)self->_heightConstraint setActive:0];
  scrollEnabled = self->_scrollEnabled;
  frameLayoutGuide = [(UIScrollView *)self->_scrollView frameLayoutGuide];
  heightAnchor = [frameLayoutGuide heightAnchor];
  contentLayoutGuide = [(UIScrollView *)self->_scrollView contentLayoutGuide];
  heightAnchor2 = [contentLayoutGuide heightAnchor];
  if (scrollEnabled)
  {
    v8 = [heightAnchor constraintGreaterThanOrEqualToAnchor:heightAnchor2];
    heightConstraint = self->_heightConstraint;
    self->_heightConstraint = v8;

    LODWORD(v10) = 1112276992;
    [(NSLayoutConstraint *)self->_heightConstraint setPriority:v10];
  }

  else
  {
    v11 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
    v12 = self->_heightConstraint;
    self->_heightConstraint = v11;
  }

  v13 = self->_heightConstraint;

  [(NSLayoutConstraint *)v13 setActive:1];
}

- (void)_setupConstraints
{
  v3 = [MUEdgeLayout alloc];
  scrollView = self->_scrollView;
  view = [(UGCPOIEnrichmentViewController *)self view];
  v6 = [v3 initWithItem:scrollView container:view];

  v7 = [MUEdgeLayout alloc];
  contentView = self->_contentView;
  contentLayoutGuide = [(UIScrollView *)self->_scrollView contentLayoutGuide];
  v10 = [v7 initWithItem:contentView container:contentLayoutGuide];

  contentLayoutGuide2 = [(UIScrollView *)self->_scrollView contentLayoutGuide];
  widthAnchor = [contentLayoutGuide2 widthAnchor];
  frameLayoutGuide = [(UIScrollView *)self->_scrollView frameLayoutGuide];
  widthAnchor2 = [frameLayoutGuide widthAnchor];
  v15 = [widthAnchor constraintEqualToAnchor:widthAnchor2];

  v19[0] = self->_stackLayout;
  v19[1] = v6;
  v19[2] = v10;
  v16 = [NSArray arrayWithObjects:v19 count:3];
  v18 = v15;
  v17 = [NSArray arrayWithObjects:&v18 count:1];
  [NSLayoutConstraint _mapsui_activateLayouts:v16 constraints:v17];
}

- (void)_setupSubviews
{
  [(UGCPOIEnrichmentViewController *)self _mapsui_resetViewLayoutMargins];
  v3 = +[UIColor clearColor];
  view = [(UGCPOIEnrichmentViewController *)self view];
  [view setBackgroundColor:v3];

  view2 = [(UGCPOIEnrichmentViewController *)self view];
  [view2 setAccessibilityIdentifier:@"UGCPOIEnrichmentView"];

  v6 = [UIScrollView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v10 = [v6 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  scrollView = self->_scrollView;
  self->_scrollView = v10;

  [(UIScrollView *)self->_scrollView setScrollEnabled:self->_scrollEnabled];
  [(UIScrollView *)self->_scrollView setDelegate:self];
  [(UIScrollView *)self->_scrollView _mapsui_resetLayoutMargins];
  v12 = sub_10000FA08(self);
  v13 = self->_scrollView;
  if (v12 == 5)
  {
    [(UIScrollView *)v13 setPreservesSuperviewLayoutMargins:1];
  }

  else
  {
    [(UIScrollView *)v13 setPreservesSuperviewLayoutMargins:0];
    if (_UISolariumEnabled())
    {
      v14 = 0.0;
    }

    else
    {
      v14 = 16.0;
    }

    if (_UISolariumEnabled())
    {
      v15 = 0.0;
    }

    else
    {
      v15 = 16.0;
    }

    [(UIScrollView *)self->_scrollView setDirectionalLayoutMargins:0.0, v14, 0.0, v15];
    [(UIScrollView *)self->_scrollView setContentInsetAdjustmentBehavior:3];
  }

  view3 = [(UGCPOIEnrichmentViewController *)self view];
  [view3 addSubview:self->_scrollView];

  v17 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  contentView = self->_contentView;
  self->_contentView = v17;

  [(UIView *)self->_contentView _mapsui_resetLayoutMarginsWithPreservesSuperview:1];
  [(UIScrollView *)self->_scrollView addSubview:self->_contentView];
  v19 = [[MUStackLayout alloc] initWithContainer:self->_contentView axis:1];
  stackLayout = self->_stackLayout;
  self->_stackLayout = v19;

  [(UGCPOIEnrichmentViewController *)self _updateRowItems];

  [(UGCPOIEnrichmentViewController *)self _updateScrollViewHairlinesAnimated:0];
}

- (NSArray)sectionControllers
{
  if (!self->_ratingsSectionController)
  {
    v3 = [UGCRatingsSectionController alloc];
    ratingsForm = [(UGCPOIEnrichmentForm *)self->_poiEnrichmentForm ratingsForm];
    mapItem = [(UGCPOIEnrichmentForm *)self->_poiEnrichmentForm mapItem];
    v6 = [(UGCRatingsSectionController *)v3 initWithRatingsForm:ratingsForm mapItem:mapItem analyticsDelegate:self isInlineMode:[(UGCPOIEnrichmentViewController *)self isInlineMode]];
    ratingsSectionController = self->_ratingsSectionController;
    self->_ratingsSectionController = v6;

    [(UGCRatingsSectionController *)self->_ratingsSectionController setDelegate:self];
  }

  if (!self->_photosSectionController)
  {
    v8 = [UGCPhotosSectionController alloc];
    photosForm = [(UGCPOIEnrichmentForm *)self->_poiEnrichmentForm photosForm];
    mapItem2 = [(UGCPOIEnrichmentForm *)self->_poiEnrichmentForm mapItem];
    v11 = [(UGCPhotosSectionController *)v8 initWithPhotosForm:photosForm mapItem:mapItem2 presentingViewController:self deferAddPhotoPresentationToParent:[(UGCPOIEnrichmentViewController *)self defersPhotoPresentationToParent] analyticsDelegate:self showSuggestedPhotos:!self->_isInlineMode];
    photosSectionController = self->_photosSectionController;
    self->_photosSectionController = v11;

    [(UGCPhotosSectionController *)self->_photosSectionController setDelegate:self];
  }

  if (!self->_userInfoSectionController)
  {
    v13 = [[UGCUserInformationSectionController alloc] initWithInsetGrouped:[(UGCPOIEnrichmentViewController *)self useTopPromotedAndInsetGroupedNutritionLabel] isInlineMode:[(UGCPOIEnrichmentViewController *)self isInlineMode]];
    userInfoSectionController = self->_userInfoSectionController;
    self->_userInfoSectionController = v13;

    [(UGCUserInformationSectionController *)self->_userInfoSectionController setDelegate:self];
  }

  suppressRatings = [(UGCPOIEnrichmentViewController *)self suppressRatings];
  IsEnabled_ARPCommunityID = MapsFeature_IsEnabled_ARPCommunityID();
  useTopPromotedAndInsetGroupedNutritionLabel = [(UGCPOIEnrichmentViewController *)self useTopPromotedAndInsetGroupedNutritionLabel];
  if (IsEnabled_ARPCommunityID)
  {
    if (useTopPromotedAndInsetGroupedNutritionLabel)
    {
      if (suppressRatings)
      {
        v52 = self->_photosSectionController;
        v18 = &v52;
LABEL_20:
        v22 = 1;
        goto LABEL_31;
      }

      if (self->_isInlineMode)
      {
        v51 = self->_ratingsSectionController;
        v18 = &v51;
        goto LABEL_20;
      }

      v26 = self->_photosSectionController;
      v49 = self->_ratingsSectionController;
      v50 = v26;
      v18 = &v49;
      goto LABEL_30;
    }

    if (suppressRatings)
    {
      v20 = self->_userInfoSectionController;
      v47 = self->_photosSectionController;
      v48 = v20;
      v18 = &v47;
      goto LABEL_30;
    }

    photosForm2 = [(UGCPOIEnrichmentForm *)self->_poiEnrichmentForm photosForm];
    if ([photosForm2 numberOfAddedPhotos])
    {
    }

    else
    {
      hasTransitionedToPhotoCarousel = [(UGCPOIEnrichmentViewController *)self hasTransitionedToPhotoCarousel];

      if ((hasTransitionedToPhotoCarousel & 1) == 0)
      {
        v29 = self->_photosSectionController;
        v42 = self->_ratingsSectionController;
        v43 = v29;
        v18 = &v42;
        goto LABEL_30;
      }
    }

    v28 = self->_photosSectionController;
    v44 = self->_ratingsSectionController;
    v45 = v28;
    v46 = self->_userInfoSectionController;
    v18 = &v44;
LABEL_28:
    v22 = 3;
    goto LABEL_31;
  }

  if (!useTopPromotedAndInsetGroupedNutritionLabel)
  {
    if (suppressRatings)
    {
      v21 = self->_userInfoSectionController;
      v35 = self->_photosSectionController;
      v36 = v21;
      v18 = &v35;
      goto LABEL_30;
    }

    v25 = self->_photosSectionController;
    v32 = self->_ratingsSectionController;
    v33 = v25;
    v34 = self->_userInfoSectionController;
    v18 = &v32;
    goto LABEL_28;
  }

  if (!suppressRatings)
  {
    v23 = self->_ratingsSectionController;
    v37 = self->_userInfoSectionController;
    v38 = v23;
    v39 = self->_photosSectionController;
    v18 = &v37;
    goto LABEL_28;
  }

  v19 = self->_photosSectionController;
  v40 = self->_userInfoSectionController;
  v41 = v19;
  v18 = &v40;
LABEL_30:
  v22 = 2;
LABEL_31:
  v30 = [NSArray arrayWithObjects:v18 count:v22, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52];

  return v30;
}

- (UGCPOIEnrichmentViewController)initWithPOIEnrichmentForm:(id)form presentationContext:(int64_t)context
{
  formCopy = form;
  v12.receiver = self;
  v12.super_class = UGCPOIEnrichmentViewController;
  v8 = [(UGCPOIEnrichmentViewController *)&v12 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    v8->_scrollEnabled = 1;
    v8->_formInteractionEnabled = 1;
    objc_storeStrong(&v8->_poiEnrichmentForm, form);
    v9->_presentationContext = context;
    photosForm = [(UGCPOIEnrichmentForm *)v9->_poiEnrichmentForm photosForm];
    [photosForm addObserver:v9];
  }

  return v9;
}

@end