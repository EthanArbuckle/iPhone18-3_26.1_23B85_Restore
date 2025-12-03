@interface SimilarResultsViewController
- (BOOL)_isDisplayingAssociatedTrailsOrTrailheads;
- (_MKInfoCardAnalyticsDelegate)analyticsDelegate;
- (void)_captureCloseAction;
- (void)_captureTapActionWithSearchResult:(id)result;
- (void)setHeaderTitle:(id)title;
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
  originalMapItem = [(SimilarResultsViewController *)self originalMapItem];
  _trailHead = [originalMapItem _trailHead];
  v4 = _trailHead != 0;

  return v4;
}

- (void)_captureCloseAction
{
  originalMapItem = [(SimilarResultsViewController *)self originalMapItem];
  _relatedPlaceLists = [originalMapItem _relatedPlaceLists];
  firstObject = [_relatedPlaceLists firstObject];
  type = [firstObject type];

  if (type <= 1)
  {
    if (type)
    {
      if (type != 1)
      {
        return;
      }

      v7 = 655;
      goto LABEL_16;
    }
  }

  else
  {
    if (type == 2)
    {
      v7 = 656;
      goto LABEL_16;
    }

    if (type != 4)
    {
      if (type != 3)
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

  originalMapItem2 = [(SimilarResultsViewController *)self originalMapItem];
  _mapsui_associatedHikingItemType = [originalMapItem2 _mapsui_associatedHikingItemType];

  if (_mapsui_associatedHikingItemType == 2)
  {
    v7 = 129;
  }

  else
  {
    if (_mapsui_associatedHikingItemType != 1)
    {
      return;
    }

    v7 = 128;
  }

LABEL_16:
  analyticsDelegate = [(SimilarResultsViewController *)self analyticsDelegate];
  [analyticsDelegate infoCardAnalyticsDidSelectAction:4 target:v7 eventValue:0 feedbackDelegateSelector:0 actionRichProviderId:0 classification:0];
}

- (void)_captureTapActionWithSearchResult:(id)result
{
  resultCopy = result;
  originalMapItem = [(SimilarResultsViewController *)self originalMapItem];
  _relatedPlaceLists = [originalMapItem _relatedPlaceLists];
  firstObject = [_relatedPlaceLists firstObject];
  type = [firstObject type];

  if (type <= 1)
  {
    if (!type)
    {
LABEL_9:
      if ([(SimilarResultsViewController *)self _isDisplayingAssociatedTrailsOrTrailheads])
      {
        originalMapItem2 = [(SimilarResultsViewController *)self originalMapItem];
        _mapsui_associatedHikingItemType = [originalMapItem2 _mapsui_associatedHikingItemType];

        if (_mapsui_associatedHikingItemType == 1)
        {
          v16 = 365;
          v17 = 128;
        }

        else if (_mapsui_associatedHikingItemType == 2)
        {
          v16 = 412;
          v17 = 129;
        }

        else
        {
          v17 = 0;
          v16 = 0;
        }

        mapItem = [resultCopy mapItem];
        _hasMUID = [mapItem _hasMUID];

        if (_hasMUID)
        {
LABEL_29:
          mapItem2 = [resultCopy mapItem];
          analyticsDelegate2 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%llu", [mapItem2 _muid]);

          if (!v17)
          {
            goto LABEL_17;
          }

          goto LABEL_30;
        }
      }

      else
      {
        mapItem3 = [resultCopy mapItem];
        _hasHikeInfo = [mapItem3 _hasHikeInfo];

        if (!_hasHikeInfo)
        {
          analyticsDelegate2 = 0;
          goto LABEL_17;
        }

        mapItem4 = [resultCopy mapItem];
        _hasHikeInfo2 = [mapItem4 _hasHikeInfo];

        v16 = 467;
        v17 = 133;
        if (_hasHikeInfo2)
        {
          goto LABEL_29;
        }
      }

      analyticsDelegate2 = 0;
      if (!v17)
      {
        goto LABEL_17;
      }

LABEL_30:
      if (!v16)
      {
        goto LABEL_17;
      }

      analyticsDelegate = [(SimilarResultsViewController *)self analyticsDelegate];
      [analyticsDelegate infoCardAnalyticsDidSelectAction:v16 target:v17 eventValue:analyticsDelegate2 feedbackDelegateSelector:0 actionRichProviderId:0 classification:0];
      goto LABEL_16;
    }

    if (type != 1)
    {
      goto LABEL_18;
    }

    analyticsDelegate2 = [(SimilarResultsViewController *)self analyticsDelegate];
    analyticsDelegate = [resultCopy mapItem];
    v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%llu", [analyticsDelegate _muid]);
    v11 = analyticsDelegate2;
    v12 = 6079;
    v13 = 655;
LABEL_15:
    [v11 infoCardAnalyticsDidSelectAction:v12 target:v13 eventValue:v10 feedbackDelegateSelector:0 actionRichProviderId:0 classification:0];

LABEL_16:
LABEL_17:

    goto LABEL_18;
  }

  switch(type)
  {
    case 2:
      analyticsDelegate2 = [(SimilarResultsViewController *)self analyticsDelegate];
      analyticsDelegate = [resultCopy mapItem];
      v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%llu", [analyticsDelegate _muid]);
      v11 = analyticsDelegate2;
      v12 = 6081;
      v13 = 656;
      goto LABEL_15;
    case 3:
      analyticsDelegate2 = [(SimilarResultsViewController *)self analyticsDelegate];
      analyticsDelegate = [resultCopy mapItem];
      v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%llu", [analyticsDelegate _muid]);
      v11 = analyticsDelegate2;
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
    titleHeaderView = [(SimpleResultsViewController *)self titleHeaderView];
    [titleHeaderView setTitle:headerTitle];
  }
}

- (void)setHeaderTitle:(id)title
{
  titleCopy = title;
  if (sub_10000FA08(self) == 5)
  {
    v6.receiver = self;
    v6.super_class = SimilarResultsViewController;
    [(SimpleResultsViewController *)&v6 setHeaderTitle:titleCopy];
  }

  else
  {
    objc_storeStrong(&self->_headerTitle, title);
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
  titleHeaderView = [(SimpleResultsViewController *)self titleHeaderView];
  v5 = titleHeaderView;
  if (v3 == 5)
  {
    [titleHeaderView setButtonHidden:0];
  }

  else
  {
    [titleHeaderView setTitleView:0];
  }

  headerView = [(SimpleResultsViewController *)self headerView];
  [headerView setPreservesSuperviewLayoutMargins:1];

  [(SimilarResultsViewController *)self updateTitle];
}

@end