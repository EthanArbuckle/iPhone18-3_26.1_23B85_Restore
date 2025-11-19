@interface UGCPOIEnrichmentViewController
- (NSArray)sectionControllers;
- (UGCPOIEnrichmentViewController)initWithPOIEnrichmentForm:(id)a3 presentationContext:(int64_t)a4;
- (UGCPOIEnrichmentViewControllerDelegate)delegate;
- (int)currentTarget;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)_updateConstraints;
- (void)_updateRowItems;
- (void)_updateScrollViewHairlinesAnimated:(BOOL)a3;
- (void)captureUserAction:(int)a3 withValue:(id)a4;
- (void)photosSectionController:(id)a3 selectedAddPhotosUsingSourceType:(int64_t)a4 presentationOptions:(id)a5;
- (void)photosSectionController:(id)a3 userActionCapturedForAction:(int)a4 value:(id)a5;
- (void)photosSectionController:(id)a3 willShowPhotoCarousel:(BOOL)a4;
- (void)ratingsSectionController:(id)a3 presentInformedConsentIfNeededWithCompletion:(id)a4;
- (void)ratingsSectionController:(id)a3 userActionCapturedForRatingCategoryState:(int64_t)a4 value:(id)a5;
- (void)ratingsSectionControllerPresentPOIEnrichment:(id)a3;
- (void)sectionControllerDidUpdateRowItems:(id)a3;
- (void)sectionControllerRequestsLegalAttribution:(id)a3;
- (void)setFormInteractionEnabled:(BOOL)a3;
- (void)setIsInlineMode:(BOOL)a3;
- (void)setScrollEnabled:(BOOL)a3;
- (void)submissionFinishedWithError:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation UGCPOIEnrichmentViewController

- (UGCPOIEnrichmentViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)captureUserAction:(int)a3 withValue:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  [GEOAPPortal captureUserAction:v4 target:[(UGCPOIEnrichmentViewController *)self currentTarget] value:v6];
}

- (int)currentTarget
{
  v2 = [(UGCPOIEnrichmentViewController *)self presentationContext];
  if (v2 > 2)
  {
    return 0;
  }

  else
  {
    return dword_101215418[v2];
  }
}

- (void)photosSectionController:(id)a3 userActionCapturedForAction:(int)a4 value:(id)a5
{
  v5 = *&a4;
  v10 = a5;
  v7 = [(UGCPOIEnrichmentViewController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(UGCPOIEnrichmentViewController *)self delegate];
    [v9 poiEnrichmentViewController:self captureUserAction:v5 value:v10 target:{-[UGCPOIEnrichmentViewController currentTarget](self, "currentTarget")}];
  }
}

- (void)photosSectionController:(id)a3 selectedAddPhotosUsingSourceType:(int64_t)a4 presentationOptions:(id)a5
{
  v10 = a5;
  if ([(UGCPOIEnrichmentViewController *)self defersPhotoPresentationToParent])
  {
    v7 = [(UGCPOIEnrichmentViewController *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [(UGCPOIEnrichmentViewController *)self delegate];
      [v9 poiEnrichmentViewController:self didSelectAddPhotosUsingSourceType:a4 presentationOptions:v10];
    }
  }
}

- (void)ratingsSectionControllerPresentPOIEnrichment:(id)a3
{
  v4 = [(UGCPOIEnrichmentViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(UGCPOIEnrichmentViewController *)self delegate];
    [v6 poiEnrichmentViewControllerPresentPOIEnrichment:self];
  }
}

- (void)ratingsSectionController:(id)a3 userActionCapturedForRatingCategoryState:(int64_t)a4 value:(id)a5
{
  v10 = a5;
  v7 = [(UGCPOIEnrichmentViewController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(UGCPOIEnrichmentViewController *)self delegate];
    [v9 poiEnrichmentViewController:self captureUserActionForRatingCategoryState:a4 value:v10 target:{-[UGCPOIEnrichmentViewController currentTarget](self, "currentTarget")}];
  }
}

- (void)ratingsSectionController:(id)a3 presentInformedConsentIfNeededWithCompletion:(id)a4
{
  v8 = a4;
  v5 = [(UGCPOIEnrichmentViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(UGCPOIEnrichmentViewController *)self delegate];
    [v7 poiEnrichmentViewController:self presentInformedConsentIfNeededWithCompletion:v8];
  }

  else if (v8)
  {
    v8[2](v8, 1);
  }
}

- (void)sectionControllerRequestsLegalAttribution:(id)a3
{
  v4 = GEOConfigGetString();
  v7 = [NSURL URLWithString:v4];

  v5 = [(UGCPOIEnrichmentViewController *)self delegate];
  LOBYTE(v4) = objc_opt_respondsToSelector();

  if (v4)
  {
    v6 = [(UGCPOIEnrichmentViewController *)self delegate];
    [v6 poiEnrichmentViewController:self didSelectTermsOfServiceURL:v7];
  }

  else
  {
    v6 = [[SFSafariViewController alloc] initWithURL:v7];
    [(UGCPOIEnrichmentViewController *)self presentViewController:v6 animated:1 completion:0];
  }
}

- (void)photosSectionController:(id)a3 willShowPhotoCarousel:(BOOL)a4
{
  if ([(UGCPOIEnrichmentViewController *)self hasTransitionedToPhotoCarousel]!= a4)
  {
    [(UGCPOIEnrichmentViewController *)self setHasTransitionedToPhotoCarousel:1];

    [(UGCPOIEnrichmentViewController *)self _updateRowItems];
  }
}

- (void)sectionControllerDidUpdateRowItems:(id)a3
{
  [(UGCPOIEnrichmentViewController *)self _updateRowItems];
  v4 = [(UGCPOIEnrichmentViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(UGCPOIEnrichmentViewController *)self delegate];
    [v6 contentDidUpdate];
  }
}

- (void)submissionFinishedWithError:(id)a3
{
  if (!a3)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v3 = [(UGCPOIEnrichmentViewController *)self sectionControllers];
    v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
            objc_enumerationMutation(v3);
          }

          [*(*(&v8 + 1) + 8 * v7) handleSuccessfulSubmission];
          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }
}

- (void)_updateScrollViewHairlinesAnimated:(BOOL)a3
{
  v3 = a3;
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

        v8 = [(UGCPOIEnrichmentViewController *)self view];
        [v8 addSubview:self->_topScrollHairline];

        v9 = [[MUEdgeLayout alloc] initWithItem:self->_topScrollHairline container:self->_scrollView];
        [v9 setEdges:11];
        [v9 activate];
      }

      if (!self->_bottomScrollHairline)
      {
        v12 = [[UGCHairlineView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
        bottomScrollHairline = self->_bottomScrollHairline;
        self->_bottomScrollHairline = v12;

        v14 = [(UGCPOIEnrichmentViewController *)self view];
        [v14 addSubview:self->_bottomScrollHairline];

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
      [UIScrollView _maps_updateHairlineAlpha:v3 animated:v22 getter:v21 setter:v17];
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
      [UIScrollView _maps_updateHairlineAlpha:v3 animated:v20 getter:v19 setter:v18];
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
        v7 = [v6 rowItems];
        v8 = [v7 countByEnumeratingWithState:&v46 objects:v55 count:16];
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
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v46 + 1) + 8 * i);
              v13 = [v12 rowView];
              if (([v13 isHidden] & 1) == 0)
              {
                [v13 setPreservesSuperviewLayoutMargins:1];
                [v3 addObject:v13];
                [(UIView *)self->_contentView addSubview:v13];
                [(MUStackLayout *)self->_stackLayout addArrangedLayoutItem:v13];
                [v12 bottomSpacing];
                if (v14 > 0.0)
                {
                  v15 = v3;
                  stackLayout = self->_stackLayout;
                  [v12 bottomSpacing];
                  v17 = stackLayout;
                  v3 = v15;
                  [(MUStackLayout *)v17 setPadding:v13 forArrangedLayoutItem:0.0, v4, v18, v4];
                }
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v46 objects:v55 count:16];
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

  v19 = [(MUStackLayout *)self->_stackLayout arrangedLayoutItems];
  v20 = [v19 count];

  if (v20)
  {
    if (self->_scrollEnabled && sub_10000FA08(self) != 5)
    {
      v29 = self->_stackLayout;
      v22 = [(MUStackLayout *)v29 arrangedLayoutItems];
      v23 = [v22 lastObject];
      top = 0.0;
      bottom = 12.0;
      v28 = v29;
      leading = v4;
      trailing = v4;
    }

    else
    {
      v21 = self->_stackLayout;
      v22 = [(MUStackLayout *)v21 arrangedLayoutItems];
      v23 = [v22 lastObject];
      top = NSDirectionalEdgeInsetsZero.top;
      leading = NSDirectionalEdgeInsetsZero.leading;
      bottom = NSDirectionalEdgeInsetsZero.bottom;
      trailing = NSDirectionalEdgeInsetsZero.trailing;
      v28 = v21;
    }

    [(MUStackLayout *)v28 setPadding:v23 forArrangedLayoutItem:top, leading, bottom, trailing];
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

- (void)setFormInteractionEnabled:(BOOL)a3
{
  if (self->_formInteractionEnabled != a3)
  {
    v3 = a3;
    self->_formInteractionEnabled = a3;
    if ([(UGCPOIEnrichmentViewController *)self isViewLoaded])
    {
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      v5 = [(UGCPOIEnrichmentViewController *)self sectionControllers];
      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
              objc_enumerationMutation(v5);
            }

            [*(*(&v10 + 1) + 8 * i) setFormInteractionEnabled:v3];
          }

          v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
        }

        while (v7);
      }
    }
  }
}

- (void)setScrollEnabled:(BOOL)a3
{
  if (self->_scrollEnabled != a3)
  {
    self->_scrollEnabled = a3;
    if ([(UGCPOIEnrichmentViewController *)self isViewLoaded])
    {
      [(UIScrollView *)self->_scrollView setScrollEnabled:self->_scrollEnabled];
      [(UGCPOIEnrichmentViewController *)self _updateConstraints];
    }

    [(UGCPOIEnrichmentViewController *)self _updateScrollViewHairlinesAnimated:0];
  }
}

- (void)setIsInlineMode:(BOOL)a3
{
  v3 = a3;
  self->_isInlineMode = a3;
  [(UGCPOIEnrichmentViewController *)self setScrollEnabled:!a3];
  [(UGCPOIEnrichmentViewController *)self setDefersPhotoPresentationToParent:v3];

  [(UGCPOIEnrichmentViewController *)self setUseTopPromotedAndInsetGroupedNutritionLabel:v3];
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
  v3 = [(UGCPOIEnrichmentViewController *)self sectionControllers];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
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
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7) setFormInteractionEnabled:self->_formInteractionEnabled];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
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
  v4 = [(UIScrollView *)self->_scrollView frameLayoutGuide];
  v5 = [v4 heightAnchor];
  v6 = [(UIScrollView *)self->_scrollView contentLayoutGuide];
  v7 = [v6 heightAnchor];
  if (scrollEnabled)
  {
    v8 = [v5 constraintGreaterThanOrEqualToAnchor:v7];
    heightConstraint = self->_heightConstraint;
    self->_heightConstraint = v8;

    LODWORD(v10) = 1112276992;
    [(NSLayoutConstraint *)self->_heightConstraint setPriority:v10];
  }

  else
  {
    v11 = [v5 constraintEqualToAnchor:v7];
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
  v5 = [(UGCPOIEnrichmentViewController *)self view];
  v6 = [v3 initWithItem:scrollView container:v5];

  v7 = [MUEdgeLayout alloc];
  contentView = self->_contentView;
  v9 = [(UIScrollView *)self->_scrollView contentLayoutGuide];
  v10 = [v7 initWithItem:contentView container:v9];

  v11 = [(UIScrollView *)self->_scrollView contentLayoutGuide];
  v12 = [v11 widthAnchor];
  v13 = [(UIScrollView *)self->_scrollView frameLayoutGuide];
  v14 = [v13 widthAnchor];
  v15 = [v12 constraintEqualToAnchor:v14];

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
  v4 = [(UGCPOIEnrichmentViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [(UGCPOIEnrichmentViewController *)self view];
  [v5 setAccessibilityIdentifier:@"UGCPOIEnrichmentView"];

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

  v16 = [(UGCPOIEnrichmentViewController *)self view];
  [v16 addSubview:self->_scrollView];

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
    v4 = [(UGCPOIEnrichmentForm *)self->_poiEnrichmentForm ratingsForm];
    v5 = [(UGCPOIEnrichmentForm *)self->_poiEnrichmentForm mapItem];
    v6 = [(UGCRatingsSectionController *)v3 initWithRatingsForm:v4 mapItem:v5 analyticsDelegate:self isInlineMode:[(UGCPOIEnrichmentViewController *)self isInlineMode]];
    ratingsSectionController = self->_ratingsSectionController;
    self->_ratingsSectionController = v6;

    [(UGCRatingsSectionController *)self->_ratingsSectionController setDelegate:self];
  }

  if (!self->_photosSectionController)
  {
    v8 = [UGCPhotosSectionController alloc];
    v9 = [(UGCPOIEnrichmentForm *)self->_poiEnrichmentForm photosForm];
    v10 = [(UGCPOIEnrichmentForm *)self->_poiEnrichmentForm mapItem];
    v11 = [(UGCPhotosSectionController *)v8 initWithPhotosForm:v9 mapItem:v10 presentingViewController:self deferAddPhotoPresentationToParent:[(UGCPOIEnrichmentViewController *)self defersPhotoPresentationToParent] analyticsDelegate:self showSuggestedPhotos:!self->_isInlineMode];
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

  v15 = [(UGCPOIEnrichmentViewController *)self suppressRatings];
  IsEnabled_ARPCommunityID = MapsFeature_IsEnabled_ARPCommunityID();
  v17 = [(UGCPOIEnrichmentViewController *)self useTopPromotedAndInsetGroupedNutritionLabel];
  if (IsEnabled_ARPCommunityID)
  {
    if (v17)
    {
      if (v15)
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

    if (v15)
    {
      v20 = self->_userInfoSectionController;
      v47 = self->_photosSectionController;
      v48 = v20;
      v18 = &v47;
      goto LABEL_30;
    }

    v24 = [(UGCPOIEnrichmentForm *)self->_poiEnrichmentForm photosForm];
    if ([v24 numberOfAddedPhotos])
    {
    }

    else
    {
      v27 = [(UGCPOIEnrichmentViewController *)self hasTransitionedToPhotoCarousel];

      if ((v27 & 1) == 0)
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

  if (!v17)
  {
    if (v15)
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

  if (!v15)
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

- (UGCPOIEnrichmentViewController)initWithPOIEnrichmentForm:(id)a3 presentationContext:(int64_t)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = UGCPOIEnrichmentViewController;
  v8 = [(UGCPOIEnrichmentViewController *)&v12 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    v8->_scrollEnabled = 1;
    v8->_formInteractionEnabled = 1;
    objc_storeStrong(&v8->_poiEnrichmentForm, a3);
    v9->_presentationContext = a4;
    v10 = [(UGCPOIEnrichmentForm *)v9->_poiEnrichmentForm photosForm];
    [v10 addObserver:v9];
  }

  return v9;
}

@end