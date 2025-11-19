@interface SearchPinsManagerShowSearchResultsAnimation
- (SearchPinsManagerShowSearchResultsAnimation)initWithSearchResults:(id)a3 selectedSearchResult:(id)a4 historyItem:(id)a5 suggestedMapRegion:(id)a6 mapCameraController:(id)a7 minZoom:(id)a8 maxZoom:(id)a9 disableAdditionalViewportPadding:(BOOL)a10 completion:(id)a11;
- (void)addCompletion:(id)a3;
- (void)cancel;
- (void)dealloc;
- (void)proceedWithDroppingPins:(BOOL)a3 searchResultsRegion:(id)a4;
- (void)start;
@end

@implementation SearchPinsManagerShowSearchResultsAnimation

- (void)addCompletion:(id)a3
{
  v4 = a3;
  v5 = objc_retainBlock(self->_completion);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100C36D84;
  v10[3] = &unk_10164E420;
  v11 = v5;
  v12 = v4;
  v6 = v4;
  v7 = v5;
  v8 = objc_retainBlock(v10);
  completion = self->_completion;
  self->_completion = v8;
}

- (void)proceedWithDroppingPins:(BOOL)a3 searchResultsRegion:(id)a4
{
  var1 = a4.var1.var1;
  var0 = a4.var1.var0;
  v6 = a4.var0.var1;
  v7 = a4.var0.var0;
  v8 = a3;
  v10 = sub_100015F58();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = self;
    if (!v11)
    {
      v16 = @"<nil>";
      goto LABEL_10;
    }

    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    if (objc_opt_respondsToSelector())
    {
      v14 = [(SearchPinsManagerShowSearchResultsAnimation *)v11 performSelector:"accessibilityIdentifier"];
      v15 = v14;
      if (v14 && ![v14 isEqualToString:v13])
      {
        v16 = [NSString stringWithFormat:@"%@<%p, %@>", v13, v11, v15];

        goto LABEL_8;
      }
    }

    v16 = [NSString stringWithFormat:@"%@<%p>", v13, v11];
LABEL_8:

LABEL_10:
    *buf = 138543618;
    v22 = v16;
    v23 = 1024;
    v24 = v8;
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
    if (v8)
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
    v4 = self;
    if (!v4)
    {
      v9 = @"<nil>";
      goto LABEL_10;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(SearchPinsManagerShowSearchResultsAnimation *)v4 performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        v9 = [NSString stringWithFormat:@"%@<%p, %@>", v6, v4, v8];

        goto LABEL_8;
      }
    }

    v9 = [NSString stringWithFormat:@"%@<%p>", v6, v4];
LABEL_8:

LABEL_10:
    v10 = [(SearchPinsManagerShowSearchResultsAnimation *)v4 debugDescription];
    *buf = 138543618;
    v20 = v9;
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

      v12 = self;
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      if (objc_opt_respondsToSelector())
      {
        v15 = [(SearchPinsManagerShowSearchResultsAnimation *)v12 performSelector:"accessibilityIdentifier"];
        v16 = v15;
        if (v15 && ![v15 isEqualToString:v14])
        {
          v17 = [NSString stringWithFormat:@"%@<%p, %@>", v14, v12, v16];

          goto LABEL_19;
        }
      }

      v17 = [NSString stringWithFormat:@"%@<%p>", v14, v12];
LABEL_19:

      *buf = 138543618;
      v20 = v17;
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

    v4 = self;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(SearchPinsManagerShowSearchResultsAnimation *)v4 performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        v9 = [NSString stringWithFormat:@"%@<%p, %@>", v6, v4, v8];

        goto LABEL_9;
      }
    }

    v9 = [NSString stringWithFormat:@"%@<%p>", v6, v4];
LABEL_9:

    v10 = [(NSArray *)v4->_searchResults count];
    *buf = 138543618;
    v33 = v9;
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

    v12 = self;
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    if (objc_opt_respondsToSelector())
    {
      v15 = [(SearchPinsManagerShowSearchResultsAnimation *)v12 performSelector:"accessibilityIdentifier"];
      v16 = v15;
      if (v15 && ![v15 isEqualToString:v14])
      {
        v17 = [NSString stringWithFormat:@"%@<%p, %@>", v14, v12, v16];

        goto LABEL_16;
      }
    }

    v17 = [NSString stringWithFormat:@"%@<%p>", v14, v12];
LABEL_16:

    v18 = v12->_searchResults;
    v19 = v17;
    v20 = [(NSArray *)v18 count];
    v21 = v12->_suggestedMapRegion;

    *buf = 138543874;
    v33 = v17;
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
    v4 = self;
    if (!v4)
    {
      v9 = @"<nil>";
      goto LABEL_10;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(SearchPinsManagerShowSearchResultsAnimation *)v4 performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        v9 = [NSString stringWithFormat:@"%@<%p, %@>", v6, v4, v8];

        goto LABEL_8;
      }
    }

    v9 = [NSString stringWithFormat:@"%@<%p>", v6, v4];
LABEL_8:

LABEL_10:
    v10 = [(SearchPinsManagerShowSearchResultsAnimation *)v4 debugDescription];
    *buf = 138543618;
    v13 = v9;
    v14 = 2112;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}@] Animation is being deallocated: %@", buf, 0x16u);
  }

  [(SearchPinsManagerShowSearchResultsAnimation *)self cancel];
  v11.receiver = self;
  v11.super_class = SearchPinsManagerShowSearchResultsAnimation;
  [(SearchPinsManagerShowSearchResultsAnimation *)&v11 dealloc];
}

- (SearchPinsManagerShowSearchResultsAnimation)initWithSearchResults:(id)a3 selectedSearchResult:(id)a4 historyItem:(id)a5 suggestedMapRegion:(id)a6 mapCameraController:(id)a7 minZoom:(id)a8 maxZoom:(id)a9 disableAdditionalViewportPadding:(BOOL)a10 completion:(id)a11
{
  v18 = a3;
  v39 = a4;
  v38 = a5;
  v37 = a6;
  v36 = a7;
  v35 = a8;
  v34 = a9;
  v19 = a11;
  v40.receiver = self;
  v40.super_class = SearchPinsManagerShowSearchResultsAnimation;
  v20 = [(SearchPinsManagerShowSearchResultsAnimation *)&v40 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_searchResults, a3);
    objc_storeStrong(&v21->_searchResultToSelect, a4);
    objc_storeStrong(&v21->_historyItem, a5);
    objc_storeStrong(&v21->_suggestedMapRegion, a6);
    objc_storeStrong(&v21->_mapCameraController, a7);
    objc_storeStrong(&v21->_minZoom, a8);
    objc_storeStrong(&v21->_maxZoom, a9);
    v21->_disableAdditionalViewportPadding = a10;
    v22 = [v19 copy];
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
    v32 = [v18 count];
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