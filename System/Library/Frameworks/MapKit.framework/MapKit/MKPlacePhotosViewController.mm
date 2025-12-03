@interface MKPlacePhotosViewController
- (BOOL)isFirstParty;
- (BOOL)isParsecProcess;
- (BOOL)isSafariProcess;
- (BOOL)isSiriProcess;
- (CGSize)_photoActionSize;
- (CGSize)_photoSizeForIndex:(unint64_t)index;
- (CGSize)sizeForIndex:(unint64_t)index;
- (MKPlaceCardPhotosControllerDelegate)photosControllerDelegate;
- (MKPlacePhotosViewController)initWithMapItem:(id)item mode:(unint64_t)mode options:(unint64_t)options;
- (_MKInfoCardAnalyticsDelegate)analyticsDelegate;
- (_MKPlaceViewController)owner;
- (id)_firstPartyMorePhotosAttributionString;
- (id)attributionString;
- (id)formattedAttributionString;
- (id)infoCardChildPossibleActions;
- (unint64_t)numberOfBigAttributionViews;
- (void)_adjustScrollIndexByOffset:(int64_t)offset;
- (void)_applyCornerRadius;
- (void)_cancelLoadPhotos;
- (void)_catchScrollNotification:(id)notification;
- (void)_createImageViews;
- (void)_didBecomeActive:(id)active;
- (void)_didTapAttributionViewWithPresentingViewController:(id)controller photoAttributionView:(id)view;
- (void)_loadPhotos;
- (void)_logUGCAction:(int)action;
- (void)_photoSelected:(id)selected;
- (void)_photoTappedAtIndex:(unint64_t)index;
- (void)_setContentVisibility:(int64_t)visibility;
- (void)_updateAlphaAttribution;
- (void)_updateChevronVisibility;
- (void)_updatePhotoBackgroundColor:(id)color;
- (void)addAttributionCell;
- (void)dealloc;
- (void)handleHover:(id)hover;
- (void)infoCardThemeChanged;
- (void)layoutImages;
- (void)lookAroundContainerView:(id)view didAddLookAroundView:(id)aroundView;
- (void)openURL;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setHoverActive:(BOOL)active;
- (void)setShowsBottomHairline:(BOOL)hairline;
- (void)set_mapkit_contentVisibility:(int64_t)visibility;
- (void)updateAttributionCell;
- (void)updateAttributionPositionWithOffset:(double)offset;
- (void)updateBottomHairlineVisibility;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewLayoutMarginsDidChange;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation MKPlacePhotosViewController

- (MKPlaceCardPhotosControllerDelegate)photosControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_photosControllerDelegate);

  return WeakRetained;
}

- (_MKPlaceViewController)owner
{
  WeakRetained = objc_loadWeakRetained(&self->_owner);

  return WeakRetained;
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = MKPlacePhotosViewController;
  [(MKPlacePhotosViewController *)&v4 viewDidLayoutSubviews];
  [(MKPlacePhotosViewController *)self layoutImages];
  [(UIView *)self->_photosSmallAttributionsView alpha];
  if (v3 == 0.0)
  {
    [(MKPlacePhotosViewController *)self updateAttributionPositionWithOffset:0.0];
  }

  [(MKPlacePhotosViewController *)self _loadPhotos];
}

- (void)viewLayoutMarginsDidChange
{
  v3.receiver = self;
  v3.super_class = MKPlacePhotosViewController;
  [(MKPlacePhotosViewController *)&v3 viewLayoutMarginsDidChange];
  [(MKPlacePhotosViewController *)self scrollViewDidScroll:self->_photosContainerScrollView];
}

- (void)_setContentVisibility:(int64_t)visibility
{
  _mapkit_contentVisibility = [(UIViewController *)self _mapkit_contentVisibility];
  v12.receiver = self;
  v12.super_class = MKPlacePhotosViewController;
  [(UIViewController *)&v12 set_mapkit_contentVisibility:visibility];
  if (_mapkit_contentVisibility != visibility)
  {
    lookAroundViewIfPresent = [(MKLookAroundContainerView *)self->_lookAroundContainerView lookAroundViewIfPresent];
    photosControllerDelegate = [(MKPlacePhotosViewController *)self photosControllerDelegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      photosControllerDelegate2 = [(MKPlacePhotosViewController *)self photosControllerDelegate];
      v10 = [photosControllerDelegate2 shouldMoveLookAroundStorefrontViewForPlaceCardPhotosController:self];

      v11 = v10 ^ 1;
      if (!lookAroundViewIfPresent)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v11 = 0;
      if (!lookAroundViewIfPresent)
      {
LABEL_11:

        return;
      }
    }

    if ((v11 & 1) == 0)
    {
      if (visibility == 2)
      {
        [lookAroundViewIfPresent moveToStandOffView];
      }

      else if (visibility == 3)
      {
        [lookAroundViewIfPresent moveToCloseUpView];
      }
    }

    goto LABEL_11;
  }
}

- (void)set_mapkit_contentVisibility:(int64_t)visibility
{
  traitCollection = [(MKPlacePhotosViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom != 5)
  {

    [(MKPlacePhotosViewController *)self _setContentVisibility:visibility];
  }
}

- (id)infoCardChildPossibleActions
{
  array = [MEMORY[0x1E695DF70] array];
  v4 = array;
  if (self->_externalView)
  {
    [array addObject:&unk_1F1611470];
  }

  if ([(NSArray *)self->_photoViews count])
  {
    v5 = 0;
    do
    {
      if (self->_canUseFullscreenViewer)
      {
        v6 = &unk_1F16114A0;
      }

      else
      {
        v6 = &unk_1F1611488;
      }

      [v4 addObject:v6];
      ++v5;
    }

    while (v5 < [(NSArray *)self->_photoViews count]);
  }

  return v4;
}

- (void)_logUGCAction:(int)action
{
  v3 = *&action;
  if ([(MKPlacePhotosViewController *)self isFirstParty])
  {
    v4 = MEMORY[0x1E69A1598];

    [v4 captureUGCUserAction:v3 target:612 value:0 photoSources:0];
  }
}

- (void)lookAroundContainerView:(id)view didAddLookAroundView:(id)aroundView
{
  aroundViewCopy = aroundView;
  traitCollection = [(MKPlacePhotosViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 5)
  {
    v7 = aroundViewCopy;
    goto LABEL_6;
  }

  _mapkit_contentVisibility = [(UIViewController *)self _mapkit_contentVisibility];
  if (_mapkit_contentVisibility == 2)
  {
    [aroundViewCopy moveToStandOffView];
    goto LABEL_7;
  }

  v9 = _mapkit_contentVisibility == 3;
  v7 = aroundViewCopy;
  if (v9)
  {
LABEL_6:
    [v7 moveToCloseUpView];
LABEL_7:
    v7 = aroundViewCopy;
  }
}

- (void)_didTapAttributionViewWithPresentingViewController:(id)controller photoAttributionView:(id)view
{
  controllerCopy = controller;
  viewCopy = view;
  if (viewCopy)
  {
    analyticsDelegate = [(MKPlacePhotosViewController *)self analyticsDelegate];
    if ([viewCopy type])
    {
      if ([(MKPlacePhotosViewController *)self isFirstParty])
      {
        [analyticsDelegate infoCardAnalyticsDidSelectAction:6102 eventValue:@"photo slider" feedbackDelegateSelector:0 actionRichProviderId:0 classification:0];
      }

      _mapkit_preferredFirstPhotoVendor = [(MKMapItem *)self->_mapItem _mapkit_preferredFirstPhotoVendor];
      providerID = [_mapkit_preferredFirstPhotoVendor providerID];
      mapItem = [viewCopy mapItem];
      _attribution = [mapItem _attribution];
      providerID2 = [_attribution providerID];
      [analyticsDelegate infoCardAnalyticsDidSelectAction:6023 eventValue:providerID feedbackDelegateSelector:0 actionRichProviderId:providerID2 classification:0];

      photosControllerDelegate = [(MKPlacePhotosViewController *)self photosControllerDelegate];
      LOBYTE(providerID) = objc_opt_respondsToSelector();

      if ((providerID & 1) == 0)
      {
        goto LABEL_11;
      }

      photosControllerDelegate2 = [(MKPlacePhotosViewController *)self photosControllerDelegate];
      [photosControllerDelegate2 placeCardActionControllerDidSelectViewAllPhotos:0 presentingViewController:controllerCopy];
    }

    else
    {
      photosControllerDelegate3 = [(MKPlacePhotosViewController *)self photosControllerDelegate];
      v16 = objc_opt_respondsToSelector();

      if (v16)
      {
        [analyticsDelegate infoCardAnalyticsDidSelectAction:2147 eventValue:@"photo slider" feedbackDelegateSelector:0 actionRichProviderId:0 classification:0];
        photosControllerDelegate2 = [(MKPlacePhotosViewController *)self photosControllerDelegate];
        [photosControllerDelegate2 placeCardActionControllerDidSelectAddPhoto:0 presentingViewController:controllerCopy sourceView:viewCopy];
      }

      else
      {
        photosControllerDelegate2 = [(MKMapItem *)self->_mapItem _mapkit_preferredFirstPhotoVendor];
        providerID3 = [photosControllerDelegate2 providerID];
        mapItem2 = [viewCopy mapItem];
        _attribution2 = [mapItem2 _attribution];
        providerID4 = [_attribution2 providerID];
        [analyticsDelegate infoCardAnalyticsDidSelectAction:6025 eventValue:providerID3 feedbackDelegateSelector:174 actionRichProviderId:providerID4 classification:0];
      }
    }

LABEL_11:
  }
}

- (void)_photoTappedAtIndex:(unint64_t)index
{
  analyticsDelegate = [(MKPlacePhotosViewController *)self analyticsDelegate];
  if ([(NSArray *)self->_photoViews count]> index)
  {
    v5 = [(NSArray *)self->_photoViews objectAtIndexedSubscript:index];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (self->_secondaryAttributionView == v5)
      {
        [(MKPlacePhotosViewController *)self didTapSecondaryAttributionViewWithPresentingViewController:self];
      }

      else if (self->_primaryAttributionView == v5)
      {
        [(MKPlacePhotosViewController *)self didTapPrimaryAttributionViewWithPresentingViewController:self];
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        photosControllerDelegate = [(MKPlacePhotosViewController *)self photosControllerDelegate];
        v7 = objc_opt_respondsToSelector();

        if (v7)
        {
          v8 = [(NSArray *)self->_photos objectAtIndex:index];
          photosControllerDelegate2 = [(MKPlacePhotosViewController *)self photosControllerDelegate];
          photoID = [v8 photoID];
          [photosControllerDelegate2 placeCardPhotosController:self didSelectViewPhotoWithID:photoID presentingViewController:self];
        }

        else
        {
          v8 = 0;
        }

        if (self->_canUseFullscreenViewer)
        {
          v11 = 6006;
        }

        else
        {
          v11 = 6018;
        }

        index = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", index];
        attribution = [v8 attribution];
        providerID = [attribution providerID];
        [analyticsDelegate infoCardAnalyticsDidSelectAction:v11 eventValue:index feedbackDelegateSelector:173 actionRichProviderId:providerID classification:0];
      }
    }
  }
}

- (void)_photoSelected:(id)selected
{
  [selected locationInView:self->_photosContainer];
  v5 = v4;
  v7 = v6;
  if (self->_externalView)
  {
    lookAroundViewIfPresent = [(MKLookAroundContainerView *)self->_lookAroundContainerView lookAroundViewIfPresent];
    [(MKLookAroundContainerView *)self->_lookAroundContainerView frame];
    v17.x = v5;
    v17.y = v7;
    if (CGRectContainsPoint(v18, v17))
    {
      [lookAroundViewIfPresent jumpToCloseUpView];
      photosControllerDelegate = [(MKPlacePhotosViewController *)self photosControllerDelegate];
      v9 = objc_opt_respondsToSelector();

      if (v9)
      {
        photosControllerDelegate2 = [(MKPlacePhotosViewController *)self photosControllerDelegate];
        [photosControllerDelegate2 placeCardPhotosController:self enterLookAroundForMapItem:self->_mapItem lookAroundView:lookAroundViewIfPresent];
      }

      return;
    }
  }

  photosControllerDelegate3 = [(MKPlacePhotosViewController *)self photosControllerDelegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    photoViews = self->_photoViews;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __46__MKPlacePhotosViewController__photoSelected___block_invoke;
    v15[3] = &unk_1E76C8E80;
    *&v15[5] = v5;
    *&v15[6] = v7;
    v15[4] = self;
    [(NSArray *)photoViews enumerateObjectsUsingBlock:v15];
  }
}

uint64_t __46__MKPlacePhotosViewController__photoSelected___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  [a2 frame];
  result = CGRectContainsPoint(v8, *(a1 + 40));
  if (result)
  {
    v6 = *(a1 + 32);

    return [v6 _photoTappedAtIndex:a3];
  }

  return result;
}

- (void)_loadPhotos
{
  if (!self->_photoLoaded || self->_loadAppImageCanceledOrFailed)
  {
    self->_photoLoaded = 1;
    self->_loadAppImageCanceledOrFailed = 0;
    v3 = [(NSArray *)self->_photoViews count];
    if (v3)
    {
      v4 = v3;
      v5 = 0;
      v6 = 0;
      v18 = v20;
      do
      {
        v7 = [(NSArray *)self->_photoViews objectAtIndexedSubscript:v5, v18];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = v7;
          v9 = [(NSArray *)self->_photos objectAtIndex:v6];
          [v8 frame];
          Width = CGRectGetWidth(v24);
          if (Width <= 0.0)
          {
            v14 = 100.0;
          }

          else
          {
            v11 = Width;
            v12 = +[MKSystemController sharedInstance];
            [v12 screenScale];
            v14 = v11 * v13;
          }

          v15 = [v9 urlForBestPhotoForSize:{v14, v14}];
          if (v15)
          {
            image = [v8 image];

            if (!image)
            {
              objc_initWeak(&location, self);
              v17 = +[MKAppImageManager sharedImageManager];
              v19[0] = MEMORY[0x1E69E9820];
              v19[1] = 3221225472;
              v20[0] = __42__MKPlacePhotosViewController__loadPhotos__block_invoke;
              v20[1] = &unk_1E76C8E58;
              objc_copyWeak(&v22, &location);
              v21 = v8;
              [v17 loadAppImageAtURL:v15 completionHandler:v19];

              objc_destroyWeak(&v22);
              objc_destroyWeak(&location);
            }
          }

          ++v6;
        }

        ++v5;
      }

      while (v4 != v5);
    }
  }
}

void __42__MKPlacePhotosViewController__loadPhotos__block_invoke(uint64_t a1, void *a2, uint64_t a3, char a4, uint64_t a5)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    if (!a5 && (a4 & 1) != 0 || (*(WeakRetained + 1076) = 1, (*(WeakRetained + 1200) & 1) == 0))
    {
      v11 = MEMORY[0x1E69DD250];
      v12 = *(a1 + 32);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __42__MKPlacePhotosViewController__loadPhotos__block_invoke_2;
      v13[3] = &unk_1E76CD810;
      v14 = v12;
      v15 = v8;
      [v11 transitionWithView:v14 duration:5242880 options:v13 animations:0 completion:0.200000003];
    }
  }
}

- (void)_cancelLoadPhotos
{
  if (self->_photoLoaded)
  {
    v3 = [(NSArray *)self->_photoViews count];
    photosCount = self->_photosCount;
    if (v3 < photosCount)
    {
      photosCount = [(NSArray *)self->_photoViews count];
    }

    if (photosCount)
    {
      for (i = 0; i != photosCount; ++i)
      {
        v6 = [(NSArray *)self->_photoViews objectAtIndexedSubscript:i];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7 = v6;
          v8 = [(NSArray *)self->_photos objectAtIndex:i];
          [v7 frame];
          Width = CGRectGetWidth(v16);
          if (Width <= 0.0)
          {
            v13 = 100.0;
          }

          else
          {
            v10 = Width;
            v11 = +[MKSystemController sharedInstance];
            [v11 screenScale];
            v13 = v10 * v12;
          }

          v14 = [v8 urlForBestPhotoForSize:{v13, v13}];
          if (v14)
          {
            v15 = +[MKAppImageManager sharedImageManager];
            [v15 cancelLoadAppImageAtURL:v14];
          }
        }
      }
    }
  }
}

- (void)_updatePhotoBackgroundColor:(id)color
{
  v15 = *MEMORY[0x1E69E9840];
  normalBackgroundColor = [color normalBackgroundColor];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_photoViews;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) _mapkit_setBackgroundColor:{normalBackgroundColor, v10}];
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)infoCardThemeChanged
{
  v6.receiver = self;
  v6.super_class = MKPlacePhotosViewController;
  [(UIViewController *)&v6 infoCardThemeChanged];
  mk_theme = [(UIViewController *)self mk_theme];
  [(MKPlacePhotosViewController *)self _updatePhotoBackgroundColor:mk_theme];

  [(MKPlacePhotosViewController *)self updateAttributionCell];
  mk_theme2 = [(UIViewController *)self mk_theme];
  separatorLineColor = [mk_theme2 separatorLineColor];
  [(UIView *)self->_bottomHairline setBackgroundColor:separatorLineColor];
}

- (void)_updateChevronVisibility
{
  [(UIScrollView *)self->_photosContainerScrollView frame];
  Width = CGRectGetWidth(v12);
  [(UIScrollView *)self->_photosContainerScrollView contentSize];
  v5 = v4 - Width;
  [(UIScrollView *)self->_photosContainerScrollView contentOffset];
  v7 = v6 <= 0.0;
  [(UIScrollView *)self->_photosContainerScrollView contentOffset];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__MKPlacePhotosViewController__updateChevronVisibility__block_invoke;
  v9[3] = &unk_1E76CC808;
  v9[4] = self;
  v10 = v7;
  v11 = v8 >= v5;
  [MEMORY[0x1E69DD250] animateWithDuration:v9 animations:0.2];
}

uint64_t __55__MKPlacePhotosViewController__updateChevronVisibility__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hoverActive];
  v3 = 0.0;
  v4 = 0.0;
  if (v2)
  {
    v4 = 1.0;
    if (*(a1 + 40))
    {
      v4 = 0.0;
    }
  }

  [*(*(a1 + 32) + 1160) setAlpha:v4];
  if ([*(a1 + 32) hoverActive])
  {
    if (*(a1 + 41))
    {
      v3 = 0.0;
    }

    else
    {
      v3 = 1.0;
    }
  }

  v5 = *(*(a1 + 32) + 1168);

  return [v5 setAlpha:v3];
}

- (void)setHoverActive:(BOOL)active
{
  if (self->_hoverActive != active)
  {
    self->_hoverActive = active;
    [(MKPlacePhotosViewController *)self _updateChevronVisibility];
  }
}

- (void)handleHover:(id)hover
{
  v4 = ([hover state] - 1) < 2;

  [(MKPlacePhotosViewController *)self setHoverActive:v4];
}

- (void)_adjustScrollIndexByOffset:(int64_t)offset
{
  [(UIScrollView *)self->_photosContainerScrollView frame];
  Width = CGRectGetWidth(v13);
  [(UIScrollView *)self->_photosContainerScrollView contentOffset];
  v7 = round(v6 / Width);
  [(UIScrollView *)self->_photosContainerScrollView contentSize];
  v9 = v8 - Width;
  v10 = v7 + offset;
  if (v10 < 0.0)
  {
    v10 = 0.0;
  }

  v11 = Width * v10;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __58__MKPlacePhotosViewController__adjustScrollIndexByOffset___block_invoke;
  v12[3] = &unk_1E76C9AD0;
  if (v11 < v9)
  {
    v9 = v11;
  }

  v12[4] = self;
  *&v12[5] = v9;
  [MEMORY[0x1E69DD250] animateWithDuration:v12 animations:0.2];
}

- (void)_updateAlphaAttribution
{
  if (self->_parentScrollView)
  {
    photosSmallAttributionsView = self->_photosSmallAttributionsView;
    if (photosSmallAttributionsView)
    {
      [(UIView *)photosSmallAttributionsView bounds];
      v5 = v4;
      v7 = v6;
      v9 = v8;
      v11 = v10;
      [(UIScrollView *)self->_parentScrollView bounds];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v38.origin.x = v5;
      v38.origin.y = v7;
      v38.size.width = v9;
      v38.size.height = v11;
      MaxY = CGRectGetMaxY(v38);
      [(UIScrollView *)self->_parentScrollView convertRect:self->_photosSmallAttributionsView fromView:v5, v7, v9, v11];
      v21 = v20;
      v23 = v22;
      v25 = v24;
      rect = v26;
      v39.origin.x = v13;
      v39.origin.y = v15;
      v39.size.width = v17;
      v39.size.height = v19;
      v27 = CGRectGetMaxY(v39);
      v40.origin.x = v13;
      v40.origin.y = v15;
      v40.size.width = v17;
      v40.size.height = v19;
      v28 = CGRectGetMaxY(v40);
      v41.origin.x = v21;
      v41.origin.y = v23;
      v41.size.width = v25;
      v41.size.height = rect;
      v29 = CGRectGetMaxY(v41);
      [(UIView *)self->_photosSmallAttributionsView setHidden:v29 >= v27];
      v31 = 0.0;
      if (v29 < v27)
      {
        v30 = v28 - MaxY;
        v31 = 1.0;
        if (v28 - MaxY <= v29 && v29 < v27)
        {
          v33 = (v29 - v30) / MaxY;
          v30 = 1.0;
          v31 = 1.0 - v33;
        }
      }

      v34 = self->_photosSmallAttributionsView;

      [(UIView *)v34 setAlpha:v31, v30];
    }
  }
}

- (void)_catchScrollNotification:(id)notification
{
  object = [notification object];
  parentScrollView = self->_parentScrollView;
  self->_parentScrollView = object;

  [(MKPlacePhotosViewController *)self _updateAlphaAttribution];
}

- (void)updateAttributionPositionWithOffset:(double)offset
{
  photosSmallAttributionsView = self->_photosSmallAttributionsView;
  if (!photosSmallAttributionsView)
  {
    return;
  }

  [(UIView *)photosSmallAttributionsView intrinsicContentSize];
  v7 = v6;
  v9 = v8;
  traitCollection = [(MKPlacePhotosViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 5)
  {
    externalView = self->_externalView;
    if (externalView)
    {
      [(UIView *)externalView bounds];
      v14 = v13 + 0.0;
    }

    else
    {
      v14 = 0.0;
    }
  }

  else
  {
    view = [(MKPlacePhotosViewController *)self view];
    [view directionalLayoutMargins];
    v17 = v16;

    v18 = self->_externalView;
    if (v18)
    {
      [(UIView *)v18 bounds];
      v20 = v19 + 5.0;
    }

    else
    {
      v20 = 0.0;
    }

    v14 = v17 + v20;
  }

  analyticsDelegate = [(MKPlacePhotosViewController *)self analyticsDelegate];

  if (analyticsDelegate)
  {
    lastPhotoScrollOffset = self->_lastPhotoScrollOffset;
    if (lastPhotoScrollOffset >= offset || self->_photoScrollViewScrollingLeft)
    {
      if (lastPhotoScrollOffset <= offset || self->_photoScrollViewScrollingRight)
      {
        goto LABEL_18;
      }

      self->_photoScrollViewScrollingLeft = 0;
      self->_photoScrollViewScrollingRight = 1;
      v23 = 6049;
    }

    else
    {
      self->_photoScrollViewScrollingLeft = 1;
      self->_photoScrollViewScrollingRight = 0;
      v23 = 6048;
    }

    analyticsDelegate2 = [(MKPlacePhotosViewController *)self analyticsDelegate];
    [analyticsDelegate2 infoCardAnalyticsDidSelectAction:v23 eventValue:0 feedbackDelegateSelector:0 actionRichProviderId:0 classification:0];
  }

LABEL_18:
  self->_lastPhotoScrollOffset = offset;
  v25 = fmax(v14 - offset, 0.0) + 8.0;
  [(UIScrollView *)self->_photosContainerScrollView frame];
  v26 = CGRectGetHeight(v32) - v9 + -8.0;
  if (self->_isRTL)
  {
    view2 = [(MKPlacePhotosViewController *)self view];
    [view2 frame];
    MaxX = CGRectGetMaxX(v33);

    v34.origin.x = v25;
    v34.origin.y = v26;
    v34.size.width = v7;
    v34.size.height = v9;
    v25 = MaxX - CGRectGetMaxX(v34) + -8.0;
  }

  [(UIView *)self->_photosSmallAttributionsView setFrame:v25, v26, v7, v9];
  if (v26 < 0.0 || !self->_parentScrollView)
  {
    v29 = 0.0;
    if (v26 >= 0.0)
    {
      v29 = 1.0;
    }

    v30 = self->_photosSmallAttributionsView;

    [(UIView *)v30 setAlpha:v29];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  [scrollCopy contentOffset];
  v5 = v4;
  if (self->_isRTL)
  {
    [scrollCopy contentSize];
    v7 = v6 - v5;
    [scrollCopy frame];
    v5 = v7 - CGRectGetWidth(v10);
  }

  [(MKPlacePhotosViewController *)self updateAttributionPositionWithOffset:v5];
  [(MKPlacePhotosViewController *)self _updateChevronVisibility];
}

- (CGSize)_photoSizeForIndex:(unint64_t)index
{
  v3 = index % 3;
  if (self->_photosCount <= index)
  {
    if (v3 == 2)
    {
      v11 = 84.0;
    }

    else
    {
      v11 = 170.0;
    }

    if (v3 == 2)
    {
      v12 = 112.0;
    }

    else
    {
      v12 = 170.0;
    }
  }

  else if (v3)
  {
    v6 = [(NSArray *)self->_photos objectAtIndexedSubscript:index];
    if (v3 == 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 + index;
    if (v7 + index >= [(NSArray *)self->_photos count])
    {
      indexCopy = index;
    }

    else
    {
      indexCopy = v8;
    }

    v10 = [(NSArray *)self->_photos objectAtIndexedSubscript:indexCopy];
    if ([v6 format] == 2 && objc_msgSend(v10, "format") == 2)
    {
      v11 = 84.0;
      v12 = 112.0;
    }

    else
    {
      v12 = 84.0;
      v11 = 84.0;
    }
  }

  else
  {
    v13 = [(NSArray *)self->_photos objectAtIndexedSubscript:index];
    format = [v13 format];
    if (format == 2)
    {
      v12 = 226.5;
    }

    else
    {
      v12 = dbl_1A30F7170[format == 1];
    }

    v11 = 170.0;
  }

  v15 = v12;
  v16 = v11;
  result.height = v16;
  result.width = v15;
  return result;
}

- (CGSize)_photoActionSize
{
  v2 = 112.0;
  v3 = 170.0;
  if ((self->_primaryAttributionView != 0) != (self->_secondaryAttributionView != 0))
  {
    v2 = 170.0;
  }

  else
  {
    v3 = 84.0;
  }

  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)sizeForIndex:(unint64_t)index
{
  if (self->_photosCount <= index)
  {
    [(MKPlacePhotosViewController *)self _photoActionSize];
  }

  else
  {
    [(MKPlacePhotosViewController *)self _photoSizeForIndex:?];
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutImages
{
  selfCopy = self;
  v70 = *MEMORY[0x1E69E9840];
  [(UIScrollView *)self->_photosContainerScrollView bounds];
  v4 = v3;
  v6 = v5;
  if ([(NSArray *)selfCopy->_photoViews count])
  {
    if (v6 == 0.0 || v4 == 0.0)
    {
      return;
    }

    v7 = *MEMORY[0x1E695F060];
    if (selfCopy->_externalView)
    {
      v8 = 170.0;
    }

    else
    {
      v8 = *(MEMORY[0x1E695F060] + 8);
    }

    if (selfCopy->_externalView)
    {
      v9 = 231.5;
    }

    else
    {
      v9 = 0.0;
    }

    if (selfCopy->_externalView)
    {
      v10 = 226.5;
    }

    else
    {
      v10 = *MEMORY[0x1E695F060];
    }
  }

  else
  {
    if (!selfCopy->_externalView || v6 == 0.0 || v4 == 0.0)
    {
      return;
    }

    v10 = 226.5;
    v9 = 231.5;
    v8 = 170.0;
  }

  if (!selfCopy->_mode)
  {
    v58 = 1088;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    p_isa = &selfCopy->super.super.super.isa;
    v57 = 1024;
    obj = selfCopy->_photoViews;
    v18 = [(NSArray *)obj countByEnumeratingWithState:&v64 objects:v69 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = 0;
      externalView = 0;
      v21 = *v65;
      v22 = 0.0;
      do
      {
        v23 = 0;
        v24 = externalView;
        do
        {
          if (*v65 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v64 + 1) + 8 * v23);
          objc_opt_class();
          v26 = v20 + (objc_opt_isKindOfClass() & 1) - 3 * (v20 / 3);
          [p_isa sizeForIndex:v20];
          v28 = v27;
          v30 = v29;
          [v25 setFrame:{v9, v22, v27, v29}];
          v31 = v30 + 2.0;
          if (v26)
          {
            v32 = v22;
          }

          else
          {
            v32 = 0.0;
          }

          if (v26)
          {
            v33 = v9;
          }

          else
          {
            v33 = v9 + v28 + 2.0;
          }

          if (v26 == 1)
          {
            v34 = v9;
          }

          else
          {
            v31 = v32;
            v34 = v33;
          }

          if (v26 == 2)
          {
            v22 = 0.0;
          }

          else
          {
            v22 = v31;
          }

          if (v26 == 2)
          {
            v9 = v9 + v28 + 2.0;
          }

          else
          {
            v9 = v34;
          }

          externalView = v25;

          ++v20;
          ++v23;
          v24 = externalView;
        }

        while (v19 != v23);
        v19 = [(NSArray *)obj countByEnumeratingWithState:&v64 objects:v69 count:16];
      }

      while (v19);
    }

    else
    {
      externalView = 0;
    }

    selfCopy = p_isa;
    [p_isa[131] setHidden:0];
    [p_isa[129] setAlwaysBounceHorizontal:1];
    goto LABEL_63;
  }

  [(UIScrollView *)selfCopy->_photosContainerScrollView bounds];
  Width = CGRectGetWidth(v71);
  [(UIScrollView *)selfCopy->_photosContainerScrollView bounds];
  Height = CGRectGetHeight(v72);
  externalView = selfCopy->_externalView;
  v14 = (Width + -2.0) / 1.5;
  if (externalView)
  {
    if (selfCopy->_photosCount)
    {
      v10 = (Width + -2.0) / 1.5;
    }

    else
    {
      v10 = Width;
    }

    v15 = v10 + 5.0;
    v16 = externalView;
    v8 = Height;
  }

  else
  {
    v15 = 0.0;
  }

  v35 = [(NSArray *)selfCopy->_photoViews count];
  photoViews = selfCopy->_photoViews;
  if (v35 < 2)
  {
    if ([(NSArray *)photoViews count]!= 1)
    {
      goto LABEL_52;
    }

    v38 = [(NSArray *)selfCopy->_photoViews objectAtIndexedSubscript:0];
    [v38 setFrame:{v15, 0.0, Width, Height}];

    [(NSArray *)selfCopy->_photoViews objectAtIndexedSubscript:0];
    externalView = v37 = externalView;
  }

  else
  {
    v37 = [(NSArray *)photoViews objectAtIndexedSubscript:0];
    [v37 setFrame:{v15, 0.0, (Width + -2.0) / 1.5, Height}];
  }

LABEL_52:
  v39 = Width + -2.0 - v14;
  if ([(NSArray *)selfCopy->_photoViews count]== 3)
  {
    Height = (Height + -2.0) * 0.5;
    v40 = v14 + v15 + 2.0;
    v41 = [(NSArray *)selfCopy->_photoViews objectAtIndexedSubscript:1];
    [v41 setFrame:{v40, 0.0, v39, Height}];

    v42 = Height + 2.0;
    v43 = 2;
    v44 = [(NSArray *)selfCopy->_photoViews objectAtIndexedSubscript:2];
LABEL_56:
    [v44 setFrame:{v40, v42, v39, Height}];

    v45 = [(NSArray *)selfCopy->_photoViews objectAtIndexedSubscript:v43];

    externalView = v45;
    goto LABEL_57;
  }

  if ([(NSArray *)selfCopy->_photoViews count]== 2)
  {
    v40 = v14 + v15 + 2.0;
    v43 = 1;
    v44 = [(NSArray *)selfCopy->_photoViews objectAtIndexedSubscript:1];
    v42 = 0.0;
    goto LABEL_56;
  }

LABEL_57:
  if (selfCopy->_externalView)
  {
    v46 = [(NSArray *)selfCopy->_photoViews count]!= 0;
  }

  else
  {
    v46 = 0;
  }

  [(UIScrollView *)selfCopy->_photosContainerScrollView setAlwaysBounceHorizontal:v46];
LABEL_63:
  [(UIView *)selfCopy->_externalView setFrame:0.0, 0.0, v10, v8, v57, v58];
  photosContainerScrollView = selfCopy->_photosContainerScrollView;
  [externalView frame];
  MaxX = CGRectGetMaxX(v73);
  [(UIScrollView *)selfCopy->_photosContainerScrollView frame];
  [(UIScrollView *)photosContainerScrollView setContentSize:MaxX, CGRectGetHeight(v74)];
  if (selfCopy->_isRTL)
  {
    [externalView frame];
    v49 = CGRectGetMaxX(v75);
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v50 = selfCopy->_photoViews;
    v51 = [(NSArray *)v50 countByEnumeratingWithState:&v60 objects:v68 count:16];
    if (v51)
    {
      v52 = v51;
      v53 = *v61;
      do
      {
        for (i = 0; i != v52; ++i)
        {
          if (*v61 != v53)
          {
            objc_enumerationMutation(v50);
          }

          v55 = *(*(&v60 + 1) + 8 * i);
          [v55 frame];
          [v55 setFrame:{v49 - CGRectGetMaxX(v76), v76.origin.y, v76.size.width, v76.size.height}];
        }

        v52 = [(NSArray *)v50 countByEnumeratingWithState:&v60 objects:v68 count:16];
      }

      while (v52);
    }

    v56 = selfCopy->_externalView;
    if (v56)
    {
      [(UIView *)v56 frame];
      [(UIView *)selfCopy->_externalView setFrame:v49 - CGRectGetMaxX(v77), v77.origin.y, v77.size.width, v77.size.height];
    }

    [(UIScrollView *)selfCopy->_photosContainerScrollView frame];
    [(UIScrollView *)selfCopy->_photosContainerScrollView setContentOffset:v49 - CGRectGetWidth(v78), 0.0];
  }
}

- (void)_applyCornerRadius
{
  v60 = *MEMORY[0x1E69E9840];
  v3 = [(NSArray *)self->_photoViews count];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v4 = self->_photoViews;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v55 objects:v59 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v56;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v56 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v55 + 1) + 8 * i);
        layer = [v9 layer];
        [layer setCornerRadius:0.0];

        layer2 = [v9 layer];
        [layer2 setMaskedCorners:0];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v55 objects:v59 count:16];
    }

    while (v6);
  }

  externalView = self->_externalView;
  if (externalView)
  {
    v13 = externalView;
    layer3 = [(UIView *)v13 layer];
    [layer3 setCornerRadius:4.0];

    layer4 = [(UIView *)v13 layer];
    [layer4 setMaskedCorners:15];

    v16 = *MEMORY[0x1E69796E8];
    layer5 = [(UIView *)v13 layer];

    [layer5 setCornerCurve:v16];
  }

  if (v3)
  {
    if (v3 == 1)
    {
      firstObject = [(NSArray *)self->_photoViews firstObject];
      layer6 = [firstObject layer];
      [layer6 setCornerRadius:4.0];

      layer7 = [firstObject layer];
      [layer7 setMaskedCorners:15];

      v21 = *MEMORY[0x1E69796E8];
      layer8 = [firstObject layer];
      [layer8 setCornerCurve:v21];
    }

    else
    {
      isRTL = self->_isRTL;
      photoViews = self->_photoViews;
      if (~(3 * (v3 / 3)) + v3 > 1)
      {
        firstObject = [(NSArray *)photoViews firstObject];
        layer9 = [firstObject layer];
        [layer9 setCornerRadius:4.0];

        layer10 = [firstObject layer];
        v27 = layer10;
        v28 = v3 - 2;
        if (isRTL)
        {
          [layer10 setMaskedCorners:10];

          v21 = *MEMORY[0x1E69796E8];
          layer11 = [firstObject layer];
          [layer11 setCornerCurve:v21];

          layer8 = [(NSArray *)self->_photoViews objectAtIndexedSubscript:v28];
          v22Layer = [layer8 layer];
          [v22Layer setCornerRadius:4.0];

          v22Layer2 = [layer8 layer];
          [v22Layer2 setMaskedCorners:1];

          v22Layer3 = [layer8 layer];
          [v22Layer3 setCornerCurve:v21];

          lastObject = [(NSArray *)self->_photoViews lastObject];
          layer12 = [lastObject layer];
          [layer12 setCornerRadius:4.0];

          layer13 = [lastObject layer];
          v36 = layer13;
          v37 = 4;
        }

        else
        {
          [layer10 setMaskedCorners:5];

          v21 = *MEMORY[0x1E69796E8];
          layer14 = [firstObject layer];
          [layer14 setCornerCurve:v21];

          layer8 = [(NSArray *)self->_photoViews objectAtIndexedSubscript:v28];
          v22Layer4 = [layer8 layer];
          [v22Layer4 setCornerRadius:4.0];

          v22Layer5 = [layer8 layer];
          [v22Layer5 setMaskedCorners:2];

          v22Layer6 = [layer8 layer];
          [v22Layer6 setCornerCurve:v21];

          lastObject = [(NSArray *)self->_photoViews lastObject];
          layer15 = [lastObject layer];
          [layer15 setCornerRadius:4.0];

          layer13 = [lastObject layer];
          v36 = layer13;
          v37 = 8;
        }

        [layer13 setMaskedCorners:{v37, v55}];

        layer16 = [lastObject layer];
        [layer16 setCornerCurve:v21];
      }

      else
      {
        if (self->_isRTL)
        {
          firstObject = [(NSArray *)photoViews lastObject];
          [(NSArray *)self->_photoViews firstObject];
        }

        else
        {
          firstObject = [(NSArray *)photoViews firstObject];
          [(NSArray *)self->_photoViews lastObject];
        }
        layer8 = ;
        layer17 = [firstObject layer];
        [layer17 setCornerRadius:4.0];

        layer18 = [firstObject layer];
        [layer18 setMaskedCorners:5];

        v21 = *MEMORY[0x1E69796E8];
        layer19 = [firstObject layer];
        [layer19 setCornerCurve:v21];

        v22Layer7 = [layer8 layer];
        [v22Layer7 setCornerRadius:4.0];

        v22Layer8 = [layer8 layer];
        [v22Layer8 setMaskedCorners:10];

        lastObject = [layer8 layer];
        [lastObject setCornerCurve:v21];
      }
    }

    if ([(MKPlacePhotosViewController *)self numberOfBigAttributionViews]== 2)
    {
      layer20 = [(MKPhotoBigAttributionView *)self->_secondaryAttributionView layer];
      [layer20 setCornerRadius:4.0];

      layer21 = [(MKPhotoBigAttributionView *)self->_secondaryAttributionView layer];
      [layer21 setMaskedCorners:2];

      layer22 = [(MKPhotoBigAttributionView *)self->_secondaryAttributionView layer];
      [layer22 setCornerCurve:v21];

      layer23 = [(MKPhotoBigAttributionView *)self->_primaryAttributionView layer];
      [layer23 setCornerRadius:4.0];

      layer24 = [(MKPhotoBigAttributionView *)self->_primaryAttributionView layer];
      [layer24 setMaskedCorners:8];

      layer25 = [(MKPhotoBigAttributionView *)self->_primaryAttributionView layer];
      [layer25 setCornerCurve:v21];
    }
  }
}

- (void)_createImageViews
{
  if (self->_photosCount == 3 && !MapKitIdiomIsMacCatalyst())
  {
    self->_mode = 2;
  }

  v30 = [MEMORY[0x1E695DF70] arrayWithCapacity:self->_photosCount];
  traitCollection = [(MKPlacePhotosViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 5 && ([MEMORY[0x1E69A2478] modernManager], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isMuninEnabled"), v5, v6) && ((v7 = self->_options & 1, -[MKMapItem _hasLookAroundStorefront](self->_mapItem, "_hasLookAroundStorefront")) ? (v8 = v7 == 0) : (v8 = 0), v8))
  {
    WeakRetained = objc_loadWeakRetained(&self->_photosControllerDelegate);
    v25 = [WeakRetained lookAroundContainerForPlaceCardPhotosController:self];
    lookAroundContainerView = self->_lookAroundContainerView;
    self->_lookAroundContainerView = v25;

    [(MKLookAroundContainerView *)self->_lookAroundContainerView setDelegate:self];
    [(MKLookAroundContainerView *)self->_lookAroundContainerView setMapItem:self->_mapItem];
    objc_storeStrong(&self->_externalView, self->_lookAroundContainerView);
    [(UIView *)self->_photosContainer addSubview:self->_externalView];
  }

  else
  {
    v9 = objc_loadWeakRetained(&self->_photosControllerDelegate);
    [v9 cleanLookAroundContainerForPlaceCardPhotosController:self];
  }

  if (self->_photosCount)
  {
    v10 = 0;
    v11 = *MEMORY[0x1E695F058];
    v12 = *(MEMORY[0x1E695F058] + 8);
    v13 = *(MEMORY[0x1E695F058] + 16);
    v14 = *(MEMORY[0x1E695F058] + 24);
    do
    {
      v15 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{v11, v12, v13, v14}];
      [v15 setClipsToBounds:1];
      [v15 _mapkit_setImageContentMode:2];
      [v30 addObject:v15];
      [(UIView *)self->_photosContainer addSubview:v15];

      ++v10;
    }

    while (v10 < self->_photosCount);
  }

  mode = self->_mode;
  if (mode == 2)
  {
    [(MKPlacePhotosViewController *)self addAttributionCell];
    goto LABEL_29;
  }

  if (mode == 3)
  {
    goto LABEL_29;
  }

  v17 = [(MKPlacePhotosViewController *)self isFirstParty]|| self->_photosCount > 2;
  v18 = [MKPhotoBigAttributionView bigAttributionViewForMapItem:self->_mapItem attributionType:v17 isFirstParty:[(MKPlacePhotosViewController *)self isFirstParty] context:0];
  primaryAttributionView = self->_primaryAttributionView;
  self->_primaryAttributionView = v18;

  if ([(MKPlacePhotosViewController *)self shouldShowAddPhotoButtons])
  {
    if (self->_photosCount < 4)
    {
      goto LABEL_28;
    }

LABEL_25:
    v22 = [MKPhotoBigAttributionView bigAttributionViewForMapItem:self->_mapItem attributionType:0 isFirstParty:[(MKPlacePhotosViewController *)self isFirstParty] context:0];
    secondaryAttributionView = self->_secondaryAttributionView;
    self->_secondaryAttributionView = v22;

    [v30 addObject:self->_secondaryAttributionView];
    [(UIView *)self->_photosContainer addSubview:self->_secondaryAttributionView];
    goto LABEL_28;
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  if (([standardUserDefaults BOOLForKey:@"MKPlacecardForceNativePhotoCarousel"] & 1) == 0)
  {

    goto LABEL_28;
  }

  photosCount = self->_photosCount;

  if (photosCount > 3)
  {
    goto LABEL_25;
  }

LABEL_28:
  [v30 addObject:self->_primaryAttributionView];
  [(UIView *)self->_photosContainer addSubview:self->_primaryAttributionView];
LABEL_29:
  v27 = [v30 copy];
  photoViews = self->_photoViews;
  self->_photoViews = v27;

  mk_theme = [(UIViewController *)self mk_theme];
  [(MKPlacePhotosViewController *)self _updatePhotoBackgroundColor:mk_theme];

  [(MKPlacePhotosViewController *)self layoutImages];
  [(MKPlacePhotosViewController *)self _applyCornerRadius];
}

- (void)openURL
{
  analyticsDelegate = [(MKPlacePhotosViewController *)self analyticsDelegate];
  if (analyticsDelegate)
  {
    [analyticsDelegate infoCardAnalyticsDidSelectAction:6023 eventValue:0 feedbackDelegateSelector:0 actionRichProviderId:0 classification:0];
  }

  photosControllerDelegate = [(MKPlacePhotosViewController *)self photosControllerDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    photosControllerDelegate2 = [(MKPlacePhotosViewController *)self photosControllerDelegate];
    [photosControllerDelegate2 placeCardActionControllerDidSelectViewAllPhotos:0 presentingViewController:self];
  }
}

- (id)attributionString
{
  mapItem = self->_mapItem;
  _mapkit_preferredFirstPhotoVendor = [(MKMapItem *)mapItem _mapkit_preferredFirstPhotoVendor];
  v5 = _MKLocalizedStringFromThisBundle(@"More Photos on %@");
  v6 = _MKLocalizedStringFromThisBundle(@"More Photos on %@");
  mk_theme = [(UIViewController *)self mk_theme];
  if ([mk_theme isDarkTheme])
  {
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    v9 = [(MKMapItem *)mapItem _attributionFor:_mapkit_preferredFirstPhotoVendor sourceStringFormat:v5 moreSourceStringFormat:v6 imageTintColor:whiteColor];
  }

  else
  {
    v9 = [(MKMapItem *)mapItem _attributionFor:_mapkit_preferredFirstPhotoVendor sourceStringFormat:v5 moreSourceStringFormat:v6 imageTintColor:0];
  }

  return v9;
}

- (id)_firstPartyMorePhotosAttributionString
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v4 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
  v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"photo.on.rectangle"];
  v6 = MEMORY[0x1E69DCAD8];
  v7 = [MEMORY[0x1E69DB878] systemFontOfSize:13.0];
  v8 = [v6 configurationWithFont:v7];
  v9 = [v5 imageWithConfiguration:v8];
  v10 = [v9 imageWithRenderingMode:2];
  [v4 setImage:v10];

  v11 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v4];
  v12 = _MKLocalizedStringFromThisBundle(@"More Photos");
  v13 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v12];
  [v3 appendAttributedString:v11];
  [v3 appendAttributedString:v13];
  v14 = [v3 length];
  v15 = *MEMORY[0x1E69DB648];
  v16 = [MEMORY[0x1E69DB878] systemFontOfSize:13.0];
  [v3 addAttribute:v15 value:v16 range:{0, v14}];

  v17 = *MEMORY[0x1E69DB650];
  mk_theme = [(UIViewController *)self mk_theme];
  tintColor = [mk_theme tintColor];
  [v3 addAttribute:v17 value:tintColor range:{0, v14}];

  return v3;
}

- (id)formattedAttributionString
{
  v14[2] = *MEMORY[0x1E69E9840];
  attributionString = [(MKPlacePhotosViewController *)self attributionString];
  defaultParagraphStyle = [MEMORY[0x1E69DB7C8] defaultParagraphStyle];
  v5 = [defaultParagraphStyle mutableCopy];

  [v5 setAlignment:4];
  v6 = [objc_alloc(MEMORY[0x1E696AD40]) initWithAttributedString:attributionString];
  v7 = *MEMORY[0x1E69DB688];
  v14[0] = v5;
  v8 = *MEMORY[0x1E69DB650];
  v13[0] = v7;
  v13[1] = v8;
  mk_theme = [(UIViewController *)self mk_theme];
  tintColor = [mk_theme tintColor];
  v14[1] = tintColor;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  [v6 addAttributes:v11 range:{0, objc_msgSend(v6, "length")}];

  return v6;
}

- (void)updateAttributionCell
{
  attributionCell = self->_attributionCell;
  if (attributionCell)
  {
    formattedAttributionString = [(MKPlacePhotosViewController *)self formattedAttributionString];
    [(MKPlaceAttributionCell *)attributionCell setAttributionString:formattedAttributionString];
  }
}

- (void)addAttributionCell
{
  if (!self->_attributionCell)
  {
    v3 = [MKPlaceAttributionCell alloc];
    v4 = [(MKPlaceAttributionCell *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    attributionCell = self->_attributionCell;
    self->_attributionCell = v4;

    [(MKPlaceAttributionCell *)self->_attributionCell setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MKPlaceAttributionCell *)self->_attributionCell setCellDelegate:self];
    view = [(MKPlacePhotosViewController *)self view];
    [view addSubview:self->_attributionCell];

    [(MKPlacePhotosViewController *)self updateAttributionCell];
  }
}

- (void)updateBottomHairlineVisibility
{
  if ([(MKPlacePhotosViewController *)self showsBottomHairline])
  {
    [(UIView *)self->_bottomHairline setHidden:0];
    view = [(MKPlacePhotosViewController *)self view];
    window = [view window];
    screen = [window screen];
    if (screen)
    {
      window2 = [view window];
      screen2 = [window2 screen];
      [screen2 nativeScale];
      v8 = v7;
    }

    else
    {
      window2 = [MEMORY[0x1E69DCEB0] mainScreen];
      [window2 nativeScale];
      v8 = v10;
    }

    v11 = -(1.0 / v8 + 16.0);
    if (v8 <= 0.0)
    {
      v11 = -17.0;
    }

    [(NSLayoutConstraint *)self->_bottomConstraint setConstant:v11];
  }

  else
  {
    [(NSLayoutConstraint *)self->_bottomConstraint setConstant:0.0];
    bottomHairline = self->_bottomHairline;

    [(UIView *)bottomHairline setHidden:1];
  }
}

- (void)setShowsBottomHairline:(BOOL)hairline
{
  if (self->_showsBottomHairline != hairline)
  {
    self->_showsBottomHairline = hairline;
    [(MKPlacePhotosViewController *)self updateBottomHairlineVisibility];
  }
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MKPlacePhotosViewController;
  [(MKPlacePhotosViewController *)&v2 dealloc];
}

- (void)_didBecomeActive:(id)active
{
  if ([(MKPlacePhotosViewController *)self isViewLoaded])
  {
    view = [(MKPlacePhotosViewController *)self view];
    window = [view window];

    if (window)
    {

      [(MKPlacePhotosViewController *)self _loadPhotos];
    }
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = MKPlacePhotosViewController;
  [(MKPlacePhotosViewController *)&v5 viewWillDisappear:disappear];
  self->_isDisappearing = 1;
  [(MKPlacePhotosViewController *)self _cancelLoadPhotos];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"MKStackingScrollNotification" object:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = MKPlacePhotosViewController;
  [(MKPlacePhotosViewController *)&v5 viewWillAppear:appear];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"MKPlacePhotosViewControllerWillDisplayPhotos" object:self];

  self->_isDisappearing = 0;
}

- (void)viewDidAppear:(BOOL)appear
{
  v20[1] = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = MKPlacePhotosViewController;
  [(MKPlacePhotosViewController *)&v18 viewDidAppear:appear];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__catchScrollNotification_ name:@"MKStackingScrollNotification" object:0];

  traitCollection = [(MKPlacePhotosViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  lookAroundContainerView = self->_lookAroundContainerView;
  mapItem = self->_mapItem;
  v9 = userInterfaceIdiom == 5 || [(UIViewController *)self _mapkit_contentVisibility]== 3;
  [(MKLookAroundContainerView *)lookAroundContainerView setMapItem:mapItem wantsCloseUpView:v9];
  lookAroundViewIfPresent = [(MKLookAroundContainerView *)self->_lookAroundContainerView lookAroundViewIfPresent];
  v11 = lookAroundViewIfPresent;
  if (lookAroundViewIfPresent)
  {
    v19 = @"MKLookAroundView";
    v20[0] = lookAroundViewIfPresent;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  }

  else
  {
    v12 = 0;
  }

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 postNotificationName:@"MKPlacePhotosViewControllerDidDisplayPhotos" object:self userInfo:v12];

  if (self->_initialAppearanceSignpostID != -1)
  {
    v14 = MKGetPlaceCardLog();
    v15 = v14;
    initialAppearanceSignpostID = self->_initialAppearanceSignpostID;
    if (initialAppearanceSignpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      *v17 = 0;
      _os_signpost_emit_with_name_impl(&dword_1A2EA0000, v15, OS_SIGNPOST_INTERVAL_END, initialAppearanceSignpostID, "PlacecardPhotosInitialAppearance", &unk_1A30FEA0E, v17, 2u);
    }

    self->_initialAppearanceSignpostID = -1;
  }
}

- (void)viewDidLoad
{
  v174[6] = *MEMORY[0x1E69E9840];
  v3 = MKGetPlaceCardLog();
  if (os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A2EA0000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "PlacePhotosViewDidLoad", &unk_1A30FEA0E, buf, 2u);
  }

  v167.receiver = self;
  v167.super_class = MKPlacePhotosViewController;
  [(MKPlacePhotosViewController *)&v167 viewDidLoad];
  view = [(MKPlacePhotosViewController *)self view];
  [view setPreservesSuperviewLayoutMargins:1];

  v5 = objc_alloc(MEMORY[0x1E69DCEF8]);
  v6 = *MEMORY[0x1E695F058];
  v7 = *(MEMORY[0x1E695F058] + 8);
  v8 = *(MEMORY[0x1E695F058] + 16);
  v9 = *(MEMORY[0x1E695F058] + 24);
  v10 = [v5 initWithFrame:{*MEMORY[0x1E695F058], v7, v8, v9}];
  photosContainerScrollView = self->_photosContainerScrollView;
  self->_photosContainerScrollView = v10;

  [(UIScrollView *)self->_photosContainerScrollView setDelegate:self];
  [(UIScrollView *)self->_photosContainerScrollView setAlwaysBounceHorizontal:0];
  [(UIScrollView *)self->_photosContainerScrollView setAlwaysBounceVertical:0];
  [(UIScrollView *)self->_photosContainerScrollView setShowsHorizontalScrollIndicator:0];
  [(UIScrollView *)self->_photosContainerScrollView setShowsVerticalScrollIndicator:0];
  traitCollection = [(MKPlacePhotosViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  v14 = self->_photosContainerScrollView;
  if (userInterfaceIdiom == 5)
  {
    [(UIScrollView *)v14 setClipsToBounds:1];
    layer = [(UIScrollView *)self->_photosContainerScrollView layer];
    [layer setCornerRadius:4.0];
  }

  else
  {
    [(UIScrollView *)v14 setClipsToBounds:0];
  }

  objc_storeStrong(&self->_photosContainer, self->_photosContainerScrollView);
  traitCollection2 = [(MKPlacePhotosViewController *)self traitCollection];
  userInterfaceIdiom2 = [traitCollection2 userInterfaceIdiom];

  if (userInterfaceIdiom2 == 5)
  {
    v18 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v6, v7, v8, v9}];
    attributionClippingview = self->_attributionClippingview;
    self->_attributionClippingview = v18;

    [(UIView *)self->_attributionClippingview setClipsToBounds:1];
    [(UIView *)self->_attributionClippingview setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  [(UIScrollView *)self->_photosContainerScrollView setPreservesSuperviewLayoutMargins:1];
  [(UIScrollView *)self->_photosContainerScrollView setTranslatesAutoresizingMaskIntoConstraints:0];
  view2 = [(MKPlacePhotosViewController *)self view];
  [view2 addSubview:self->_photosContainerScrollView];

  if (self->_attributionClippingview)
  {
    view3 = [(MKPlacePhotosViewController *)self view];
    [view3 addSubview:self->_attributionClippingview];
  }

  array = [MEMORY[0x1E695DF70] array];
  traitCollection3 = [(MKPlacePhotosViewController *)self traitCollection];
  userInterfaceIdiom3 = [traitCollection3 userInterfaceIdiom];

  v166 = array;
  if (userInterfaceIdiom3 == 5)
  {
    v25 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"chevron.compact.left"];
    v26 = [MEMORY[0x1E69DC738] buttonWithType:0];
    previousPageButton = self->_previousPageButton;
    self->_previousPageButton = v26;

    [(UIButton *)self->_previousPageButton setTranslatesAutoresizingMaskIntoConstraints:0];
    systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
    [(UIButton *)self->_previousPageButton setTintColor:systemGrayColor];

    [(UIButton *)self->_previousPageButton setAlpha:0.0];
    v162 = v25;
    [(UIButton *)self->_previousPageButton setImage:v25 forState:0];
    v29 = self->_previousPageButton;
    v30 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:21.0];
    [(UIButton *)v29 setPreferredSymbolConfiguration:v30 forImageInState:0];

    [(UIButton *)self->_previousPageButton addTarget:self action:sel__scrollPrevious forControlEvents:64];
    view4 = [(MKPlacePhotosViewController *)self view];
    [view4 addSubview:self->_previousPageButton];

    v32 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"chevron.compact.right"];
    v33 = [MEMORY[0x1E69DC738] buttonWithType:0];
    nextPageButton = self->_nextPageButton;
    self->_nextPageButton = v33;

    [(UIButton *)self->_nextPageButton setTranslatesAutoresizingMaskIntoConstraints:0];
    systemGrayColor2 = [MEMORY[0x1E69DC888] systemGrayColor];
    [(UIButton *)self->_nextPageButton setTintColor:systemGrayColor2];

    [(UIButton *)self->_nextPageButton setAlpha:0.0];
    v160 = v32;
    [(UIButton *)self->_nextPageButton setImage:v32 forState:0];
    v36 = self->_nextPageButton;
    v37 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:21.0];
    [(UIButton *)v36 setPreferredSymbolConfiguration:v37 forImageInState:0];

    [(UIButton *)self->_nextPageButton addTarget:self action:sel__scrollNext forControlEvents:64];
    view5 = [(MKPlacePhotosViewController *)self view];
    [view5 addSubview:self->_nextPageButton];

    centerXAnchor = [(UIView *)self->_attributionClippingview centerXAnchor];
    centerXAnchor2 = [(UIScrollView *)self->_photosContainerScrollView centerXAnchor];
    v152 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v174[0] = v152;
    centerYAnchor = [(UIView *)self->_attributionClippingview centerYAnchor];
    centerYAnchor2 = [(UIScrollView *)self->_photosContainerScrollView centerYAnchor];
    v145 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v174[1] = v145;
    heightAnchor = [(UIView *)self->_attributionClippingview heightAnchor];
    heightAnchor2 = [(UIScrollView *)self->_photosContainerScrollView heightAnchor];
    v138 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
    v174[2] = v138;
    widthAnchor = [(UIView *)self->_attributionClippingview widthAnchor];
    widthAnchor2 = [(UIScrollView *)self->_photosContainerScrollView widthAnchor];
    v133 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    v174[3] = v133;
    centerYAnchor3 = [(UIButton *)self->_previousPageButton centerYAnchor];
    centerYAnchor4 = [(UIScrollView *)self->_photosContainerScrollView centerYAnchor];
    [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v42 = v41 = array;
    v174[4] = v42;
    centerYAnchor5 = [(UIButton *)self->_nextPageButton centerYAnchor];
    centerYAnchor6 = [(UIScrollView *)self->_photosContainerScrollView centerYAnchor];
    v45 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
    v174[5] = v45;
    v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v174 count:6];
    [v41 addObjectsFromArray:v46];

    v47 = self->_previousPageButton;
    if (self->_isRTL)
    {
      leadingAnchor = [(UIButton *)v47 leadingAnchor];
      trailingAnchor = [(UIScrollView *)self->_photosContainerScrollView trailingAnchor];
      v50 = [leadingAnchor constraintEqualToAnchor:trailingAnchor constant:3.0];
      v173[0] = v50;
      trailingAnchor2 = [(UIButton *)self->_nextPageButton trailingAnchor];
      leadingAnchor2 = [(UIScrollView *)self->_photosContainerScrollView leadingAnchor];
      v53 = [trailingAnchor2 constraintEqualToAnchor:leadingAnchor2 constant:-3.0];
      v173[1] = v53;
      v54 = v173;
    }

    else
    {
      leadingAnchor = [(UIButton *)v47 trailingAnchor];
      trailingAnchor = [(UIScrollView *)self->_photosContainerScrollView leadingAnchor];
      v50 = [leadingAnchor constraintEqualToAnchor:trailingAnchor constant:-3.0];
      v172[0] = v50;
      trailingAnchor2 = [(UIButton *)self->_nextPageButton leadingAnchor];
      leadingAnchor2 = [(UIScrollView *)self->_photosContainerScrollView trailingAnchor];
      v53 = [trailingAnchor2 constraintEqualToAnchor:leadingAnchor2 constant:3.0];
      v172[1] = v53;
      v54 = v172;
    }

    v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:2];
    array = v166;
    [v166 addObjectsFromArray:v55];
  }

  v56 = [objc_alloc(MEMORY[0x1E69DCAA0]) initWithTarget:self action:sel_handleHover_];
  view6 = [(MKPlacePhotosViewController *)self view];
  v164 = v56;
  [view6 addGestureRecognizer:v56];

  v58 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__photoSelected_];
  view7 = [(MKPlacePhotosViewController *)self view];
  v163 = v58;
  [view7 addGestureRecognizer:v58];

  if (![(MKPlacePhotosViewController *)self shouldShowAddPhotoButtons])
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v61 = [standardUserDefaults BOOLForKey:@"MKPlacecardForceNativePhotoCarousel"];

    if ((v61 & 1) == 0 && self->_mode != 2)
    {
      _mapkit_preferredFirstPhotoVendor = [(MKMapItem *)self->_mapItem _mapkit_preferredFirstPhotoVendor];
      shouldSuppressPhotoAttribution = [_mapkit_preferredFirstPhotoVendor shouldSuppressPhotoAttribution];

      if ((shouldSuppressPhotoAttribution & 1) == 0 && self->_mode != 3)
      {
        v64 = [[MKPhotoSmallAttributionView alloc] initWithMapItem:self->_mapItem];
        photosSmallAttributionsView = self->_photosSmallAttributionsView;
        self->_photosSmallAttributionsView = &v64->super;

        [(UIView *)self->_photosSmallAttributionsView setAlpha:0.0];
        if (self->_photosSmallAttributionsView)
        {
          v66 = self->_attributionClippingview;
          if (v66)
          {
            [(UIView *)v66 addSubview:?];
          }

          else
          {
            view8 = [(MKPlacePhotosViewController *)self view];
            [view8 addSubview:self->_photosSmallAttributionsView];
          }
        }
      }
    }
  }

  mode = self->_mode;
  if (mode)
  {
    v69 = mode == 3;
  }

  else
  {
    v69 = 1;
  }

  if (v69)
  {
    v70 = 170.0;
  }

  else
  {
    v70 = 163.0;
  }

  heightAnchor3 = [(UIScrollView *)self->_photosContainerScrollView heightAnchor];
  v72 = [heightAnchor3 constraintEqualToConstant:v70];
  heightConstraint = self->_heightConstraint;
  self->_heightConstraint = v72;

  leadingAnchor3 = [(UIScrollView *)self->_photosContainerScrollView leadingAnchor];
  view9 = [(MKPlacePhotosViewController *)self view];
  layoutMarginsGuide = [view9 layoutMarginsGuide];
  leadingAnchor4 = [layoutMarginsGuide leadingAnchor];
  v78 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];

  trailingAnchor3 = [(UIScrollView *)self->_photosContainerScrollView trailingAnchor];
  view10 = [(MKPlacePhotosViewController *)self view];
  layoutMarginsGuide2 = [view10 layoutMarginsGuide];
  trailingAnchor4 = [layoutMarginsGuide2 trailingAnchor];
  v83 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];

  v171[0] = self->_heightConstraint;
  topAnchor = [(UIScrollView *)self->_photosContainerScrollView topAnchor];
  view11 = [(MKPlacePhotosViewController *)self view];
  topAnchor2 = [view11 topAnchor];
  v87 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v171[1] = v87;
  v171[2] = v78;
  v159 = v83;
  v161 = v78;
  v171[3] = v83;
  v88 = [MEMORY[0x1E695DEC8] arrayWithObjects:v171 count:4];
  [array addObjectsFromArray:v88];

  v89 = objc_alloc_init(MEMORY[0x1E69DD250]);
  bottomHairline = self->_bottomHairline;
  self->_bottomHairline = v89;

  [(UIView *)self->_bottomHairline setTranslatesAutoresizingMaskIntoConstraints:0];
  view12 = [(MKPlacePhotosViewController *)self view];
  [view12 addSubview:self->_bottomHairline];

  mk_theme = [(UIViewController *)self mk_theme];
  separatorLineColor = [mk_theme separatorLineColor];
  [(UIView *)self->_bottomHairline setBackgroundColor:separatorLineColor];

  [(UIView *)self->_bottomHairline setHidden:1];
  leadingAnchor5 = [(UIView *)self->_bottomHairline leadingAnchor];
  view13 = [(MKPlacePhotosViewController *)self view];
  layoutMarginsGuide3 = [view13 layoutMarginsGuide];
  [layoutMarginsGuide3 leadingAnchor];
  v148 = v156 = leadingAnchor5;
  v146 = [leadingAnchor5 constraintEqualToAnchor:?];
  v170[0] = v146;
  trailingAnchor5 = [(UIView *)self->_bottomHairline trailingAnchor];
  view14 = [(MKPlacePhotosViewController *)self view];
  layoutMarginsGuide4 = [view14 layoutMarginsGuide];
  [layoutMarginsGuide4 trailingAnchor];
  v139 = v144 = trailingAnchor5;
  v137 = [trailingAnchor5 constraintEqualToAnchor:?];
  v170[1] = v137;
  bottomAnchor = [(UIView *)self->_bottomHairline bottomAnchor];
  view15 = [(MKPlacePhotosViewController *)self view];
  bottomAnchor2 = [view15 bottomAnchor];
  v135 = bottomAnchor;
  v99 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v170[2] = v99;
  heightAnchor4 = [(UIView *)self->_bottomHairline heightAnchor];
  view16 = [(MKPlacePhotosViewController *)self view];
  window = [view16 window];
  screen = [window screen];
  if (screen)
  {
    window2 = [view16 window];
    screen2 = [window2 screen];
    [screen2 nativeScale];
    v107 = v106;

    array = v166;
  }

  else
  {
    window2 = [MEMORY[0x1E69DCEB0] mainScreen];
    [window2 nativeScale];
    v107 = v108;
  }

  v109 = 1.0;
  if (v107 > 0.0)
  {
    v109 = 1.0 / v107;
  }

  v110 = [heightAnchor4 constraintEqualToConstant:v109];
  v170[3] = v110;
  v111 = [MEMORY[0x1E695DEC8] arrayWithObjects:v170 count:4];
  [array addObjectsFromArray:v111];

  if (self->_mapItem)
  {
    [(MKPlacePhotosViewController *)self _createImageViews];
  }

  attributionCell = self->_attributionCell;
  if (attributionCell)
  {
    bottomAnchor3 = [(MKPlaceAttributionCell *)attributionCell bottomAnchor];
    view17 = [(MKPlacePhotosViewController *)self view];
    bottomAnchor4 = [view17 bottomAnchor];
    v116 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    bottomConstraint = self->_bottomConstraint;
    self->_bottomConstraint = v116;

    topAnchor3 = [(MKPlaceAttributionCell *)self->_attributionCell topAnchor];
    bottomAnchor5 = [(UIView *)self->_photosContainer bottomAnchor];
    bottomAnchor7 = [topAnchor3 constraintEqualToAnchor:bottomAnchor5];
    v169[0] = bottomAnchor7;
    leadingAnchor6 = [(MKPlaceAttributionCell *)self->_attributionCell leadingAnchor];
    view18 = [(MKPlacePhotosViewController *)self view];
    leadingAnchor7 = [view18 leadingAnchor];
    v120 = [(NSLayoutConstraint *)leadingAnchor6 constraintEqualToAnchor:leadingAnchor7];
    v169[1] = v120;
    trailingAnchor6 = [(MKPlaceAttributionCell *)self->_attributionCell trailingAnchor];
    view19 = [(MKPlacePhotosViewController *)self view];
    trailingAnchor7 = [view19 trailingAnchor];
    v124 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7];
    v169[2] = v124;
    v125 = [MEMORY[0x1E695DEC8] arrayWithObjects:v169 count:3];
    [v166 addObjectsFromArray:v125];

    view20 = bottomAnchor5;
    bottomAnchor6 = topAnchor3;

    array = v166;
    v128 = leadingAnchor6;
  }

  else
  {
    bottomAnchor6 = [(UIScrollView *)self->_photosContainerScrollView bottomAnchor];
    view20 = [(MKPlacePhotosViewController *)self view];
    bottomAnchor7 = [view20 bottomAnchor];
    v129 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7];
    v128 = self->_bottomConstraint;
    self->_bottomConstraint = v129;
  }

  [array addObject:self->_bottomConstraint];
  [MEMORY[0x1E696ACD8] activateConstraints:array];
  [(MKPlacePhotosViewController *)self updateBottomHairlineVisibility];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__didBecomeActive_ name:*MEMORY[0x1E69DDAB0] object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__willResignActive_ name:*MEMORY[0x1E69DDBC8] object:0];

  v132 = MKGetPlaceCardLog();
  if (os_signpost_enabled(v132))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A2EA0000, v132, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "PlacePhotosViewDidLoad", &unk_1A30FEA0E, buf, 2u);
  }
}

- (MKPlacePhotosViewController)initWithMapItem:(id)item mode:(unint64_t)mode options:(unint64_t)options
{
  v52 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v50.receiver = self;
  v50.super_class = MKPlacePhotosViewController;
  v10 = [(MKPlacePhotosViewController *)&v50 init];
  if (v10)
  {
    v11 = MKGetPlaceCardLog();
    v10->_initialAppearanceSignpostID = os_signpost_id_generate(v11);

    v12 = MKGetPlaceCardLog();
    v13 = v12;
    initialAppearanceSignpostID = v10->_initialAppearanceSignpostID;
    if (initialAppearanceSignpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A2EA0000, v13, OS_SIGNPOST_INTERVAL_BEGIN, initialAppearanceSignpostID, "PlacecardPhotosInitialAppearance", &unk_1A30FEA0E, buf, 2u);
    }

    objc_storeStrong(&v10->_mapItem, item);
    v10->_mode = mode;
    v10->_options = options;
    v10->_originalMode = mode;
    v10->_photoLoaded = 0;
    v15 = objc_alloc(MEMORY[0x1E695DF70]);
    _geoMapItem = [(MKMapItem *)v10->_mapItem _geoMapItem];
    _photos = [_geoMapItem _photos];
    v18 = [v15 initWithCapacity:{objc_msgSend(_photos, "count")}];

    if ([v18 count] >= 4)
    {
      v19 = [v18 subarrayWithRange:{0, 3}];
      v20 = [v19 mutableCopy];

      v18 = v20;
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    _geoMapItem2 = [(MKMapItem *)v10->_mapItem _geoMapItem];
    _photos2 = [_geoMapItem2 _photos];

    v23 = [_photos2 countByEnumeratingWithState:&v45 objects:v51 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v46;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v46 != v25)
          {
            objc_enumerationMutation(_photos2);
          }

          v27 = [[MKMapItemPhoto alloc] initWithGeoMapItemPhoto:*(*(&v45 + 1) + 8 * i)];
          [v18 addObject:v27];
        }

        v24 = [_photos2 countByEnumeratingWithState:&v45 objects:v51 count:16];
      }

      while (v24);
    }

    v28 = [v18 copy];
    photos = v10->_photos;
    v10->_photos = v28;

    v30 = [(NSArray *)v10->_photos indexOfObjectPassingTest:&__block_literal_global_19106];
    v31 = [(NSArray *)v10->_photos count];
    v10->_photosCount = v31;
    if (v30 != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_17;
    }

    mode = v10->_mode;
    if (mode != 2)
    {
      if (v31 == 3)
      {
LABEL_17:
        v33 = 2;
LABEL_18:
        v10->_mode = v33;
        goto LABEL_19;
      }

      if (!mode && v31 <= 2)
      {
        v33 = 1;
        goto LABEL_18;
      }
    }

LABEL_19:
    IsMacCatalyst = MapKitIdiomIsMacCatalyst();
    v35 = v10->_mode;
    if (IsMacCatalyst && v35 == 2)
    {
      v10->_mode = 0;
    }

    else if (v35)
    {
      goto LABEL_30;
    }

    if (v10->_photosCount >= 4)
    {
      numberOfBigAttributionViews = [(MKPlacePhotosViewController *)v10 numberOfBigAttributionViews];
      photosCount = v10->_photosCount;
      v38 = photosCount % 3;
      if (numberOfBigAttributionViews == 2)
      {
        if (!v38)
        {
          goto LABEL_30;
        }

        v39 = photosCount - v38;
      }

      else
      {
        if (v38 != 2)
        {
          goto LABEL_30;
        }

        v39 = photosCount - 1;
      }

      v10->_photosCount = v39;
    }

LABEL_30:
    if (v10->_mode - 1 <= 2)
    {
      v40 = v10->_photosCount;
      if (v40 >= 3)
      {
        v40 = 3;
      }

      v10->_photosCount = v40;
    }

    v41 = [(NSArray *)v10->_photos indexOfObjectPassingTest:&__block_literal_global_109];
    v10->_canUseFullscreenViewer = v41 == 0x7FFFFFFFFFFFFFFFLL;
    if (v41 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([(MKPlacePhotosViewController *)v10 isSiriProcess]|| [(MKPlacePhotosViewController *)v10 isParsecProcess])
      {
        BOOL = GEOConfigGetBOOL();
        v10->_canUseFullscreenViewer = BOOL;
        if (BOOL)
        {
LABEL_39:
          v10->_isRTL = MKApplicationLayoutDirectionIsRightToLeft();

          goto LABEL_40;
        }
      }

      else if (v10->_canUseFullscreenViewer)
      {
        goto LABEL_39;
      }
    }

    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v10->_canUseFullscreenViewer = [standardUserDefaults BOOLForKey:@"MKPlacecardForceFullScreenGallery"];

    goto LABEL_39;
  }

LABEL_40:

  return v10;
}

uint64_t __60__MKPlacePhotosViewController_initWithMapItem_mode_options___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, char *a4)
{
  if ([a2 displayFullScreenPhotoGallery])
  {
    v5 = *a4;
  }

  else
  {
    v5 = 1;
    *a4 = 1;
  }

  return v5 & 1;
}

uint64_t __60__MKPlacePhotosViewController_initWithMapItem_mode_options___block_invoke(uint64_t a1, void *a2, uint64_t a3, char *a4)
{
  if ([a2 useGallery])
  {
    v5 = *a4;
  }

  else
  {
    v5 = 1;
    *a4 = 1;
  }

  return v5 & 1;
}

- (_MKInfoCardAnalyticsDelegate)analyticsDelegate
{
  photosControllerDelegate = [(MKPlacePhotosViewController *)self photosControllerDelegate];
  v4 = [photosControllerDelegate conformsToProtocol:&unk_1F16469E0];

  if (v4)
  {
    photosControllerDelegate2 = [(MKPlacePhotosViewController *)self photosControllerDelegate];
  }

  else
  {
    photosControllerDelegate2 = 0;
  }

  return photosControllerDelegate2;
}

- (unint64_t)numberOfBigAttributionViews
{
  isFirstParty = [(MKPlacePhotosViewController *)self isFirstParty];
  if ([(MKPlacePhotosViewController *)self shouldShowAddPhotoButtons])
  {
    v4 = 1;
    if (isFirstParty)
    {
      v4 = 2;
    }

    if (self->_photosCount > 3)
    {
      return v4;
    }
  }

  return isFirstParty;
}

- (BOOL)isFirstParty
{
  _mapkit_preferredFirstPhotoVendor = [(MKMapItem *)self->_mapItem _mapkit_preferredFirstPhotoVendor];
  shouldHandlePhotosLocally = [_mapkit_preferredFirstPhotoVendor shouldHandlePhotosLocally];

  return shouldHandlePhotosLocally;
}

- (BOOL)isSafariProcess
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v4 = [bundleIdentifier isEqualToString:@"com.apple.mobilesafari"];

  return v4;
}

- (BOOL)isParsecProcess
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v5 = [bundleIdentifier isEqualToString:@"com.apple.Spotlight"];

  if (v5)
  {
    return 1;
  }

  return [(MKPlacePhotosViewController *)self isSafariProcess];
}

- (BOOL)isSiriProcess
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v4 = [bundleIdentifier isEqualToString:@"com.apple.siri"];

  return v4;
}

@end