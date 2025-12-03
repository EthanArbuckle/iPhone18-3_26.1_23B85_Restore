@interface SafariExtensionPermissionsExplanation
- (NSArray)specifiers;
- (SafariExtensionPermissionsExplanation)initWithContentBlocker:(id)blocker withDisplayName:(id)name;
- (SafariExtensionPermissionsExplanation)initWithExtension:(id)extension;
- (id)title;
@end

@implementation SafariExtensionPermissionsExplanation

- (SafariExtensionPermissionsExplanation)initWithExtension:(id)extension
{
  extensionCopy = extension;
  userVisiblePermissions = [extensionCopy userVisiblePermissions];
  if (userVisiblePermissions && (v26.receiver = self, v26.super_class = SafariExtensionPermissionsExplanation, (self = [(SafariExtensionPermissionsExplanation *)&v26 init]) != 0))
  {
    v6 = objc_alloc_init(NSMutableArray);
    displayName = [extensionCopy displayName];
    objc_storeStrong(&self->_extensionName, displayName);
    composedIdentifier = [extensionCopy composedIdentifier];
    composedIdentifier = self->_composedIdentifier;
    self->_composedIdentifier = composedIdentifier;

    v10 = [userVisiblePermissions safari_stringForKey:@"Level"];
    if ([v10 isEqualToString:WBSExtensionPermissionDiscreteAccessLevelKey])
    {
      self->_titleType = 2;
      v11 = [userVisiblePermissions objectForKeyedSubscript:@"Configured Sites"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v13 = &__NSArray0__struct;
      if (isKindOfClass)
      {
        v13 = v11;
      }

      v14 = v13;
      v15 = [v11 isEqual:@"All"];
      v16 = [userVisiblePermissions safari_BOOLForKey:@"Requested Current Site"];
      if ([userVisiblePermissions safari_BOOLForKey:@"Has Injected Content"])
      {
        v17 = [SafariWebExtensionPermissionsExplanationSection alloc];
        v18 = 0;
      }

      else
      {
        v25 = v14;
        v20 = [userVisiblePermissions safari_BOOLForKey:@"Requests Tracking"];
        v17 = [SafariWebExtensionPermissionsExplanationSection alloc];
        if (v20)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        v14 = v25;
      }

      v21 = [(SafariWebExtensionPermissionsExplanationSection *)v17 initWithType:v18 sites:v14 allowedOnAllSites:v15 includesCurrentTab:v16 extensionName:displayName];
      [v6 addObject:v21];
    }

    else if ([v10 isEqualToString:@"NoneForContentBlocker"])
    {
      self->_titleType = 1;
    }

    else
    {
      self->_titleType = 0;
    }

    v22 = [v6 copy];
    sections = self->_sections;
    self->_sections = v22;

    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (SafariExtensionPermissionsExplanation)initWithContentBlocker:(id)blocker withDisplayName:(id)name
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = SafariExtensionPermissionsExplanation;
  v7 = [(SafariExtensionPermissionsExplanation *)&v11 init];
  v8 = v7;
  if (v7)
  {
    v7->_titleType = 1;
    objc_storeStrong(&v7->_extensionName, name);
    v9 = v8;
  }

  return v8;
}

- (id)title
{
  titleType = self->_titleType;
  if (!titleType)
  {
    v4 = @"Web extension permissions title - no permissions";
    goto LABEL_5;
  }

  if (titleType == 1)
  {
    v4 = @"Web extension permissions title - no permissions to read or transmit content";
LABEL_5:
    v5 = SafariSettingsLocalizedString(v4, @"Extensions");
    v6 = [NSString stringWithFormat:v5, self->_extensionName];

    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (NSArray)specifiers
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [PSSpecifier groupSpecifierWithID:@"PERMISSIONS_LIST"];
  v37 = v3;
  [v3 addObject:v4];
  v5 = SafariSettingsLocalizedString(@"Web extension permissions title - permissions", @"Extensions");
  v6 = [NSString stringWithFormat:v5, self->_extensionName];
  [v4 setName:v6];

  if (self->_composedIdentifier)
  {
    v7 = +[WBSManagedExtensionsController sharedController];
    v8 = [v7 anyDomainIsManagedForComposedIdentifier:self->_composedIdentifier];

    if (v8)
    {
      v9 = _WBSLocalizedString();
      [v4 setProperty:v9 forKey:PSFooterTextGroupKey];
    }
  }

  v34 = v4;
  if (self->_titleType <= 1uLL)
  {
    v10 = [PSSpecifier preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:-1 edit:0];
    v50 = @"subtitle";
    title = [(SafariExtensionPermissionsExplanation *)self title];
    v51 = title;
    v12 = [NSDictionary dictionaryWithObjects:&v51 forKeys:&v50 count:1];
    [v10 setUserInfo:v12];

    [v10 setProperty:objc_opt_class() forKey:PSCellClassKey];
    [v3 addObject:v10];
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = self->_sections;
  v13 = [(NSArray *)obj countByEnumeratingWithState:&v42 objects:v49 count:16];
  if (v13)
  {
    v14 = v13;
    v36 = *v43;
    v15 = PSCellClassKey;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v43 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v42 + 1) + 8 * i);
        title2 = [v17 title];
        v19 = [NSMutableString alloc];
        subtitle = [v17 subtitle];
        v21 = [v19 initWithString:subtitle];

        sites = [v17 sites];
        v23 = [sites count];
        if ([v17 includesCurrentTab])
        {
          v24 = 1;
        }

        else
        {
          v24 = 2;
        }

        if (v23 >= v24)
        {
          if ([v17 includesCurrentTab])
          {
            v25 = SafariSettingsLocalizedString(@"Current tab description in list of websites", @"Extensions");
            [v21 appendFormat:@"\n • %@", v25];
          }

          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          sites2 = [v17 sites];
          v27 = [sites2 countByEnumeratingWithState:&v38 objects:v48 count:16];
          if (v27)
          {
            v28 = v27;
            v29 = *v39;
            do
            {
              for (j = 0; j != v28; j = j + 1)
              {
                if (*v39 != v29)
                {
                  objc_enumerationMutation(sites2);
                }

                [v21 appendFormat:@"\n • %@", *(*(&v38 + 1) + 8 * j)];
              }

              v28 = [sites2 countByEnumeratingWithState:&v38 objects:v48 count:16];
            }

            while (v28);
          }
        }

        v31 = [PSSpecifier preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:-1 edit:0];
        v46[0] = @"title";
        v46[1] = @"subtitle";
        v47[0] = title2;
        v47[1] = v21;
        v46[2] = @"subtitleNumberOfLines";
        v47[2] = &off_90AA8;
        v32 = [NSDictionary dictionaryWithObjects:v47 forKeys:v46 count:3];
        [v31 setUserInfo:v32];

        [v31 setProperty:objc_opt_class() forKey:v15];
        [v37 addObject:v31];
      }

      v14 = [(NSArray *)obj countByEnumeratingWithState:&v42 objects:v49 count:16];
    }

    while (v14);
  }

  return v37;
}

@end