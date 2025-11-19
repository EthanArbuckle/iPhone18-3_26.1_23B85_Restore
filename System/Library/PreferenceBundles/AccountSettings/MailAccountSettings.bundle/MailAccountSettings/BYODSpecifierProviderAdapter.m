@interface BYODSpecifierProviderAdapter
+ (id)log;
- (BYODSpecifierProviderAdapter)initWithAccountManager:(id)a3 presenter:(id)a4;
- (NSArray)specifiers;
- (void)specifierProvider:(id)a3 showViewController:(id)a4;
@end

@implementation BYODSpecifierProviderAdapter

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_64490;
  block[3] = &unk_B8D78;
  block[4] = a1;
  if (qword_D65C0 != -1)
  {
    dispatch_once(&qword_D65C0, block);
  }

  v2 = qword_D65B8;

  return v2;
}

- (BYODSpecifierProviderAdapter)initWithAccountManager:(id)a3 presenter:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = BYODSpecifierProviderAdapter;
  v8 = [(BYODSpecifierProviderAdapter *)&v12 init];
  if (v8)
  {
    v9 = [[BYODSpecifierProvider alloc] initWithAccountManager:v6 presenter:v7];
    specifierProvider = v8->_specifierProvider;
    v8->_specifierProvider = v9;

    [(BYODSpecifierProvider *)v8->_specifierProvider setDelegate:v8];
    objc_storeStrong(&v8->_presenter, a4);
  }

  return v8;
}

- (NSArray)specifiers
{
  specifiers = self->_specifiers;
  if (!specifiers)
  {
    v4 = objc_alloc_init(NSMutableArray);
    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      v5 = [NSBundle bundleForClass:objc_opt_class()];
      v6 = [v5 localizedStringForKey:@"LEARN_MORE_PERIOD" value:&stru_B9FC8 table:@"AccountPreferences"];

      v7 = [NSBundle bundleForClass:objc_opt_class()];
      v8 = [v7 localizedStringForKey:@"CUSTOM_EMAIL_DOMAIN_FOOTER" value:&stru_B9FC8 table:@"AccountPreferences"];
      v9 = [NSString stringWithFormat:@"%@ %@", v8, v6];

      v10 = [PSSpecifier groupSpecifierWithID:@"CUSTOM_DOMAIN_GROUP_SPECIFIER"];
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      [v10 setProperty:v12 forKey:PSFooterCellClassGroupKey];

      [v10 setProperty:v9 forKey:PSFooterHyperlinkViewTitleKey];
      v21.location = [v9 rangeOfString:v6];
      v13 = NSStringFromRange(v21);
      [v10 setProperty:v13 forKey:PSFooterHyperlinkViewLinkRangeKey];

      v14 = [NSBundle bundleForClass:objc_opt_class()];
      v15 = [v14 localizedStringForKey:@"CUSTOM_EMAIL_DOMAIN_KB_LINK" value:&stru_B9FC8 table:@"AccountPreferences"];
      [v10 setProperty:v15 forKey:PSFooterHyperlinkViewURLKey];

      [v4 addObject:v10];
    }

    v16 = [(BYODSpecifierProvider *)self->_specifierProvider specifiers];
    [v4 addObjectsFromArray:v16];

    v17 = [v4 copy];
    v18 = self->_specifiers;
    self->_specifiers = v17;

    specifiers = self->_specifiers;
  }

  return specifiers;
}

- (void)specifierProvider:(id)a3 showViewController:(id)a4
{
  v11 = a3;
  v7 = a4;
  if (v11)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = +[NSAssertionHandler currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"BYODSpecifierProviderAdapter.m" lineNumber:69 description:{@"Invalid parameter not satisfying: %@", @"provider"}];

    if (v7)
    {
      goto LABEL_3;
    }
  }

  v9 = +[NSAssertionHandler currentHandler];
  [v9 handleFailureInMethod:a2 object:self file:@"BYODSpecifierProviderAdapter.m" lineNumber:70 description:{@"Invalid parameter not satisfying: %@", @"viewController"}];

LABEL_3:
  if (pthread_main_np() != 1)
  {
    v10 = +[NSAssertionHandler currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"BYODSpecifierProviderAdapter.m" lineNumber:72 description:@"Current thread must be main"];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [(UIViewController *)self->_presenter presentViewController:v7 animated:1 completion:0];
  }

  else
  {
    [(UIViewController *)self->_presenter showViewController:v7 sender:v11];
  }
}

@end