@interface CarCardTestModeController
- (CarCardTestModeController)init;
- (ChromeViewController)chromeViewController;
- (NSArray)carFocusOrderSequences;
- (id)_stackedCardWithConfig:(id)a3 stackID:(id)a4;
- (void)_addCardNotification:(id)a3;
- (void)_addCardWithConfig:(id)a3;
- (void)_deleteCardUUID:(id)a3;
- (void)_handleCardButtonTag:(unint64_t)a3 forStackID:(id)a4 card:(id)a5;
- (void)_push;
- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)configureCard:(id)a3 forKey:(id)a4;
@end

@implementation CarCardTestModeController

- (ChromeViewController)chromeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  return WeakRetained;
}

- (NSArray)carFocusOrderSequences
{
  v2 = [(CarCardTestModeController *)self chromeViewController];
  v3 = [v2 itemRepresentingOverlays];
  v8 = v3;
  v4 = [NSArray arrayWithObjects:&v8 count:1];
  v5 = [CarFocusOrderSequence sequenceWithItems:v4 options:5];
  v9 = v5;
  v6 = [NSArray arrayWithObjects:&v9 count:1];

  return v6;
}

- (void)_handleCardButtonTag:(unint64_t)a3 forStackID:(id)a4 card:(id)a5
{
  v21 = a4;
  v8 = a5;
  v9 = [(NSMutableDictionary *)self->_cards objectForKeyedSubscript:v21];
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
      v11 = v10;
      if (a3 <= 2)
      {
        if (a3 == 1)
        {
          [v10 removeCardContentController:v8];
        }

        else if (a3 == 2)
        {
          v12 = [(NSMutableDictionary *)self->_cardToConfigMap objectForKeyedSubscript:v21];
          v13 = [(CarCardTestModeController *)self _stackedCardWithConfig:v12 stackID:v21];
          [v11 addCardContentController:v13];
LABEL_13:
        }

LABEL_14:

        goto LABEL_15;
      }

      if (a3 == 3)
      {
        v19 = [v10 cardContentControllers];
        v20 = [v19 indexOfObject:v8];

        v12 = [(NSMutableDictionary *)self->_cardToConfigMap objectForKeyedSubscript:v21];
        v13 = [(CarCardTestModeController *)self _stackedCardWithConfig:v12 stackID:v21];
        v17 = v11;
        v18 = v13;
        v16 = v20;
      }

      else
      {
        if (a3 != 4)
        {
          goto LABEL_14;
        }

        v14 = [v10 cardContentControllers];
        v15 = [v14 indexOfObject:v8];

        v12 = [(NSMutableDictionary *)self->_cardToConfigMap objectForKeyedSubscript:v21];
        v13 = [(CarCardTestModeController *)self _stackedCardWithConfig:v12 stackID:v21];
        v16 = v15 + 1;
        v17 = v11;
        v18 = v13;
      }

      [v17 insertCardContentController:v18 atIndex:v16];
      goto LABEL_13;
    }
  }

LABEL_15:
}

- (void)_deleteCardUUID:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_cards objectForKeyedSubscript:v4];
  if (v5)
  {
    objc_initWeak(&location, self);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100C87EA0;
    v8[3] = &unk_10165FC50;
    objc_copyWeak(&v10, &location);
    v9 = v4;
    v6 = objc_retainBlock(v8);
    v7 = [(CarCardTestModeController *)self chromeViewController];
    [v7 updateCardsForContext:self animated:1 completion:v6];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

- (void)_push
{
  v4 = objc_alloc_init(CarCardTestModeController);
  v3 = [(CarCardTestModeController *)self chromeViewController];
  [v3 pushContext:v4 animated:1 completion:0];
}

- (id)_stackedCardWithConfig:(id)a3 stackID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[CarTestCardViewController alloc] initWithConfig:v6];
  objc_initWeak(&location, self);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100C88128;
  v15[3] = &unk_10164F960;
  objc_copyWeak(&v17, &location);
  v9 = v7;
  v16 = v9;
  [(CarTestCardViewController *)v8 setDismissHandler:v15];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100C88178;
  v12[3] = &unk_10164F988;
  objc_copyWeak(&v14, &location);
  v10 = v9;
  v13 = v10;
  [(CarTestCardViewController *)v8 setButtonTagHandler:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);

  return v8;
}

- (void)_addCardWithConfig:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  if ([v4 stackCount] <= 1)
  {
    v5 = [[CarTestCardViewController alloc] initWithConfig:v4];
    v6 = [(CarTestCardViewController *)v5 cardID];
    v7 = v5;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100C884D0;
    v20[3] = &unk_10164F960;
    objc_copyWeak(&v22, &location);
    v8 = v6;
    v21 = v8;
    [(CarTestCardViewController *)v7 setDismissHandler:v20];

    objc_destroyWeak(&v22);
    v9 = v7;
    goto LABEL_17;
  }

  v10 = objc_opt_new();
  v8 = [v10 UUIDString];

  v7 = objc_opt_new();
  for (i = 0; i < [v4 stackCount]; ++i)
  {
    v12 = [(CarCardTestModeController *)self _stackedCardWithConfig:v4 stackID:v8];
    [(CarTestCardViewController *)v7 addObject:v12];
  }

  v13 = [v4 layout];
  if (![v13 edgePosition])
  {
    if ([v13 cornerPosition])
    {
      v14 = [v13 cornerPosition] - 1;
      if (v14 < 8)
      {
        v15 = &unk_101215758;
        goto LABEL_12;
      }
    }

LABEL_13:
    v16 = 3;
    goto LABEL_14;
  }

  v14 = [v13 edgePosition] - 1;
  if (v14 >= 8)
  {
    goto LABEL_13;
  }

  v15 = &unk_101215718;
LABEL_12:
  v16 = v15[v14];
LABEL_14:
  v17 = [v13 primaryAxis];

  if (([v4 stackUseCardLayout] & 1) == 0)
  {
    v17 = [v4 stackAxis];
    v16 = [v4 stackAlignment];
  }

  v19[0] = v17;
  v19[1] = 0;
  v19[2] = v16;
  v9 = [[CarCardStackViewController alloc] initWithCarCardContentControllers:v7 layout:v19];
LABEL_17:

  [(NSMutableDictionary *)self->_cards setObject:v9 forKeyedSubscript:v8];
  [(NSMutableDictionary *)self->_cardToConfigMap setObject:v4 forKeyedSubscript:v8];
  v18 = [(CarCardTestModeController *)self chromeViewController];
  [v18 updateCardsForContext:self animated:1];

  objc_destroyWeak(&location);
}

- (void)_addCardNotification:(id)a3
{
  v4 = a3;
  v5 = [(CarCardTestModeController *)self chromeViewController];
  v6 = [v5 topContext];

  if (v6 == self)
  {
    v7 = [v4 userInfo];
    v8 = [v7 objectForKeyedSubscript:@"RemoveAll"];
    v9 = [v8 BOOLValue];

    if (v9)
    {
      v10 = [(NSMutableDictionary *)self->_cards allKeys];
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v11 = [(CarCardTestConfig *)v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v16;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v16 != v13)
            {
              objc_enumerationMutation(v10);
            }

            [(CarCardTestModeController *)self _deleteCardUUID:*(*(&v15 + 1) + 8 * i)];
          }

          v12 = [(CarCardTestConfig *)v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v12);
      }
    }

    else
    {
      v10 = [[CarCardTestConfig alloc] initWithNotification:v4];
      [(CarCardTestModeController *)self _addCardWithConfig:v10];
    }
  }
}

- (void)configureCard:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CarCardTestModeController *)self desiredCards];
  if ([v8 containsObject:v7])
  {
    v9 = [(NSMutableDictionary *)self->_cardToConfigMap objectForKeyedSubscript:v7];
    v10 = [(NSMutableDictionary *)self->_cards objectForKeyedSubscript:v7];
    [v6 setContent:v10];

    [v6 setAccessoryType:0];
    v11 = [v9 layout];
    [v6 setLayout:v11];

    [v6 setStaysOnTop:{-[NSObject staysOnTop](v9, "staysOnTop")}];
    goto LABEL_15;
  }

  if (qword_10195EDC8 != -1)
  {
    dispatch_once(&qword_10195EDC8, &stru_10164F9A8);
  }

  v9 = qword_10195EDC0;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v12 = self;
    if (!v12)
    {
      v17 = @"<nil>";
      goto LABEL_14;
    }

    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    if (objc_opt_respondsToSelector())
    {
      v15 = [(CarCardTestModeController *)v12 performSelector:"accessibilityIdentifier"];
      v16 = v15;
      if (v15 && ![v15 isEqualToString:v14])
      {
        v17 = [NSString stringWithFormat:@"%@<%p, %@>", v14, v12, v16];

        goto LABEL_12;
      }
    }

    v17 = [NSString stringWithFormat:@"%@<%p>", v14, v12];
LABEL_12:

LABEL_14:
    *buf = 138543362;
    v19 = v17;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "[%{public}@] CarCardTestModeController: tried to configure card key that is not in desired cards.", buf, 0xCu);
  }

LABEL_15:
}

- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!self->_pushButton)
  {
    v8 = +[CarFocusableButton button];
    pushButton = self->_pushButton;
    self->_pushButton = v8;

    [(CarFocusableButton *)self->_pushButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = [(CarFocusableButton *)self->_pushButton layer];
    [v10 setCornerRadius:4.0];

    v11 = +[UIColor _carSystemFocusColor];
    [(CarFocusableButton *)self->_pushButton setTintColor:v11];

    [(CarFocusableButton *)self->_pushButton setTitle:@"Push" forState:0];
    [(CarFocusableButton *)self->_pushButton setContentEdgeInsets:0.0, 4.0, 0.0, 4.0];
    [(CarFocusableButton *)self->_pushButton addTarget:self action:"_push" forControlEvents:64];
  }

  v12 = [v6 viewport];
  [v12 addSubview:self->_pushButton];

  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_100C88B24;
  v19 = &unk_101661A90;
  v20 = self;
  v21 = v6;
  v13 = v6;
  [v7 addAnimations:&v16 completion:0];
  v14 = [(CarCardTestModeController *)self chromeViewController:v16];
  v15 = [v14 mapView];
  [v15 setUserTrackingMode:1];
}

- (CarCardTestModeController)init
{
  v9.receiver = self;
  v9.super_class = CarCardTestModeController;
  v2 = [(CarCardTestModeController *)&v9 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    cards = v2->_cards;
    v2->_cards = v3;

    v5 = +[NSMutableDictionary dictionary];
    cardToConfigMap = v2->_cardToConfigMap;
    v2->_cardToConfigMap = v5;

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v2 selector:"_addCardNotification:" name:@"__internal_CarCardTestDebug" object:0];
  }

  return v2;
}

@end