@interface ServiceProductPageConfiguration
- (id)copyITMLOptionsDictionary;
@end

@implementation ServiceProductPageConfiguration

- (id)copyITMLOptionsDictionary
{
  v3 = objc_alloc_init(NSMutableDictionary);
  if (self->_parentalRequest)
  {
    v4 = objc_alloc_init(NSMutableDictionary);
    v5 = v4;
    parentalRequestPromptString = self->_parentalRequestPromptString;
    if (parentalRequestPromptString)
    {
      [v4 setObject:parentalRequestPromptString forKey:@"prompt"];
    }

    [v3 setObject:v5 forKey:@"parentalRequestData"];
  }

  hostApplicationIdentifier = self->_hostApplicationIdentifier;
  if (hostApplicationIdentifier)
  {
    [v3 setObject:hostApplicationIdentifier forKey:@"hostApp"];
    [v3 setObject:self->_hostApplicationIdentifier forKey:kOptionKeyReferrerApp];
  }

  productPageDictionary = self->_productPageDictionary;
  if (productPageDictionary)
  {
    [v3 setObject:productPageDictionary forKey:@"sidePackData"];
  }

  v9 = objc_alloc_init(NSMutableDictionary);
  v10 = v9;
  if (self->_productParameters)
  {
    [v9 addEntriesFromDictionary:?];
  }

  productURL = self->_productURL;
  if (productURL)
  {
    absoluteString = [(NSURL *)productURL absoluteString];
    v13 = kOptionKeyURL;
    [v10 setObject:absoluteString forKey:kOptionKeyURL];
    [v3 setObject:absoluteString forKey:v13];
  }

  productPageStyle = self->_productPageStyle;
  if (productPageStyle == 3)
  {
    v15 = @"ipad";
  }

  else
  {
    if (productPageStyle != 2)
    {
      goto LABEL_18;
    }

    v15 = @"iphone";
  }

  [v10 setObject:v15 forKey:@"style"];
LABEL_18:
  if (self->_cancelButtonTitle)
  {
    v16 = [[NSDictionary alloc] initWithObjectsAndKeys:{self->_cancelButtonTitle, @"title", @"cancel", @"type", 0}];
    [v10 setObject:v16 forKey:@"cancelButton"];
  }

  if (self->_rightButtonTitle && self->_showsRightButton)
  {
    v17 = [[NSDictionary alloc] initWithObjectsAndKeys:{self->_rightButtonTitle, @"title", @"right", @"type", 0}];
    [v10 setObject:v17 forKey:@"okButton"];
  }

  if (self->_showsStoreButton)
  {
    v18 = [NSNumber numberWithBool:1];
    [v10 setObject:v18 forKey:@"showsStoreButton"];
  }

  [v3 setObject:v10 forKey:@"storeSheet"];

  return v3;
}

@end