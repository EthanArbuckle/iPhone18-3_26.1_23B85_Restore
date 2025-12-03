@interface TransitPayDiscoverySource
- (BOOL)isAvailable;
- (FeatureDiscoverySourceDelegate)delegate;
- (TransitPayActionDelegate)actionDelegate;
- (TransitPayActionDelegate)transitPayActionDelegate;
- (TransitPayDiscoverySource)initWithPriority:(int64_t)priority delegate:(id)delegate;
- (id)_modelFromData:(id)data;
- (id)_suggestionsFromPBSuggestions:(id)suggestions;
- (void)_fetchInsightsWithCompletion:(id)completion;
- (void)_tearDown;
- (void)_updateAvailability;
- (void)paymentSetupViewController:(id)controller didFinishAddingPaymentPasses:(id)passes error:(id)error;
- (void)performActionSetupViewControllerDidCancel:(id)cancel;
- (void)setModel:(id)model;
- (void)setTransportType:(int64_t)type routeCollection:(id)collection;
- (void)updateFeatureEligibilityWithCompletion:(id)completion;
@end

@implementation TransitPayDiscoverySource

- (TransitPayActionDelegate)actionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);

  return WeakRetained;
}

- (TransitPayActionDelegate)transitPayActionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_transitPayActionDelegate);

  return WeakRetained;
}

- (FeatureDiscoverySourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)paymentSetupViewController:(id)controller didFinishAddingPaymentPasses:(id)passes error:(id)error
{
  controllerCopy = controller;
  passesCopy = passes;
  errorCopy = error;
  if (errorCopy)
  {
    v11 = sub_10003D020();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      localizedDescription = [errorCopy localizedDescription];
      *buf = 138412290;
      v16 = localizedDescription;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Maps Home - Failed to provision transit card: %@", buf, 0xCu);
    }

    [(FeatureDiscoveryModel *)self->_model markActionExecuted:0];
  }

  else
  {
    objc_initWeak(buf, self);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100FF4A04;
    block[3] = &unk_101661B98;
    objc_copyWeak(&v14, buf);
    dispatch_async(&_dispatch_main_q, block);
    [(TransitPayDiscoverySource *)self _tearDown];
    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);
  }
}

- (void)performActionSetupViewControllerDidCancel:(id)cancel
{
  v4 = sub_10003D020();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Top up flow cancelled. Marking action as not executed", v5, 2u);
  }

  [(FeatureDiscoveryModel *)self->_model markActionExecuted:0];
}

- (void)_tearDown
{
  [(TransitPayDiscoverySource *)self setModel:0];
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100FF4B88;
  v4[3] = &unk_101661B98;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_updateAvailability
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100FF4C6C;
  block[3] = &unk_101661340;
  objc_copyWeak(&v5, &location);
  block[4] = self;
  dispatch_async(queue, block);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (id)_suggestionsFromPBSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  v4 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(suggestionsCopy, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = suggestionsCopy;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v18;
    *&v7 = 138412290;
    v16 = v7;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        if (([v11 hasPaymentMethodSuggestionDetails:v16]& 1) != 0)
        {
          paymentMethodSuggestionDetails = [v11 paymentMethodSuggestionDetails];
          if ([paymentMethodSuggestionDetails hasSuggestionTitle]&& ([paymentMethodSuggestionDetails hasSuggestionBody]& 1) != 0)
          {
            v13 = [[GEOTransitPaymentMethodSuggestion alloc] initWithSuggestionData:v11];
            [v4 addObject:v13];
          }

          else
          {
            v13 = sub_10003D020();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              *buf = v16;
              v22 = paymentMethodSuggestionDetails;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Suggestion details are incomplete - either title or body does not exist: %@", buf, 0xCu);
            }
          }
        }

        else
        {
          paymentMethodSuggestionDetails = sub_10003D020();
          if (os_log_type_enabled(paymentMethodSuggestionDetails, OS_LOG_TYPE_INFO))
          {
            *buf = v16;
            v22 = v11;
            _os_log_impl(&_mh_execute_header, paymentMethodSuggestionDetails, OS_LOG_TYPE_INFO, "Suggestion does not have payment method suggestion details (needed for title/subtitle): %@", buf, 0xCu);
          }
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v8);
  }

  v14 = [v4 copy];

  return v14;
}

- (id)_modelFromData:(id)data
{
  dataCopy = data;
  objc_initWeak(&location, self);
  v5 = [FeatureDiscoveryModel alloc];
  image = [dataCopy image];
  title = [dataCopy title];
  subtitle = [dataCopy subtitle];
  actionTitle = [dataCopy actionTitle];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100FF59C8;
  v18[3] = &unk_101661480;
  objc_copyWeak(&v21, &location);
  v10 = dataCopy;
  v19 = v10;
  selfCopy = self;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100FF5D70;
  v15[3] = &unk_101661340;
  objc_copyWeak(&v17, &location);
  v11 = v10;
  v16 = v11;
  LOBYTE(v14) = 1;
  v12 = [(FeatureDiscoveryModel *)v5 initWithImage:image title:title subtitle:subtitle actionTitle:actionTitle actionHandler:v18 bodyTapHandler:0 displayedHandler:&stru_1016614A0 dismissHandler:v15 disableAffordanceAfterAction:v14];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);

  return v12;
}

- (void)_fetchInsightsWithCompletion:(id)completion
{
  completionCopy = completion;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = 0;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v17 = 0;
  v5 = dispatch_group_create();
  dispatch_group_enter(v5);
  objc_initWeak(&location, self);
  queue = self->_queue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100FF6114;
  v9[3] = &unk_101661458;
  objc_copyWeak(&v14, &location);
  v12 = v18;
  v13 = v16;
  v10 = v5;
  v11 = completionCopy;
  v7 = completionCopy;
  v8 = v5;
  dispatch_async(queue, v9);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
  _Block_object_dispose(v16, 8);
  _Block_object_dispose(v18, 8);
}

- (void)updateFeatureEligibilityWithCompletion:(id)completion
{
  completionCopy = completion;
  v6 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v6 userInterfaceIdiom];

  if (userInterfaceIdiom)
  {
    v8 = sub_10003D020();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = objc_opt_class();
      v10 = v9;
      v11 = NSStringFromSelector(a2);
      *buf = 138412546;
      v16 = v9;
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%@ %@: User is not using an iPhone", buf, 0x16u);
    }

    completionCopy[2](completionCopy, 0);
  }

  else
  {
    objc_initWeak(buf, self);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100FF6740;
    v12[3] = &unk_1016613B8;
    objc_copyWeak(&v14, buf);
    v13 = completionCopy;
    [(TransitPayDiscoverySource *)self _fetchInsightsWithCompletion:v12];

    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);
  }
}

- (void)setTransportType:(int64_t)type routeCollection:(id)collection
{
  collectionCopy = collection;
  if (self->_transportType != type || (v8 = self->_routeCollection, v9 = collectionCopy, v9 | v8) && (v10 = v9, v11 = [v8 isEqual:v9], v10, v8, (v11 & 1) == 0))
  {
    self->_transportType = type;
    objc_storeStrong(&self->_routeCollection, collection);
    v12 = sub_10003D020();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
    if (type == 3)
    {
      if (v13)
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Transport type is Transit. Checking to surface Transit + Pay Tips.", buf, 2u);
      }

      objc_initWeak(buf, self);
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100FF6B78;
      v14[3] = &unk_1016619A8;
      objc_copyWeak(&v15, buf);
      [(TransitPayDiscoverySource *)self updateFeatureEligibilityWithCompletion:v14];
      objc_destroyWeak(&v15);
      objc_destroyWeak(buf);
    }

    else
    {
      if (v13)
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "The transport type is not transit, no point in checking Transit + Pay eligibility.", buf, 2u);
      }

      [(TransitPayDiscoverySource *)self _tearDown];
    }
  }
}

- (void)setModel:(id)model
{
  modelCopy = model;
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100FF6D98;
  block[3] = &unk_101661340;
  objc_copyWeak(&v8, &location);
  v7 = modelCopy;
  v5 = modelCopy;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (BOOL)isAvailable
{
  model = [(TransitPayDiscoverySource *)self model];
  v3 = model != 0;

  return v3;
}

- (TransitPayDiscoverySource)initWithPriority:(int64_t)priority delegate:(id)delegate
{
  delegateCopy = delegate;
  v16.receiver = self;
  v16.super_class = TransitPayDiscoverySource;
  v7 = [(TransitPayDiscoverySource *)&v16 init];
  v8 = v7;
  if (v7)
  {
    v7->_priority = priority;
    objc_storeWeak(&v7->_delegate, delegateCopy);
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.Maps.RoutePlanning.TransitPay", v9);
    queue = v8->_queue;
    v8->_queue = v10;

    v12 = MapsSuggestionsResourceDepotForMapsProcess();
    oneInsights = [v12 oneInsights];
    msgInsights = v8->_msgInsights;
    v8->_msgInsights = oneInsights;
  }

  return v8;
}

@end