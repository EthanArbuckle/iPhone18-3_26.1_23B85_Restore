@interface ISLocaleSetupController
- (void)commitRegion;
- (void)setupController;
@end

@implementation ISLocaleSetupController

- (void)commitRegion
{
  selectedRegion = [(ISLocaleSetupController *)self selectedRegion];

  if (selectedRegion)
  {
    v4 = +[NSLocale _deviceLanguage];
    v5 = [NSLocale localeWithLocaleIdentifier:v4];
    selectedRegion2 = [(ISLocaleSetupController *)self selectedRegion];
    regionCode = [selectedRegion2 regionCode];
    v58 = [v5 localizedStringForRegion:regionCode context:5 short:0];

    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v59 = [v8 localizedStringForKey:@"CHANGE_REGION_TITLE" value:&stru_28F98 table:@"InternationalSettings"];

    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v56 = [v9 localizedStringForKey:@"CANCEL_CHANGE_REGION" value:&stru_28F98 table:@"InternationalSettings"];

    v10 = +[UIDevice currentDevice];
    sf_isiPad = [v10 sf_isiPad];

    v11 = [IPLanguageListManager alloc];
    v12 = +[COSInternationalController preferredLanguages];
    v13 = [v11 initWithPreferredLanguages:v12];
    systemDisplayLanguage = [v13 systemDisplayLanguage];
    v15 = [NSLocale _distinctiveLanguageIdentifierForLanguageIdentifier:systemDisplayLanguage];

    selfCopy = self;
    selectedRegion3 = [(ISLocaleSetupController *)self selectedRegion];
    regionCode2 = [selectedRegion3 regionCode];
    v18 = [NSLocale languageFromLanguage:v15 byReplacingRegion:regionCode2];

    v19 = [IPLanguageListManager alloc];
    v65 = v18;
    v20 = [NSArray arrayWithObjects:&v65 count:1];
    v21 = [v19 initWithPreferredLanguages:v20];
    systemDisplayLanguage2 = [v21 systemDisplayLanguage];
    v23 = systemDisplayLanguage2;
    v55 = v18;
    if (systemDisplayLanguage2)
    {
      v24 = systemDisplayLanguage2;
    }

    else
    {
      v24 = v18;
    }

    v25 = [NSLocale _distinctiveLanguageIdentifierForLanguageIdentifier:v24];

    v57 = v15;
    if (([NSLocale _language:v15 usesSameLocalizationAs:v25]& 1) != 0)
    {
      v26 = +[ISInternationalViewController localizedRestartStringForCurrentDevice];
      if (sf_isiPad)
      {
        v27 = v59;
      }

      else
      {
        v27 = v26;
      }

      if (sf_isiPad)
      {
        v28 = v26;
      }

      else
      {
        v28 = 0;
      }

      v29 = [UIAlertController alertControllerWithTitle:v27 message:v28 preferredStyle:sf_isiPad];
      v30 = [NSBundle bundleForClass:objc_opt_class()];
      v31 = [v30 localizedStringForKey:@"CHANGE_TO_%@_AS_REGION" value:&stru_28F98 table:@"InternationalSettings"];
      v32 = [NSString stringWithFormat:v31, v58];

      v61[0] = _NSConcreteStackBlock;
      v61[1] = 3221225472;
      v61[2] = sub_FD20;
      v61[3] = &unk_28BA8;
      v33 = selfCopy;
      v61[4] = selfCopy;
      v34 = [UIAlertAction actionWithTitle:v32 style:2 handler:v61];
      [v29 addAction:v34];

      v60[0] = _NSConcreteStackBlock;
      v60[1] = 3221225472;
      v60[2] = sub_FD2C;
      v60[3] = &unk_28D48;
      v60[4] = selfCopy;
      v35 = [UIAlertAction _actionWithTitle:v56 image:0 style:1 handler:0 shouldDismissHandler:v60];
      [v29 addAction:v35];

      v36 = v58;
      v37 = v56;
    }

    else
    {
      v38 = [NSBundle bundleForClass:objc_opt_class()];
      v39 = [v38 localizedStringForKey:@"CHANGE_TO_%@_AS_PRIMARY_LANGUAGE" value:&stru_28F98 table:@"InternationalSettings"];
      v26 = [NSLocale string:v39 withCapitalizedDisplayNamesForFirstLanguageIdentifier:v25 secondLanguageIdentifier:0 thirdLanguageIdentifier:0];

      v40 = [NSBundle bundleForClass:objc_opt_class()];
      v41 = [v40 localizedStringForKey:@"KEEP_%@_AS_PRIMARY_LANGUAGE" value:&stru_28F98 table:@"InternationalSettings"];
      v32 = [NSLocale string:v41 withCapitalizedDisplayNamesForFirstLanguageIdentifier:v15 secondLanguageIdentifier:0 thirdLanguageIdentifier:0];

      v42 = [NSBundle bundleForClass:objc_opt_class()];
      v43 = [ISInternationalViewController modelSpecificLocalizedStringKeyForKey:@"ASK_USE_%@_AS_DEVICE_LANGUAGE"];
      v44 = [v42 localizedStringForKey:v43 value:&stru_28F98 table:@"InternationalSettings"];
      v45 = [NSLocale string:v44 withCapitalizedDisplayNamesForFirstLanguageIdentifier:v25 secondLanguageIdentifier:0 thirdLanguageIdentifier:0];

      if (sf_isiPad)
      {
        v46 = v59;
      }

      else
      {
        v46 = v45;
      }

      if (sf_isiPad)
      {
        v47 = v45;
      }

      else
      {
        v47 = 0;
      }

      v29 = [UIAlertController alertControllerWithTitle:v46 message:v47 preferredStyle:sf_isiPad];
      v64[0] = _NSConcreteStackBlock;
      v64[1] = 3221225472;
      v64[2] = sub_FCD0;
      v64[3] = &unk_28D48;
      v33 = selfCopy;
      v64[4] = selfCopy;
      v37 = v56;
      v48 = [UIAlertAction _actionWithTitle:v56 image:0 style:1 handler:0 shouldDismissHandler:v64];
      [v29 addAction:v48];

      v63[0] = _NSConcreteStackBlock;
      v63[1] = 3221225472;
      v63[2] = sub_FD08;
      v63[3] = &unk_28BA8;
      v63[4] = selfCopy;
      v49 = [UIAlertAction actionWithTitle:v26 style:0 handler:v63];
      [v29 addAction:v49];

      v62[0] = _NSConcreteStackBlock;
      v62[1] = 3221225472;
      v62[2] = sub_FD14;
      v62[3] = &unk_28BA8;
      v62[4] = selfCopy;
      v50 = [UIAlertAction actionWithTitle:v32 style:0 handler:v62];
      [v29 addAction:v50];

      v36 = v58;
    }

    presentedViewController = [(ISLocaleSetupController *)v33 presentedViewController];

    if (presentedViewController)
    {
      presentedViewController2 = [(ISLocaleSetupController *)v33 presentedViewController];
      [presentedViewController2 presentViewController:v29 animated:1 completion:0];
    }

    else
    {
      [(ISLocaleSetupController *)v33 presentViewController:v29 animated:1 completion:0];
    }
  }
}

- (void)setupController
{
  v6 = objc_alloc_init(PSSpecifier);
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"LOCALE" value:&stru_28F98 table:@"InternationalSettings"];
  [v6 setName:v4];

  v5 = objc_alloc_init(ISLocaleController);
  [(ISLocaleController *)v5 setRootController:self];
  [(ISLocaleController *)v5 setSpecifier:v6];
  [(ISLocaleController *)v5 setParentController:self];
  [(ISLocaleSetupController *)self setListController:v5];
  [(ISLocaleSetupController *)self showController:v5];
}

@end