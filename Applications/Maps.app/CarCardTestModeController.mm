@interface CarCardTestModeController
- (CarCardTestModeController)init;
- (ChromeViewController)chromeViewController;
- (NSArray)carFocusOrderSequences;
- (id)_stackedCardWithConfig:(id)config stackID:(id)d;
- (void)_addCardNotification:(id)notification;
- (void)_addCardWithConfig:(id)config;
- (void)_deleteCardUUID:(id)d;
- (void)_handleCardButtonTag:(unint64_t)tag forStackID:(id)d card:(id)card;
- (void)_push;
- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)configureCard:(id)card forKey:(id)key;
@end

@implementation CarCardTestModeController

- (ChromeViewController)chromeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  return WeakRetained;
}

- (NSArray)carFocusOrderSequences
{
  chromeViewController = [(CarCardTestModeController *)self chromeViewController];
  itemRepresentingOverlays = [chromeViewController itemRepresentingOverlays];
  v8 = itemRepresentingOverlays;
  v4 = [NSArray arrayWithObjects:&v8 count:1];
  v5 = [CarFocusOrderSequence sequenceWithItems:v4 options:5];
  v9 = v5;
  v6 = [NSArray arrayWithObjects:&v9 count:1];

  return v6;
}

- (void)_handleCardButtonTag:(unint64_t)tag forStackID:(id)d card:(id)card
{
  dCopy = d;
  cardCopy = card;
  v9 = [(NSMutableDictionary *)self->_cards objectForKeyedSubscript:dCopy];
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
      v11 = v10;
      if (tag <= 2)
      {
        if (tag == 1)
        {
          [v10 removeCardContentController:cardCopy];
        }

        else if (tag == 2)
        {
          v12 = [(NSMutableDictionary *)self->_cardToConfigMap objectForKeyedSubscript:dCopy];
          v13 = [(CarCardTestModeController *)self _stackedCardWithConfig:v12 stackID:dCopy];
          [v11 addCardContentController:v13];
LABEL_13:
        }

LABEL_14:

        goto LABEL_15;
      }

      if (tag == 3)
      {
        cardContentControllers = [v10 cardContentControllers];
        v20 = [cardContentControllers indexOfObject:cardCopy];

        v12 = [(NSMutableDictionary *)self->_cardToConfigMap objectForKeyedSubscript:dCopy];
        v13 = [(CarCardTestModeController *)self _stackedCardWithConfig:v12 stackID:dCopy];
        v17 = v11;
        v18 = v13;
        v16 = v20;
      }

      else
      {
        if (tag != 4)
        {
          goto LABEL_14;
        }

        cardContentControllers2 = [v10 cardContentControllers];
        v15 = [cardContentControllers2 indexOfObject:cardCopy];

        v12 = [(NSMutableDictionary *)self->_cardToConfigMap objectForKeyedSubscript:dCopy];
        v13 = [(CarCardTestModeController *)self _stackedCardWithConfig:v12 stackID:dCopy];
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

- (void)_deleteCardUUID:(id)d
{
  dCopy = d;
  v5 = [(NSMutableDictionary *)self->_cards objectForKeyedSubscript:dCopy];
  if (v5)
  {
    objc_initWeak(&location, self);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100C87EA0;
    v8[3] = &unk_10165FC50;
    objc_copyWeak(&v10, &location);
    v9 = dCopy;
    v6 = objc_retainBlock(v8);
    chromeViewController = [(CarCardTestModeController *)self chromeViewController];
    [chromeViewController updateCardsForContext:self animated:1 completion:v6];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

- (void)_push
{
  v4 = objc_alloc_init(CarCardTestModeController);
  chromeViewController = [(CarCardTestModeController *)self chromeViewController];
  [chromeViewController pushContext:v4 animated:1 completion:0];
}

- (id)_stackedCardWithConfig:(id)config stackID:(id)d
{
  configCopy = config;
  dCopy = d;
  v8 = [[CarTestCardViewController alloc] initWithConfig:configCopy];
  objc_initWeak(&location, self);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100C88128;
  v15[3] = &unk_10164F960;
  objc_copyWeak(&v17, &location);
  v9 = dCopy;
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

- (void)_addCardWithConfig:(id)config
{
  configCopy = config;
  objc_initWeak(&location, self);
  if ([configCopy stackCount] <= 1)
  {
    v5 = [[CarTestCardViewController alloc] initWithConfig:configCopy];
    cardID = [(CarTestCardViewController *)v5 cardID];
    v7 = v5;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100C884D0;
    v20[3] = &unk_10164F960;
    objc_copyWeak(&v22, &location);
    uUIDString = cardID;
    v21 = uUIDString;
    [(CarTestCardViewController *)v7 setDismissHandler:v20];

    objc_destroyWeak(&v22);
    v9 = v7;
    goto LABEL_17;
  }

  v10 = objc_opt_new();
  uUIDString = [v10 UUIDString];

  v7 = objc_opt_new();
  for (i = 0; i < [configCopy stackCount]; ++i)
  {
    v12 = [(CarCardTestModeController *)self _stackedCardWithConfig:configCopy stackID:uUIDString];
    [(CarTestCardViewController *)v7 addObject:v12];
  }

  layout = [configCopy layout];
  if (![layout edgePosition])
  {
    if ([layout cornerPosition])
    {
      v14 = [layout cornerPosition] - 1;
      if (v14 < 8)
      {
        v15 = &unk_101215758;
        goto LABEL_12;
      }
    }

LABEL_13:
    stackAlignment = 3;
    goto LABEL_14;
  }

  v14 = [layout edgePosition] - 1;
  if (v14 >= 8)
  {
    goto LABEL_13;
  }

  v15 = &unk_101215718;
LABEL_12:
  stackAlignment = v15[v14];
LABEL_14:
  primaryAxis = [layout primaryAxis];

  if (([configCopy stackUseCardLayout] & 1) == 0)
  {
    primaryAxis = [configCopy stackAxis];
    stackAlignment = [configCopy stackAlignment];
  }

  v19[0] = primaryAxis;
  v19[1] = 0;
  v19[2] = stackAlignment;
  v9 = [[CarCardStackViewController alloc] initWithCarCardContentControllers:v7 layout:v19];
LABEL_17:

  [(NSMutableDictionary *)self->_cards setObject:v9 forKeyedSubscript:uUIDString];
  [(NSMutableDictionary *)self->_cardToConfigMap setObject:configCopy forKeyedSubscript:uUIDString];
  chromeViewController = [(CarCardTestModeController *)self chromeViewController];
  [chromeViewController updateCardsForContext:self animated:1];

  objc_destroyWeak(&location);
}

- (void)_addCardNotification:(id)notification
{
  notificationCopy = notification;
  chromeViewController = [(CarCardTestModeController *)self chromeViewController];
  topContext = [chromeViewController topContext];

  if (topContext == self)
  {
    userInfo = [notificationCopy userInfo];
    v8 = [userInfo objectForKeyedSubscript:@"RemoveAll"];
    bOOLValue = [v8 BOOLValue];

    if (bOOLValue)
    {
      allKeys = [(NSMutableDictionary *)self->_cards allKeys];
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v11 = [(CarCardTestConfig *)allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
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
              objc_enumerationMutation(allKeys);
            }

            [(CarCardTestModeController *)self _deleteCardUUID:*(*(&v15 + 1) + 8 * i)];
          }

          v12 = [(CarCardTestConfig *)allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v12);
      }
    }

    else
    {
      allKeys = [[CarCardTestConfig alloc] initWithNotification:notificationCopy];
      [(CarCardTestModeController *)self _addCardWithConfig:allKeys];
    }
  }
}

- (void)configureCard:(id)card forKey:(id)key
{
  cardCopy = card;
  keyCopy = key;
  desiredCards = [(CarCardTestModeController *)self desiredCards];
  if ([desiredCards containsObject:keyCopy])
  {
    v9 = [(NSMutableDictionary *)self->_cardToConfigMap objectForKeyedSubscript:keyCopy];
    v10 = [(NSMutableDictionary *)self->_cards objectForKeyedSubscript:keyCopy];
    [cardCopy setContent:v10];

    [cardCopy setAccessoryType:0];
    layout = [v9 layout];
    [cardCopy setLayout:layout];

    [cardCopy setStaysOnTop:{-[NSObject staysOnTop](v9, "staysOnTop")}];
    goto LABEL_15;
  }

  if (qword_10195EDC8 != -1)
  {
    dispatch_once(&qword_10195EDC8, &stru_10164F9A8);
  }

  v9 = qword_10195EDC0;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_14;
    }

    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    if (objc_opt_respondsToSelector())
    {
      v15 = [(CarCardTestModeController *)selfCopy performSelector:"accessibilityIdentifier"];
      v16 = v15;
      if (v15 && ![v15 isEqualToString:v14])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v14, selfCopy, v16];

        goto LABEL_12;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v14, selfCopy];
LABEL_12:

LABEL_14:
    *buf = 138543362;
    v19 = selfCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "[%{public}@] CarCardTestModeController: tried to configure card key that is not in desired cards.", buf, 0xCu);
  }

LABEL_15:
}

- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation
{
  controllerCopy = controller;
  animationCopy = animation;
  if (!self->_pushButton)
  {
    v8 = +[CarFocusableButton button];
    pushButton = self->_pushButton;
    self->_pushButton = v8;

    [(CarFocusableButton *)self->_pushButton setTranslatesAutoresizingMaskIntoConstraints:0];
    layer = [(CarFocusableButton *)self->_pushButton layer];
    [layer setCornerRadius:4.0];

    v11 = +[UIColor _carSystemFocusColor];
    [(CarFocusableButton *)self->_pushButton setTintColor:v11];

    [(CarFocusableButton *)self->_pushButton setTitle:@"Push" forState:0];
    [(CarFocusableButton *)self->_pushButton setContentEdgeInsets:0.0, 4.0, 0.0, 4.0];
    [(CarFocusableButton *)self->_pushButton addTarget:self action:"_push" forControlEvents:64];
  }

  viewport = [controllerCopy viewport];
  [viewport addSubview:self->_pushButton];

  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_100C88B24;
  v19 = &unk_101661A90;
  selfCopy = self;
  v21 = controllerCopy;
  v13 = controllerCopy;
  [animationCopy addAnimations:&v16 completion:0];
  v14 = [(CarCardTestModeController *)self chromeViewController:v16];
  mapView = [v14 mapView];
  [mapView setUserTrackingMode:1];
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