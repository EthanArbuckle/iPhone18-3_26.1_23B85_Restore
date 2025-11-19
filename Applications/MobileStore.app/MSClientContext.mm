@interface MSClientContext
- (MSClientContext)initWithConfigurationDictionary:(id)a3;
- (id)localizedAlertWithError:(id)a3;
- (id)localizedStringForKey:(id)a3 inTable:(id)a4;
@end

@implementation MSClientContext

- (MSClientContext)initWithConfigurationDictionary:(id)a3
{
  v11.receiver = self;
  v11.super_class = MSClientContext;
  v3 = [(MSClientContext *)&v11 initWithConfigurationDictionary:a3];
  if (v3)
  {
    v4 = +[NSBundle mainBundle];
    bundle = v3->_bundle;
    v3->_bundle = v4;

    v6 = [(MSClientContext *)v3 clientInterface];
    [v6 setClientIdentifier:@"WiFi-Music"];
    v7 = +[UIColor systemBlueColor];
    [v6 setDarkKeyColor:v7];

    v8 = +[UIColor systemBlueColor];
    [v6 setLightKeyColor:v8];

    [v6 setURLBagKey:@"p2-music-searchHints" forIdentifier:SUURLBagKeySearchHints];
    [v6 setURLBagKey:@"p2-music-search" forIdentifier:SUURLBagKeySearch];
    v9 = objc_alloc_init(MSViewControllerFactory);
    [v6 setViewControllerFactory:v9];
  }

  return v3;
}

- (id)localizedAlertWithError:(id)a3
{
  v4 = a3;
  if (self)
  {
    [(MSClientContext *)self localizedStringForKey:@"GENERIC_ERROR"];
  }

  else
  {
    [SUUIClientContext localizedStringForKey:@"GENERIC_ERROR" inBundles:0];
  }
  v5 = ;
  if (v5)
  {
    v6 = objc_alloc_init(UIAlertView);
    if (self)
    {
      [(MSClientContext *)self localizedStringForKey:@"ERROR_CANCEL_BUTTON"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"ERROR_CANCEL_BUTTON" inBundles:0];
    }
    v7 = ;
    [v6 addButtonWithTitle:v7];

    [v6 setCancelButtonIndex:0];
    [v6 setTitle:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)localizedStringForKey:(id)a3 inTable:(id)a4
{
  v6 = a3;
  v7 = a4;
  localizedStrings = self->_localizedStrings;
  if (!localizedStrings)
  {
    v9 = [(MSClientContext *)self valueForConfigurationKey:SUUIConfigurationKeyLocale];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [NSArray alloc];
      bundle = self->_bundle;
      v12 = SUUIBundle();
      v13 = [v10 initWithObjects:{bundle, v12, 0}];

      v14 = [[SUUILocalizedStringDictionary alloc] initWithLocaleName:v9 bundles:v13];
      v15 = self->_localizedStrings;
      self->_localizedStrings = v14;
    }

    localizedStrings = self->_localizedStrings;
  }

  v16 = [(SUUILocalizedStringDictionary *)localizedStrings localizedStringForKey:v6 inTable:v7];

  return v16;
}

@end