@interface BSUIURL
+ (id)URLWithURL:(id)a3;
+ (id)URLWithURL:(id)a3 sourceApplication:(id)a4 annotation:(id)a5;
- (BSUIURL)initWithURL:(id)a3;
- (id)_queryDictionary;
- (id)actionString;
- (id)valueForQueryParameter:(id)a3;
@end

@implementation BSUIURL

- (BSUIURL)initWithURL:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BSUIURL;
  v5 = [(BSUIURL *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    underlyingURL = v5->_underlyingURL;
    v5->_underlyingURL = v6;
  }

  return v5;
}

+ (id)URLWithURL:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = [[BSUIURL alloc] initWithURL:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)URLWithURL:(id)a3 sourceApplication:(id)a4 annotation:(id)a5
{
  v5 = a3;
  if (a3)
  {
    v7 = a5;
    v8 = a4;
    v9 = v5;
    v5 = [[BSUIURL alloc] initWithURL:v9];

    [(BSUIURL *)v5 setReferrerApplicationName:v8];
    objc_opt_class();
    v10 = BUDynamicCast();

    v11 = [v10 objectForKey:LSReferrerURLKey];
    objc_opt_class();
    v12 = BUDynamicCast();

    if (v12)
    {
      [(BSUIURL *)v5 setReferrerURLString:v11];
    }

    else
    {
      objc_opt_class();
      v13 = BUDynamicCast();

      if (v13)
      {
        v14 = [v11 absoluteString];
        [(BSUIURL *)v5 setReferrerURLString:v14];
      }
    }
  }

  return v5;
}

- (id)actionString
{
  v3 = [(BSUIURL *)self valueForQueryParameter:@"action"];
  if (!v3)
  {
    v4 = [(NSURL *)self->_underlyingURL absoluteString];
    if ([v4 rangeOfString:@"MZSearch.woa"] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v4, "rangeOfString:", @"/search?") == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([v4 rangeOfString:@"freeProductCodeWizard"] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v4, "rangeOfString:", @"redeemLandingPage") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v4, "rangeOfString:", @"showDialogForRedeem") == 0x7FFFFFFFFFFFFFFFLL)
      {
        if ([v4 rangeOfString:@"buyLandingPage"] == 0x7FFFFFFFFFFFFFFFLL)
        {
          if ([v4 rangeOfString:@"buyCharityGiftWizard"] == 0x7FFFFFFFFFFFFFFFLL)
          {
            if ([v4 rangeOfString:@"MZFinance.woa"] == 0x7FFFFFFFFFFFFFFFLL)
            {
              if ([v4 rangeOfString:@"viewEula"] == 0x7FFFFFFFFFFFFFFFLL)
              {
                v3 = 0;
              }

              else
              {
                v3 = @"eula";
              }
            }

            else if ([v4 rangeOfString:@"getPass"] == 0x7FFFFFFFFFFFFFFFLL)
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

- (id)valueForQueryParameter:(id)a3
{
  v4 = a3;
  v5 = [(BSUIURL *)self _queryDictionary];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (id)_queryDictionary
{
  queryDictionary = self->_queryDictionary;
  if (!queryDictionary)
  {
    v4 = [(NSURL *)self->_underlyingURL query];
    v5 = [v4 componentsSeparatedByString:@"&"];

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