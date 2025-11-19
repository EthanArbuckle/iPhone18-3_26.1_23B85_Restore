@interface ISLanguageSetupController
- (BOOL)isSettingDifferentLanguage;
- (void)commit;
- (void)saveLanguage:(BOOL)a3;
- (void)setLanguage:(id)a3 specifier:(id)a4;
- (void)setupController;
@end

@implementation ISLanguageSetupController

- (BOOL)isSettingDifferentLanguage
{
  v2 = self;
  v3 = [(ISLanguageSetupController *)self listController];
  v4 = [v3 checkedLanguageCode];
  LOBYTE(v2) = [v4 isEqualToString:v2->_languageToSet];

  return v2 ^ 1;
}

- (void)commit
{
  if (self->_languageToSet)
  {
    if ([(ISLanguageSetupController *)self isSettingDifferentLanguage])
    {
      v3 = [NSBundle bundleForClass:objc_opt_class()];
      v4 = [v3 localizedStringForKey:@"CHANGE_TO_%@_FOR_NEW_DEVICE_LANGUAGE" value:&stru_28F98 table:@"InternationalSettings"];
      v45 = [NSLocale string:v4 withCapitalizedDisplayNamesForFirstLanguageIdentifier:self->_languageToSet secondLanguageIdentifier:0 thirdLanguageIdentifier:0];

      v5 = [NSBundle bundleForClass:objc_opt_class()];
      v43 = [v5 localizedStringForKey:@"CANCEL_CHANGE_LANGUAGE" value:&stru_28F98 table:@"InternationalSettings"];

      v6 = +[IPLanguageListManager manager];
      v7 = [v6 systemDisplayLanguage];

      v8 = [NSBundle bundleForClass:objc_opt_class()];
      v9 = [v8 localizedStringForKey:@"USE_%@" value:&stru_28F98 table:@"InternationalSettings"];
      v47 = [NSLocale string:v9 withCapitalizedDisplayNamesForFirstLanguageIdentifier:self->_languageToSet secondLanguageIdentifier:0 thirdLanguageIdentifier:0];

      v10 = [NSBundle bundleForClass:objc_opt_class()];
      v11 = [v10 localizedStringForKey:@"USE_%@" value:&stru_28F98 table:@"InternationalSettings"];
      v44 = v7;
      v42 = [NSLocale string:v11 withCapitalizedDisplayNamesForFirstLanguageIdentifier:v7 secondLanguageIdentifier:0 thirdLanguageIdentifier:0];

      v12 = v45;
      v13 = [NSBundle bundleForClass:objc_opt_class()];
      v14 = [v13 localizedStringForKey:@"WOULD_YOU_LIKE_TO_USE_%@_AS_PRIMARY_LANGUAGE" value:&stru_28F98 table:@"InternationalSettings"];
      v15 = [NSLocale string:v14 withCapitalizedDisplayNamesForFirstLanguageIdentifier:self->_languageToSet secondLanguageIdentifier:0 thirdLanguageIdentifier:0];

      v16 = +[NSLocale baseSystemLanguages];
      v17 = [NSLocale baseLanguageFromLanguage:self->_languageToSet];
      LOBYTE(v13) = [v16 containsObject:v17];

      v46 = v12;
      if (v13)
      {
        v18 = v12;
        v19 = v42;
      }

      else
      {
        v20 = [NSBundle bundleForClass:objc_opt_class()];
        v21 = [ISInternationalViewController modelSpecificLocalizedStringKeyForKey:@"%@_IS_UNSUPPORTED_DEVICE_WILL_FALLBACK_TO_%@_WHERE_%@_IS_NOT_SUPPORTED"];
        v22 = [v20 localizedStringForKey:v21 value:&stru_28F98 table:@"InternationalSettings"];
        v41 = [NSLocale string:v22 withCapitalizedDisplayNamesForFirstLanguageIdentifier:self->_languageToSet secondLanguageIdentifier:v44 thirdLanguageIdentifier:self->_languageToSet];

        v23 = [NSBundle bundleForClass:objc_opt_class()];
        v24 = [v23 localizedStringForKey:@"PREFER_%@" value:&stru_28F98 table:@"InternationalSettings"];
        v40 = [NSLocale string:v24 withCapitalizedDisplayNamesForFirstLanguageIdentifier:self->_languageToSet secondLanguageIdentifier:0 thirdLanguageIdentifier:0];

        v25 = [NSBundle bundleForClass:objc_opt_class()];
        v26 = [v25 localizedStringForKey:@"PREFER_%@" value:&stru_28F98 table:@"InternationalSettings"];
        v27 = [NSLocale string:v26 withCapitalizedDisplayNamesForFirstLanguageIdentifier:v44 secondLanguageIdentifier:0 thirdLanguageIdentifier:0];

        v28 = [NSBundle bundleForClass:objc_opt_class()];
        v18 = [v28 localizedStringForKey:@"ADD_PREFERRED_LANGUAGE_TITLE" value:&stru_28F98 table:@"InternationalSettings"];

        v15 = v41;
        v19 = v27;
        v47 = v40;
      }

      v29 = +[UIDevice currentDevice];
      if ([v29 sf_isiPad])
      {
        v30 = v18;
      }

      else
      {
        v30 = v15;
      }

      v31 = +[UIDevice currentDevice];
      if ([v31 sf_isiPad])
      {
        v32 = v15;
      }

      else
      {
        v32 = 0;
      }

      v33 = +[UIDevice currentDevice];
      v34 = +[UIAlertController alertControllerWithTitle:message:preferredStyle:](UIAlertController, "alertControllerWithTitle:message:preferredStyle:", v30, v32, [v33 sf_isiPad]);

      v51[0] = _NSConcreteStackBlock;
      v51[1] = 3221225472;
      v51[2] = sub_9CD4;
      v51[3] = &unk_28BA8;
      v51[4] = self;
      v35 = [UIAlertAction actionWithTitle:v47 style:2 handler:v51];
      [v34 addAction:v35];

      v50[0] = _NSConcreteStackBlock;
      v50[1] = 3221225472;
      v50[2] = sub_9CE0;
      v50[3] = &unk_28BA8;
      v50[4] = self;
      v36 = [UIAlertAction actionWithTitle:v19 style:2 handler:v50];
      [v34 addAction:v36];

      v49[0] = _NSConcreteStackBlock;
      v49[1] = 3221225472;
      v49[2] = sub_9CEC;
      v49[3] = &unk_28D48;
      v49[4] = self;
      v37 = [UIAlertAction _actionWithTitle:v43 image:0 style:1 handler:0 shouldDismissHandler:v49];
      [v34 addAction:v37];

      v38 = [(ISLanguageSetupController *)self presentedViewController];

      if (v38)
      {
        v39 = [(ISLanguageSetupController *)self presentedViewController];
        [v39 presentViewController:v34 animated:1 completion:0];
      }

      else
      {
        [(ISLanguageSetupController *)self presentViewController:v34 animated:1 completion:0];
      }
    }

    else
    {
      v48 = [(ISLanguageSetupController *)self listController];
      [v48 deselectHighlightedRow];
    }
  }
}

- (void)saveLanguage:(BOOL)a3
{
  v3 = a3;
  v14 = +[COSInternationalController preferredLanguages];
  if (![v14 count])
  {
    sub_1A768();
  }

  if ([v14 count])
  {
    if (v3)
    {
      v5 = [(ISLanguageSetupController *)self parentController];
      [v5 setLanguage:self->_languageToSet];
    }

    else
    {
      if ([v14 containsObject:self->_languageToSet])
      {
        sub_1A73C();
      }

      v5 = [NSMutableOrderedSet orderedSetWithArray:v14];
      v6 = self->_languageToSet;
      v7 = [NSLocale localeWithLocaleIdentifier:v6];
      v8 = [v7 regionCode];

      if (!v8)
      {
        v9 = +[COSInternationalController currentLocale];
        v10 = [v9 regionCode];
        v11 = [NSLocale languageFromLanguage:v6 byReplacingRegion:v10];

        v6 = v11;
      }

      [v5 addObject:v6];
      v12 = [(ISLanguageSetupController *)self parentController];
      v13 = [v5 array];
      [v12 setPreferredLanguages:v13];
    }
  }
}

- (void)setLanguage:(id)a3 specifier:(id)a4
{
  v5 = [a3 copy];
  languageToSet = self->_languageToSet;
  self->_languageToSet = v5;

  _objc_release_x1();
}

- (void)setupController
{
  v6 = objc_alloc_init(PSSpecifier);
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"Language" value:&stru_28F98 table:@"InternationalSettings"];
  [v6 setName:v4];

  v5 = objc_alloc_init(ISLanguageViewController);
  [(ISLanguageViewController *)v5 setRootController:self];
  [(ISLanguageViewController *)v5 setSpecifier:v6];
  [(ISLanguageViewController *)v5 setParentController:self];
  [(ISLanguageSetupController *)self setListController:v5];
  [(ISLanguageSetupController *)self showController:v5];
}

@end