@interface ENUIExposureDetailsViewController
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (ENExposureNotification)notification;
- (_TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel)agencyModel;
- (id)specifiers;
- (void)exposureDetailHeaderViewDidTapContinueButton:(id)button;
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
  notification = [(ENUIExposureDetailsViewController *)self notification];
  v3 = notification;
  if (notification)
  {
    region = [notification region];
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
          region2 = [v9 region];
          v11 = [region2 isEqual:region];

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
  specifier = [(ENUIExposureDetailsViewController *)self specifier];
  userInfo = [specifier userInfo];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  specifier2 = [(ENUIExposureDetailsViewController *)self specifier];
  userInfo2 = [specifier2 userInfo];
  if (isKindOfClass)
  {
    goto LABEL_4;
  }

  objc_opt_class();
  v8 = objc_opt_isKindOfClass();

  if (v8)
  {
    specifier3 = [(ENUIExposureDetailsViewController *)self specifier];
    specifier2 = [specifier3 userInfo];

    userInfo2 = [specifier2 objectForKey:@"notification"];
LABEL_4:

    goto LABEL_6;
  }

  userInfo2 = 0;
LABEL_6:

  return userInfo2;
}

- (id)specifiers
{
  v2 = OBJC_IVAR___PSListController__specifiers;
  v3 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v3)
  {
    goto LABEL_2;
  }

  notification = [(ENUIExposureDetailsViewController *)self notification];

  if (notification)
  {
    agencyModel = [(ENUIExposureDetailsViewController *)self agencyModel];
    if (agencyModel)
    {
      v8 = agencyModel;
      v9 = [PSSpecifier preferenceSpecifierNamed:&stru_2D818 target:0 set:0 get:0 detail:0 cell:-1 edit:0];
      v10 = objc_opt_class();
      v28 = PSCellClassKey;
      [v9 setObject:v10 forKeyedSubscript:?];
      v29 = ENUILocalizedString();
      header = [v8 header];
      title = [header title];
      header2 = [v8 header];
      subtitle = [header2 subtitle];
      v15 = [NSString stringWithFormat:v29, title, subtitle];

      v16 = objc_alloc_init(ENUIExposureDetailHeaderConfiguration);
      [(ENUIExposureDetailHeaderConfiguration *)v16 setName:v15];
      notification2 = [(ENUIExposureDetailsViewController *)self notification];
      localizedSubjectText = [notification2 localizedSubjectText];
      [(ENUIExposureDetailHeaderConfiguration *)v16 setTitle:localizedSubjectText];

      notification3 = [(ENUIExposureDetailsViewController *)self notification];
      localizedDetailBodyText = [notification3 localizedDetailBodyText];
      [(ENUIExposureDetailHeaderConfiguration *)v16 setMessage:localizedDetailBodyText];

      notification4 = [(ENUIExposureDetailsViewController *)self notification];
      learnMoreURL = [notification4 learnMoreURL];
      [(ENUIExposureDetailHeaderConfiguration *)v16 setLearnMoreURL:learnMoreURL];

      [v9 setUserInfo:v16];
      v23 = [PSSpecifier preferenceSpecifierNamed:&stru_2D818 target:0 set:0 get:0 detail:0 cell:-1 edit:0];
      [v23 setObject:objc_opt_class() forKeyedSubscript:v28];
      name = [v8 name];
      [v23 setObject:name forKeyedSubscript:PSTitleKey];

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

- (void)exposureDetailHeaderViewDidTapContinueButton:(id)button
{
  notification = [(ENUIExposureDetailsViewController *)self notification];
  learnMoreURL = [notification learnMoreURL];
  if (learnMoreURL)
  {
    regionWebsiteURL = learnMoreURL;
  }

  else
  {
    agencyModel = [(ENUIExposureDetailsViewController *)self agencyModel];
    regionWebsiteURL = [agencyModel regionWebsiteURL];

    if (!regionWebsiteURL)
    {
      regionWebsiteURL = 0;
      goto LABEL_7;
    }
  }

  v7 = +[UIApplication sharedApplication];
  v8 = [v7 canOpenURL:regionWebsiteURL];

  if (v8)
  {
    navigationController = +[UIApplication sharedApplication];
    [navigationController openURL:regionWebsiteURL options:&__NSDictionary0__struct completionHandler:0];
    goto LABEL_8;
  }

LABEL_7:
  navigationController = [(ENUIExposureDetailsViewController *)self navigationController];
  v10 = [navigationController popViewControllerAnimated:1];
LABEL_8:
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [viewCopy cellForRowAtIndexPath:pathCopy];
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
    v10 = [(ENUIExposureDetailsViewController *)&v12 tableView:viewCopy shouldHighlightRowAtIndexPath:pathCopy];
  }

  return v10;
}

@end