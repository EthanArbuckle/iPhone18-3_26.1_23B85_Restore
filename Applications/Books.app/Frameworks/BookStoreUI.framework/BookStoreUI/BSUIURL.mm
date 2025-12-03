@interface BSUIURL
+ (id)URLWithURL:(id)l;
+ (id)URLWithURL:(id)l sourceApplication:(id)application annotation:(id)annotation;
- (BSUIURL)initWithURL:(id)l;
- (id)_queryDictionary;
- (id)actionString;
- (id)valueForQueryParameter:(id)parameter;
@end

@implementation BSUIURL

- (BSUIURL)initWithURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = BSUIURL;
  v5 = [(BSUIURL *)&v9 init];
  if (v5)
  {
    v6 = [lCopy copy];
    underlyingURL = v5->_underlyingURL;
    v5->_underlyingURL = v6;
  }

  return v5;
}

+ (id)URLWithURL:(id)l
{
  if (l)
  {
    lCopy = l;
    v4 = [[BSUIURL alloc] initWithURL:lCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)URLWithURL:(id)l sourceApplication:(id)application annotation:(id)annotation
{
  lCopy = l;
  if (l)
  {
    annotationCopy = annotation;
    applicationCopy = application;
    v9 = lCopy;
    lCopy = [[BSUIURL alloc] initWithURL:v9];

    [(BSUIURL *)lCopy setReferrerApplicationName:applicationCopy];
    objc_opt_class();
    v10 = BUDynamicCast();

    v11 = [v10 objectForKey:LSReferrerURLKey];
    objc_opt_class();
    v12 = BUDynamicCast();

    if (v12)
    {
      [(BSUIURL *)lCopy setReferrerURLString:v11];
    }

    else
    {
      objc_opt_class();
      v13 = BUDynamicCast();

      if (v13)
      {
        absoluteString = [v11 absoluteString];
        [(BSUIURL *)lCopy setReferrerURLString:absoluteString];
      }
    }
  }

  return lCopy;
}

- (id)actionString
{
  v3 = [(BSUIURL *)self valueForQueryParameter:@"action"];
  if (!v3)
  {
    absoluteString = [(NSURL *)self->_underlyingURL absoluteString];
    if ([absoluteString rangeOfString:@"MZSearch.woa"] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(absoluteString, "rangeOfString:", @"/search?") == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([absoluteString rangeOfString:@"freeProductCodeWizard"] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(absoluteString, "rangeOfString:", @"redeemLandingPage") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(absoluteString, "rangeOfString:", @"showDialogForRedeem") == 0x7FFFFFFFFFFFFFFFLL)
      {
        if ([absoluteString rangeOfString:@"buyLandingPage"] == 0x7FFFFFFFFFFFFFFFLL)
        {
          if ([absoluteString rangeOfString:@"buyCharityGiftWizard"] == 0x7FFFFFFFFFFFFFFFLL)
          {
            if ([absoluteString rangeOfString:@"MZFinance.woa"] == 0x7FFFFFFFFFFFFFFFLL)
            {
              if ([absoluteString rangeOfString:@"viewEula"] == 0x7FFFFFFFFFFFFFFFLL)
              {
                v3 = 0;
              }

              else
              {
                v3 = @"eula";
              }
            }

            else if ([absoluteString rangeOfString:@"getPass"] == 0x7FFFFFFFFFFFFFFFLL)
            {
              v3 = @"account";
            }

            else
            {
              v3 = @"addpassbookpass";
            }
          }

          else
          {
            v3 = @"donate";
          }
        }

        else
        {
          v3 = @"gift";
        }
      }

      else
      {
        v3 = @"redeem";
      }
    }

    else
    {
      v3 = @"search";
    }
  }

  return v3;
}

- (id)valueForQueryParameter:(id)parameter
{
  parameterCopy = parameter;
  _queryDictionary = [(BSUIURL *)self _queryDictionary];
  v6 = [_queryDictionary objectForKey:parameterCopy];

  return v6;
}

- (id)_queryDictionary
{
  queryDictionary = self->_queryDictionary;
  if (!queryDictionary)
  {
    query = [(NSURL *)self->_underlyingURL query];
    v5 = [query componentsSeparatedByString:@"&"];

    v6 = objc_alloc_init(NSMutableDictionary);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        v11 = 0;
        do
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v18 + 1) + 8 * v11) componentsSeparatedByString:{@"=", v18}];
          if ([v12 count] == &dword_0 + 2)
          {
            v13 = [v12 objectAtIndex:1];
            v14 = [v12 objectAtIndex:0];
            [v6 setObject:v13 forKey:v14];
          }

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    v15 = [v6 copy];
    v16 = self->_queryDictionary;
    self->_queryDictionary = v15;

    queryDictionary = self->_queryDictionary;
  }

  return queryDictionary;
}

@end