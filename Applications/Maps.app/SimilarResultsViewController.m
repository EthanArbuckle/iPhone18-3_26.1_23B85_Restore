@interface SimilarResultsViewController
- (BOOL)_isDisplayingAssociatedTrailsOrTrailheads;
- (_MKInfoCardAnalyticsDelegate)analyticsDelegate;
- (void)_captureCloseAction;
- (void)_captureTapActionWithSearchResult:(id)a3;
- (void)setHeaderTitle:(id)a3;
- (void)updateTitle;
- (void)viewDidLoad;
@end

@implementation SimilarResultsViewController

- (_MKInfoCardAnalyticsDelegate)analyticsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_analyticsDelegate);

  return WeakRetained;
}

- (BOOL)_isDisplayingAssociatedTrailsOrTrailheads
{
  v2 = [(SimilarResultsViewController *)self originalMapItem];
  v3 = [v2 _trailHead];
  v4 = v3 != 0;

  return v4;
}

- (void)_captureCloseAction
{
  v3 = [(SimilarResultsViewController *)self originalMapItem];
  v4 = [v3 _relatedPlaceLists];
  v5 = [v4 firstObject];
  v6 = [v5 type];

  if (v6 <= 1)
  {
    if (v6)
    {
      if (v6 != 1)
      {
        return;
      }

      v7 = 655;
      goto LABEL_16;
    }
  }

  else
  {
    if (v6 == 2)
    {
      v7 = 656;
      goto LABEL_16;
    }

    if (v6 != 4)
    {
      if (v6 != 3)
      {
        return;
      }

      v7 = 654;
      goto LABEL_16;
    }
  }

  if (![(SimilarResultsViewController *)self _isDisplayingAssociatedTrailsOrTrailheads])
  {
    return;
  }

  v8 = [(SimilarResultsViewController *)self originalMapItem];
  v9 = [v8 _mapsui_associatedHikingItemType];

  if (v9 == 2)
  {
    v7 = 129;
  }

  else
  {
    if (v9 != 1)
    {
      return;
    }

    v7 = 128;
  }

LABEL_16:
  v10 = [(SimilarResultsViewController *)self analyticsDelegate];
  [v10 infoCardAnalyticsDidSelectAction:4 target:v7 eventValue:0 feedbackDelegateSelector:0 actionRichProviderId:0 classification:0];
}

- (void)_captureTapActionWithSearchResult:(id)a3
{
  v25 = a3;
  v4 = [(SimilarResultsViewController *)self originalMapItem];
  v5 = [v4 _relatedPlaceLists];
  v6 = [v5 firstObject];
  v7 = [v6 type];

  if (v7 <= 1)
  {
    if (!v7)
    {
LABEL_9:
      if ([(SimilarResultsViewController *)self _isDisplayingAssociatedTrailsOrTrailheads])
      {
        v14 = [(SimilarResultsViewController *)self originalMapItem];
        v15 = [v14 _mapsui_associatedHikingItemType];

        if (v15 == 1)
        {
          v16 = 365;
          v17 = 128;
        }

        else if (v15 == 2)
        {
          v16 = 412;
          v17 = 129;
        }

        else
        {
          v17 = 0;
          v16 = 0;
        }

        v22 = [v25 mapItem];
        v23 = [v22 _hasMUID];

        if (v23)
        {
LABEL_29:
          v24 = [v25 mapItem];
          v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%llu", [v24 _muid]);

          if (!v17)
          {
            goto LABEL_17;
          }

          goto LABEL_30;
        }
      }

      else
      {
        v18 = [v25 mapItem];
        v19 = [v18 _hasHikeInfo];

        if (!v19)
        {
          v8 = 0;
          goto LABEL_17;
        }

        v20 = [v25 mapItem];
        v21 = [v20 _hasHikeInfo];

        v16 = 467;
        v17 = 133;
        if (v21)
        {
          goto LABEL_29;
        }
      }

      v8 = 0;
      if (!v17)
      {
        goto LABEL_17;
      }

LABEL_30:
      if (!v16)
      {
        goto LABEL_17;
      }

      v9 = [(SimilarResultsViewController *)self analyticsDelegate];
      [v9 infoCardAnalyticsDidSelectAction:v16 target:v17 eventValue:v8 feedbackDelegateSelector:0 actionRichProviderId:0 classification:0];
      goto LABEL_16;
    }

    if (v7 != 1)
    {
      goto LABEL_18;
    }

    v8 = [(SimilarResultsViewController *)self analyticsDelegate];
    v9 = [v25 mapItem];
    v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%llu", [v9 _muid]);
    v11 = v8;
    v12 = 6079;
    v13 = 655;
LABEL_15:
    [v11 infoCardAnalyticsDidSelectAction:v12 target:v13 eventValue:v10 feedbackDelegateSelector:0 actionRichProviderId:0 classification:0];

LABEL_16:
LABEL_17:

    goto LABEL_18;
  }

  switch(v7)
  {
    case 2:
      v8 = [(SimilarResultsViewController *)self analyticsDelegate];
      v9 = [v25 mapItem];
      v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%llu", [v9 _muid]);
      v11 = v8;
      v12 = 6081;
      v13 = 656;
      goto LABEL_15;
    case 3:
      v8 = [(SimilarResultsViewController *)self analyticsDelegate];
      v9 = [v25 mapItem];
      v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%llu", [v9 _muid]);
      v11 = v8;
      v12 = 6080;
      v13 = 654;
      goto LABEL_15;
    case 4:
      goto LABEL_9;
  }

LABEL_18:
}

- (void)updateTitle
{
  if (sub_10000FA08(self) == 5)
  {
    v5.receiver = self;
    v5.super_class = SimilarResultsViewController;
    [(SimpleResultsViewController *)&v5 updateTitle:0];
  }

  else
  {
    headerTitle = self->_headerTitle;
    v4 = [(SimpleResultsViewController *)self titleHeaderView];
    [v4 setTitle:headerTitle];
  }
}

- (void)setHeaderTitle:(id)a3
{
  v5 = a3;
  if (sub_10000FA08(self) == 5)
  {
    v6.receiver = self;
    v6.super_class = SimilarResultsViewController;
    [(SimpleResultsViewController *)&v6 setHeaderTitle:v5];
  }

  else
  {
    objc_storeStrong(&self->_headerTitle, a3);
    if ([(SimilarResultsViewController *)self isViewLoaded])
    {
      [(SimilarResultsViewController *)self updateTitle];
    }
  }
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = SimilarResultsViewController;
  [(SimpleResultsViewController *)&v7 viewDidLoad];
  v3 = sub_10000FA08(self);
  v4 = [(SimpleResultsViewController *)self titleHeaderView];
  v5 = v4;
  if (v3 == 5)
  {
    [v4 setButtonHidden:0];
  }

  else
  {
    [v4 setTitleView:0];
  }

  v6 = [(SimpleResultsViewController *)self headerView];
  [v6 setPreservesSuperviewLayoutMargins:1];

  [(SimilarResultsViewController *)self updateTitle];
}

@end