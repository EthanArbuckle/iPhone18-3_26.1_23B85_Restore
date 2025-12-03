@interface FeatureDiscoveryModel
+ (id)_testModelWithImage;
+ (id)_testModelWithoutImage;
+ (id)ratingsAndPhotosDiscoveryModelWithActionHandler:(id)handler cancelHandler:(id)cancelHandler;
- (BOOL)isEqual:(id)equal;
- (FeatureDiscoveryModel)initWithImage:(id)image title:(id)title subtitle:(id)subtitle actionTitle:(id)actionTitle actionHandler:(id)handler bodyTapHandler:(id)tapHandler displayedHandler:(id)displayedHandler dismissHandler:(id)self0 disableAffordanceAfterAction:(BOOL)self1;
- (FeatureDiscoveryModelUpdates)updatesDelegate;
- (void)markActionExecuted:(BOOL)executed;
- (void)markAsDisplayed;
@end

@implementation FeatureDiscoveryModel

- (FeatureDiscoveryModelUpdates)updatesDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_updatesDelegate);

  return WeakRetained;
}

- (void)markActionExecuted:(BOOL)executed
{
  if (self->_hasActionExecuted != executed)
  {
    self->_hasActionExecuted = executed;
    updatesDelegate = [(FeatureDiscoveryModel *)self updatesDelegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      updatesDelegate2 = [(FeatureDiscoveryModel *)self updatesDelegate];
      [updatesDelegate2 featureDiscoveryModelDidUpdate:self];
    }
  }
}

- (void)markAsDisplayed
{
  if (!self->_displayed)
  {
    self->_displayed = 1;
    displayedHandler = [(FeatureDiscoveryModel *)self displayedHandler];

    if (displayedHandler)
    {
      displayedHandler2 = [(FeatureDiscoveryModel *)self displayedHandler];
      displayedHandler2[2]();
    }
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    actionHandler = [(FeatureDiscoveryModel *)self actionHandler];
    if (actionHandler && ([v5 actionHandler], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = v7;
      LODWORD(v9) = 0;
    }

    else
    {
      actionHandler2 = [(FeatureDiscoveryModel *)self actionHandler];
      if (actionHandler2)
      {
        LOBYTE(v26) = 0;
        v8 = 0;
LABEL_26:

        goto LABEL_27;
      }

      actionHandler3 = [v5 actionHandler];
      if (actionHandler3)
      {

        LOBYTE(v26) = 0;
        if (actionHandler)
        {
          v8 = 0;
LABEL_28:
        }

LABEL_29:

        goto LABEL_30;
      }

      v8 = 0;
      LODWORD(v9) = 1;
    }

    title = [(FeatureDiscoveryModel *)self title];
    title2 = [v5 title];
    v12 = title;
    v13 = title2;
    if (v12 | v13 && (v14 = [v12 isEqual:v13], v13, v12, !v14))
    {

      LOBYTE(v26) = 0;
      if (v9)
      {
LABEL_25:
        actionHandler2 = 0;
        goto LABEL_26;
      }
    }

    else
    {
      v33 = v12;
      subtitle = [(FeatureDiscoveryModel *)self subtitle];
      subtitle2 = [v5 subtitle];
      v17 = subtitle;
      v18 = subtitle2;
      if (v17 | v18 && (v19 = [v17 isEqual:v18], v18, v17, !v19))
      {
        LOBYTE(v26) = 0;
      }

      else
      {
        v31 = v9;
        v32 = v8;
        actionTitle = [(FeatureDiscoveryModel *)self actionTitle];
        actionTitle2 = [v5 actionTitle];
        v9 = actionTitle;
        v22 = actionTitle2;
        if ((!(v9 | v22) || (v23 = [v9 isEqual:v22], v22, v9, v23)) && (v24 = -[FeatureDiscoveryModel shouldDisableAffordanceAfterAction](self, "shouldDisableAffordanceAfterAction"), v24 == objc_msgSend(v5, "shouldDisableAffordanceAfterAction")) && (v25 = -[FeatureDiscoveryModel hasActionExecuted](self, "hasActionExecuted"), v25 == objc_msgSend(v5, "hasActionExecuted")))
        {
          isDismissed = [(FeatureDiscoveryModel *)self isDismissed];
          v26 = isDismissed ^ [v5 isDismissed] ^ 1;
        }

        else
        {
          LOBYTE(v26) = 0;
        }

        v8 = v32;

        LOBYTE(v9) = v31;
      }

      if (v9)
      {
        goto LABEL_25;
      }
    }

LABEL_27:
    if (actionHandler)
    {
      goto LABEL_28;
    }

    goto LABEL_29;
  }

  LOBYTE(v26) = 0;
LABEL_30:

  return v26;
}

- (FeatureDiscoveryModel)initWithImage:(id)image title:(id)title subtitle:(id)subtitle actionTitle:(id)actionTitle actionHandler:(id)handler bodyTapHandler:(id)tapHandler displayedHandler:(id)displayedHandler dismissHandler:(id)self0 disableAffordanceAfterAction:(BOOL)self1
{
  imageCopy = image;
  titleCopy = title;
  subtitleCopy = subtitle;
  actionTitleCopy = actionTitle;
  handlerCopy = handler;
  tapHandlerCopy = tapHandler;
  displayedHandlerCopy = displayedHandler;
  dismissHandlerCopy = dismissHandler;
  v43.receiver = self;
  v43.super_class = FeatureDiscoveryModel;
  v25 = [(FeatureDiscoveryModel *)&v43 init];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_image, image);
    v27 = [titleCopy copy];
    title = v26->_title;
    v26->_title = v27;

    v29 = [subtitleCopy copy];
    subtitle = v26->_subtitle;
    v26->_subtitle = v29;

    v31 = [actionTitleCopy copy];
    actionTitle = v26->_actionTitle;
    v26->_actionTitle = v31;

    v33 = [handlerCopy copy];
    actionHandler = v26->_actionHandler;
    v26->_actionHandler = v33;

    v35 = [tapHandlerCopy copy];
    bodyTapHandler = v26->_bodyTapHandler;
    v26->_bodyTapHandler = v35;

    v37 = [displayedHandlerCopy copy];
    displayedHandler = v26->_displayedHandler;
    v26->_displayedHandler = v37;

    v39 = [dismissHandlerCopy copy];
    dismissHandler = v26->_dismissHandler;
    v26->_dismissHandler = v39;

    v26->_shouldDisableAffordanceAfterAction = action;
  }

  return v26;
}

+ (id)_testModelWithoutImage
{
  LOBYTE(v4) = 0;
  v2 = [[self alloc] initWithImage:0 title:@"Don't drive!" subtitle:@"Stay home" actionTitle:@"Sure" actionHandler:&stru_101628390 bodyTapHandler:0 displayedHandler:&stru_1016283B0 dismissHandler:&stru_1016283D0 disableAffordanceAfterAction:v4];

  return v2;
}

+ (id)_testModelWithImage
{
  v2 = [self alloc];
  v3 = [UIImage imageNamed:@"closed-big"];
  LOBYTE(v6) = 0;
  v4 = [v2 initWithImage:v3 title:@"Drive!" subtitle:@"Go out and drive somewhere" actionTitle:@"OK actionHandler:I will" bodyTapHandler:&stru_101628330 displayedHandler:0 dismissHandler:&stru_101628350 disableAffordanceAfterAction:{&stru_101628370, v6}];

  return v4;
}

+ (id)ratingsAndPhotosDiscoveryModelWithActionHandler:(id)handler cancelHandler:(id)cancelHandler
{
  handlerCopy = handler;
  cancelHandlerCopy = cancelHandler;
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"Ratings and Photos title" value:@"localized string not found" table:0];

  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"Ratings and Photos description" value:@"localized string not found" table:0];

  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"Get Started [UGC]" value:@"localized string not found" table:0];

  v13 = [FeatureDiscoveryModel alloc];
  v20 = cancelHandlerCopy;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100755CE0;
  v21[3] = &unk_101661760;
  v22 = handlerCopy;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100755D3C;
  v19[3] = &unk_101661760;
  v14 = cancelHandlerCopy;
  v15 = handlerCopy;
  LOBYTE(v18) = 0;
  v16 = [(FeatureDiscoveryModel *)v13 initWithImage:0 title:v8 subtitle:v10 actionTitle:v12 actionHandler:v21 bodyTapHandler:0 displayedHandler:&stru_1016283F0 dismissHandler:v19 disableAffordanceAfterAction:v18];

  return v16;
}

@end