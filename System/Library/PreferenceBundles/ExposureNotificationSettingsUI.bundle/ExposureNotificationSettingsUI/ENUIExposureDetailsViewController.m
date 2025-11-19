@interface ENUIExposureDetailsViewController
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (ENExposureNotification)notification;
- (_TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel)agencyModel;
- (id)specifiers;
- (void)exposureDetailHeaderViewDidTapContinueButton:(id)a3;
- (void)viewDidLoad;
@end

@implementation ENUIExposureDetailsViewController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = ENUIExposureDetailsViewController;
  [(ENUIExposureDetailsViewController *)&v4 viewDidLoad];
  v3 = ENUILocalizedString();
  [(ENUIExposureDetailsViewController *)self setTitle:v3];
}

- (_TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel)agencyModel
{
  v2 = [(ENUIExposureDetailsViewController *)self notification];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 region];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = +[_TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel allRegions];
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          v10 = [v9 region];
          v11 = [v10 isEqual:v4];

          if (v11)
          {
            v6 = v9;
            goto LABEL_12;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (ENExposureNotification)notification
{
  v3 = [(ENUIExposureDetailsViewController *)self specifier];
  v4 = [v3 userInfo];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v6 = [(ENUIExposureDetailsViewController *)self specifier];
  v7 = [v6 userInfo];
  if (isKindOfClass)
  {
    goto LABEL_4;
  }

  objc_opt_class();
  v8 = objc_opt_isKindOfClass();

  if (v8)
  {
    v9 = [(ENUIExposureDetailsViewController *)self specifier];
    v6 = [v9 userInfo];

    v7 = [v6 objectForKey:@"notification"];
LABEL_4:

    goto LABEL_6;
  }

  v7 = 0;
LABEL_6:

  return v7;
}

- (id)specifiers
{
  v2 = OBJC_IVAR___PSListController__specifiers;
  v3 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v3)
  {
    goto LABEL_2;
  }

  v6 = [(ENUIExposureDetailsViewController *)self notification];

  if (v6)
  {
    v7 = [(ENUIExposureDetailsViewController *)self agencyModel];
    if (v7)
    {
      v8 = v7;
      v9 = [PSSpecifier preferenceSpecifierNamed:&stru_2D818 target:0 set:0 get:0 detail:0 cell:-1 edit:0];
      v10 = objc_opt_class();
      v28 = PSCellClassKey;
      [v9 setObject:v10 forKeyedSubscript:?];
      v29 = ENUILocalizedString();
      v11 = [v8 header];
      v12 = [v11 title];
      v13 = [v8 header];
      v14 = [v13 subtitle];
      v15 = [NSString stringWithFormat:v29, v12, v14];

      v16 = objc_alloc_init(ENUIExposureDetailHeaderConfiguration);
      [(ENUIExposureDetailHeaderConfiguration *)v16 setName:v15];
      v17 = [(ENUIExposureDetailsViewController *)self notification];
      v18 = [v17 localizedSubjectText];
      [(ENUIExposureDetailHeaderConfiguration *)v16 setTitle:v18];

      v19 = [(ENUIExposureDetailsViewController *)self notification];
      v20 = [v19 localizedDetailBodyText];
      [(ENUIExposureDetailHeaderConfiguration *)v16 setMessage:v20];

      v21 = [(ENUIExposureDetailsViewController *)self notification];
      v22 = [v21 learnMoreURL];
      [(ENUIExposureDetailHeaderConfiguration *)v16 setLearnMoreURL:v22];

      [v9 setUserInfo:v16];
      v23 = [PSSpecifier preferenceSpecifierNamed:&stru_2D818 target:0 set:0 get:0 detail:0 cell:-1 edit:0];
      [v23 setObject:objc_opt_class() forKeyedSubscript:v28];
      v24 = [v8 name];
      [v23 setObject:v24 forKeyedSubscript:PSTitleKey];

      [v23 setUserInfo:v8];
      v30 = v9;
      v25 = [NSArray arrayWithObjects:&v30 count:1];
      v26 = *&self->PSListController_opaque[v2];
      *&self->PSListController_opaque[v2] = v25;

      v3 = *&self->PSListController_opaque[v2];
LABEL_2:
      v4 = v3;
      goto LABEL_7;
    }
  }

  v4 = &__NSArray0__struct;
LABEL_7:

  return v4;
}

- (void)exposureDetailHeaderViewDidTapContinueButton:(id)a3
{
  v4 = [(ENUIExposureDetailsViewController *)self notification];
  v5 = [v4 learnMoreURL];
  if (v5)
  {
    v11 = v5;
  }

  else
  {
    v6 = [(ENUIExposureDetailsViewController *)self agencyModel];
    v11 = [v6 regionWebsiteURL];

    if (!v11)
    {
      v11 = 0;
      goto LABEL_7;
    }
  }

  v7 = +[UIApplication sharedApplication];
  v8 = [v7 canOpenURL:v11];

  if (v8)
  {
    v9 = +[UIApplication sharedApplication];
    [v9 openURL:v11 options:&__NSDictionary0__struct completionHandler:0];
    goto LABEL_8;
  }

LABEL_7:
  v9 = [(ENUIExposureDetailsViewController *)self navigationController];
  v10 = [v9 popViewControllerAnimated:1];
LABEL_8:
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 cellForRowAtIndexPath:v7];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10 = 0;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = ENUIExposureDetailsViewController;
    v10 = [(ENUIExposureDetailsViewController *)&v12 tableView:v6 shouldHighlightRowAtIndexPath:v7];
  }

  return v10;
}

@end