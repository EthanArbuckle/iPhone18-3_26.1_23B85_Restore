@interface FeatureDiscoveryModel
+ (id)_testModelWithImage;
+ (id)_testModelWithoutImage;
+ (id)ratingsAndPhotosDiscoveryModelWithActionHandler:(id)a3 cancelHandler:(id)a4;
- (BOOL)isEqual:(id)a3;
- (FeatureDiscoveryModel)initWithImage:(id)a3 title:(id)a4 subtitle:(id)a5 actionTitle:(id)a6 actionHandler:(id)a7 bodyTapHandler:(id)a8 displayedHandler:(id)a9 dismissHandler:(id)a10 disableAffordanceAfterAction:(BOOL)a11;
- (FeatureDiscoveryModelUpdates)updatesDelegate;
- (void)markActionExecuted:(BOOL)a3;
- (void)markAsDisplayed;
@end

@implementation FeatureDiscoveryModel

- (FeatureDiscoveryModelUpdates)updatesDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_updatesDelegate);

  return WeakRetained;
}

- (void)markActionExecuted:(BOOL)a3
{
  if (self->_hasActionExecuted != a3)
  {
    self->_hasActionExecuted = a3;
    v4 = [(FeatureDiscoveryModel *)self updatesDelegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [(FeatureDiscoveryModel *)self updatesDelegate];
      [v6 featureDiscoveryModelDidUpdate:self];
    }
  }
}

- (void)markAsDisplayed
{
  if (!self->_displayed)
  {
    self->_displayed = 1;
    v3 = [(FeatureDiscoveryModel *)self displayedHandler];

    if (v3)
    {
      v4 = [(FeatureDiscoveryModel *)self displayedHandler];
      v4[2]();
    }
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(FeatureDiscoveryModel *)self actionHandler];
    if (v6 && ([v5 actionHandler], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = v7;
      LODWORD(v9) = 0;
    }

    else
    {
      v27 = [(FeatureDiscoveryModel *)self actionHandler];
      if (v27)
      {
        LOBYTE(v26) = 0;
        v8 = 0;
LABEL_26:

        goto LABEL_27;
      }

      v28 = [v5 actionHandler];
      if (v28)
      {

        LOBYTE(v26) = 0;
        if (v6)
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

    v10 = [(FeatureDiscoveryModel *)self title];
    v11 = [v5 title];
    v12 = v10;
    v13 = v11;
    if (v12 | v13 && (v14 = [v12 isEqual:v13], v13, v12, !v14))
    {

      LOBYTE(v26) = 0;
      if (v9)
      {
LABEL_25:
        v27 = 0;
        goto LABEL_26;
      }
    }

    else
    {
      v33 = v12;
      v15 = [(FeatureDiscoveryModel *)self subtitle];
      v16 = [v5 subtitle];
      v17 = v15;
      v18 = v16;
      if (v17 | v18 && (v19 = [v17 isEqual:v18], v18, v17, !v19))
      {
        LOBYTE(v26) = 0;
      }

      else
      {
        v31 = v9;
        v32 = v8;
        v20 = [(FeatureDiscoveryModel *)self actionTitle];
        v21 = [v5 actionTitle];
        v9 = v20;
        v22 = v21;
        if ((!(v9 | v22) || (v23 = [v9 isEqual:v22], v22, v9, v23)) && (v24 = -[FeatureDiscoveryModel shouldDisableAffordanceAfterAction](self, "shouldDisableAffordanceAfterAction"), v24 == objc_msgSend(v5, "shouldDisableAffordanceAfterAction")) && (v25 = -[FeatureDiscoveryModel hasActionExecuted](self, "hasActionExecuted"), v25 == objc_msgSend(v5, "hasActionExecuted")))
        {
          v30 = [(FeatureDiscoveryModel *)self isDismissed];
          v26 = v30 ^ [v5 isDismissed] ^ 1;
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
    if (v6)
    {
      goto LABEL_28;
    }

    goto LABEL_29;
  }

  LOBYTE(v26) = 0;
LABEL_30:

  return v26;
}

- (FeatureDiscoveryModel)initWithImage:(id)a3 title:(id)a4 subtitle:(id)a5 actionTitle:(id)a6 actionHandler:(id)a7 bodyTapHandler:(id)a8 displayedHandler:(id)a9 dismissHandler:(id)a10 disableAffordanceAfterAction:(BOOL)a11
{
  v42 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  v24 = a10;
  v43.receiver = self;
  v43.super_class = FeatureDiscoveryModel;
  v25 = [(FeatureDiscoveryModel *)&v43 init];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_image, a3);
    v27 = [v18 copy];
    title = v26->_title;
    v26->_title = v27;

    v29 = [v19 copy];
    subtitle = v26->_subtitle;
    v26->_subtitle = v29;

    v31 = [v20 copy];
    actionTitle = v26->_actionTitle;
    v26->_actionTitle = v31;

    v33 = [v21 copy];
    actionHandler = v26->_actionHandler;
    v26->_actionHandler = v33;

    v35 = [v22 copy];
    bodyTapHandler = v26->_bodyTapHandler;
    v26->_bodyTapHandler = v35;

    v37 = [v23 copy];
    displayedHandler = v26->_displayedHandler;
    v26->_displayedHandler = v37;

    v39 = [v24 copy];
    dismissHandler = v26->_dismissHandler;
    v26->_dismissHandler = v39;

    v26->_shouldDisableAffordanceAfterAction = a11;
  }

  return v26;
}

+ (id)_testModelWithoutImage
{
  LOBYTE(v4) = 0;
  v2 = [[a1 alloc] initWithImage:0 title:@"Don't drive!" subtitle:@"Stay home" actionTitle:@"Sure" actionHandler:&stru_101628390 bodyTapHandler:0 displayedHandler:&stru_1016283B0 dismissHandler:&stru_1016283D0 disableAffordanceAfterAction:v4];

  return v2;
}

+ (id)_testModelWithImage
{
  v2 = [a1 alloc];
  v3 = [UIImage imageNamed:@"closed-big"];
  LOBYTE(v6) = 0;
  v4 = [v2 initWithImage:v3 title:@"Drive!" subtitle:@"Go out and drive somewhere" actionTitle:@"OK actionHandler:I will" bodyTapHandler:&stru_101628330 displayedHandler:0 dismissHandler:&stru_101628350 disableAffordanceAfterAction:{&stru_101628370, v6}];

  return v4;
}

+ (id)ratingsAndPhotosDiscoveryModelWithActionHandler:(id)a3 cancelHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"Ratings and Photos title" value:@"localized string not found" table:0];

  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"Ratings and Photos description" value:@"localized string not found" table:0];

  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"Get Started [UGC]" value:@"localized string not found" table:0];

  v13 = [FeatureDiscoveryModel alloc];
  v20 = v6;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100755CE0;
  v21[3] = &unk_101661760;
  v22 = v5;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100755D3C;
  v19[3] = &unk_101661760;
  v14 = v6;
  v15 = v5;
  LOBYTE(v18) = 0;
  v16 = [(FeatureDiscoveryModel *)v13 initWithImage:0 title:v8 subtitle:v10 actionTitle:v12 actionHandler:v21 bodyTapHandler:0 displayedHandler:&stru_1016283F0 dismissHandler:v19 disableAffordanceAfterAction:v18];

  return v16;
}

@end