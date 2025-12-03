@interface SearchPinsManagerShowSearchResultsAnimation
- (SearchPinsManagerShowSearchResultsAnimation)initWithSearchResults:(id)results selectedSearchResult:(id)result historyItem:(id)item suggestedMapRegion:(id)region mapCameraController:(id)controller minZoom:(id)zoom maxZoom:(id)maxZoom disableAdditionalViewportPadding:(BOOL)self0 completion:(id)self1;
- (void)addCompletion:(id)completion;
- (void)cancel;
- (void)dealloc;
- (void)proceedWithDroppingPins:(BOOL)pins searchResultsRegion:(id)region;
- (void)start;
@end

@implementation SearchPinsManagerShowSearchResultsAnimation

- (void)addCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_retainBlock(self->_completion);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100C36D84;
  v10[3] = &unk_10164E420;
  v11 = v5;
  v12 = completionCopy;
  v6 = completionCopy;
  v7 = v5;
  v8 = objc_retainBlock(v10);
  completion = self->_completion;
  self->_completion = v8;
}

- (void)proceedWithDroppingPins:(BOOL)pins searchResultsRegion:(id)region
{
  var1 = region.var1.var1;
  var0 = region.var1.var0;
  v6 = region.var0.var1;
  v7 = region.var0.var0;
  pinsCopy = pins;
  v10 = sub_100015F58();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    if (objc_opt_respondsToSelector())
    {
      v14 = [(SearchPinsManagerShowSearchResultsAnimation *)selfCopy performSelector:"accessibilityIdentifier"];
      v15 = v14;
      if (v14 && ![v14 isEqualToString:v13])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v13, selfCopy, v15];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v13, selfCopy];
LABEL_8:

LABEL_10:
    *buf = 138543618;
    v22 = selfCopy;
    v23 = 1024;
    v24 = pinsCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "[%{public}@] Proceeding with dropping pins, canWaitForFinalMapRendering:%d", buf, 0x12u);
  }

  if (self->_started && !self->_cancelled && !self->_hasDroppedPins && self->_viewportAllowsDroppingPins)
  {
    self->_hasDroppedPins = 1;
    searchResultToSelect = self->_searchResultToSelect;
    self->_searchResultToSelect = 0;

    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100C370AC;
    v20[3] = &unk_10164E3F8;
    v20[4] = self;
    *&v20[5] = v7;
    *&v20[6] = v6;
    *&v20[7] = var0;
    *&v20[8] = var1;
    v18 = objc_retainBlock(v20);
    v19 = v18;
    if (pinsCopy)
    {
      dispatch_async(&_dispatch_main_q, v18);
    }

    else
    {
      (v18[2])(v18);
    }
  }
}

- (void)cancel
{
  v3 = sub_100015F58();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(SearchPinsManagerShowSearchResultsAnimation *)selfCopy performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v6, selfCopy, v8];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v6, selfCopy];
LABEL_8:

LABEL_10:
    v10 = [(SearchPinsManagerShowSearchResultsAnimation *)selfCopy debugDescription];
    *buf = 138543618;
    v20 = selfCopy;
    v21 = 2112;
    v22 = v10;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}@] Cancelling animation: %@", buf, 0x16u);
  }

  if (!self->_cancelled)
  {
    self->_cancelled = 1;
    if (self->_completion)
    {
      v11 = sub_100015F58();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
LABEL_20:

        (*(self->_completion + 2))(MKMapRectNull.origin.x, MKMapRectNull.origin.y, MKMapRectNull.size.width, MKMapRectNull.size.height);
        goto LABEL_21;
      }

      selfCopy2 = self;
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      if (objc_opt_respondsToSelector())
      {
        v15 = [(SearchPinsManagerShowSearchResultsAnimation *)selfCopy2 performSelector:"accessibilityIdentifier"];
        v16 = v15;
        if (v15 && ![v15 isEqualToString:v14])
        {
          selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v14, selfCopy2, v16];

          goto LABEL_19;
        }
      }

      selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v14, selfCopy2];
LABEL_19:

      *buf = 138543618;
      v20 = selfCopy2;
      v21 = 2112;
      v22 = @"NO";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "[%{public}@] Calling animation completion block as animation is cancelled, finished:%@", buf, 0x16u);

      goto LABEL_20;
    }
  }

LABEL_21:
  completion = self->_completion;
  self->_completion = 0;
}

- (void)start
{
  if (!self->_started && !self->_cancelled)
  {
    v3 = sub_100015F58();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_10;
    }

    selfCopy = self;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(SearchPinsManagerShowSearchResultsAnimation *)selfCopy performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v6, selfCopy, v8];

        goto LABEL_9;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v6, selfCopy];
LABEL_9:

    v10 = [(NSArray *)selfCopy->_searchResults count];
    *buf = 138543618;
    v33 = selfCopy;
    v34 = 2048;
    v35 = v10;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}@] Starting animation for %lu results. ", buf, 0x16u);

LABEL_10:
    self->_started = 1;
    v11 = sub_100015F58();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
LABEL_17:

      searchResultToSelect = self->_searchResultToSelect;
      historyItem = self->_historyItem;
      searchResults = self->_searchResults;
      suggestedMapRegion = self->_suggestedMapRegion;
      mapCameraController = self->_mapCameraController;
      minZoom = self->_minZoom;
      maxZoom = self->_maxZoom;
      disableAdditionalViewportPadding = self->_disableAdditionalViewportPadding;
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_100C378B4;
      v31[3] = &unk_10164E3D0;
      v31[4] = self;
      LOBYTE(v30) = disableAdditionalViewportPadding;
      [(MapCameraController *)mapCameraController frameSearchResults:searchResults withResultToSelect:searchResultToSelect historyItem:historyItem suggestedMapRegion:suggestedMapRegion minZoom:minZoom maxZoom:maxZoom disableAdditionalViewportPadding:v30 completion:v31];
      return;
    }

    selfCopy2 = self;
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    if (objc_opt_respondsToSelector())
    {
      v15 = [(SearchPinsManagerShowSearchResultsAnimation *)selfCopy2 performSelector:"accessibilityIdentifier"];
      v16 = v15;
      if (v15 && ![v15 isEqualToString:v14])
      {
        selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v14, selfCopy2, v16];

        goto LABEL_16;
      }
    }

    selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v14, selfCopy2];
LABEL_16:

    v18 = selfCopy2->_searchResults;
    v19 = selfCopy2;
    v20 = [(NSArray *)v18 count];
    v21 = selfCopy2->_suggestedMapRegion;

    *buf = 138543874;
    v33 = selfCopy2;
    v34 = 2048;
    v35 = v20;
    v36 = 2112;
    v37 = v21;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "[%{public}@] Framing map region to show %lu results, mapRegion: %@", buf, 0x20u);

    goto LABEL_17;
  }
}

- (void)dealloc
{
  v3 = sub_100015F58();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(SearchPinsManagerShowSearchResultsAnimation *)selfCopy performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v6, selfCopy, v8];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v6, selfCopy];
LABEL_8:

LABEL_10:
    v10 = [(SearchPinsManagerShowSearchResultsAnimation *)selfCopy debugDescription];
    *buf = 138543618;
    v13 = selfCopy;
    v14 = 2112;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}@] Animation is being deallocated: %@", buf, 0x16u);
  }

  [(SearchPinsManagerShowSearchResultsAnimation *)self cancel];
  v11.receiver = self;
  v11.super_class = SearchPinsManagerShowSearchResultsAnimation;
  [(SearchPinsManagerShowSearchResultsAnimation *)&v11 dealloc];
}

- (SearchPinsManagerShowSearchResultsAnimation)initWithSearchResults:(id)results selectedSearchResult:(id)result historyItem:(id)item suggestedMapRegion:(id)region mapCameraController:(id)controller minZoom:(id)zoom maxZoom:(id)maxZoom disableAdditionalViewportPadding:(BOOL)self0 completion:(id)self1
{
  resultsCopy = results;
  resultCopy = result;
  itemCopy = item;
  regionCopy = region;
  controllerCopy = controller;
  zoomCopy = zoom;
  maxZoomCopy = maxZoom;
  completionCopy = completion;
  v40.receiver = self;
  v40.super_class = SearchPinsManagerShowSearchResultsAnimation;
  v20 = [(SearchPinsManagerShowSearchResultsAnimation *)&v40 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_searchResults, results);
    objc_storeStrong(&v21->_searchResultToSelect, result);
    objc_storeStrong(&v21->_historyItem, item);
    objc_storeStrong(&v21->_suggestedMapRegion, region);
    objc_storeStrong(&v21->_mapCameraController, controller);
    objc_storeStrong(&v21->_minZoom, zoom);
    objc_storeStrong(&v21->_maxZoom, maxZoom);
    v21->_disableAdditionalViewportPadding = padding;
    v22 = [completionCopy copy];
    completion = v21->_completion;
    v21->_completion = v22;

    v24 = sub_100015F58();
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
LABEL_9:

      goto LABEL_10;
    }

    v25 = v21;
    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    if (objc_opt_respondsToSelector())
    {
      v28 = [(SearchPinsManagerShowSearchResultsAnimation *)v25 performSelector:"accessibilityIdentifier"];
      v29 = v28;
      if (v28 && ![v28 isEqualToString:v27])
      {
        v30 = [NSString stringWithFormat:@"%@<%p, %@>", v27, v25, v29];

        goto LABEL_8;
      }
    }

    v30 = [NSString stringWithFormat:@"%@<%p>", v27, v25];
LABEL_8:

    v31 = [(SearchPinsManagerShowSearchResultsAnimation *)v25 debugDescription];
    v32 = [resultsCopy count];
    *buf = 138543874;
    v42 = v30;
    v43 = 2112;
    v44 = v31;
    v45 = 2048;
    v46 = v32;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "[%{public}@] Initialized animation: %@ for %lu results", buf, 0x20u);

    goto LABEL_9;
  }

LABEL_10:

  return v21;
}

@end