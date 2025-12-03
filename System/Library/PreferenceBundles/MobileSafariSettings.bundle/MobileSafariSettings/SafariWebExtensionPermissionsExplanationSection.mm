@interface SafariWebExtensionPermissionsExplanationSection
- (SafariWebExtensionPermissionsExplanationSection)initWithType:(int64_t)type sites:(id)sites allowedOnAllSites:(BOOL)allSites includesCurrentTab:(BOOL)tab extensionName:(id)name;
- (id)subtitle;
- (id)title;
@end

@implementation SafariWebExtensionPermissionsExplanationSection

- (SafariWebExtensionPermissionsExplanationSection)initWithType:(int64_t)type sites:(id)sites allowedOnAllSites:(BOOL)allSites includesCurrentTab:(BOOL)tab extensionName:(id)name
{
  sitesCopy = sites;
  nameCopy = name;
  v22.receiver = self;
  v22.super_class = SafariWebExtensionPermissionsExplanationSection;
  v14 = [(SafariWebExtensionPermissionsExplanationSection *)&v22 init];
  v15 = v14;
  if (v14)
  {
    v14->_type = type;
    v16 = [sitesCopy copy];
    sites = v15->_sites;
    v15->_sites = v16;

    v15->_appliesToAllSites = allSites;
    v15->_includesCurrentTab = tab;
    v18 = [nameCopy copy];
    extensionName = v15->_extensionName;
    v15->_extensionName = v18;

    v20 = v15;
  }

  return v15;
}

- (id)title
{
  type = self->_type;
  switch(type)
  {
    case 2:
      appliesToAllSites = self->_appliesToAllSites;
      v5 = @"Explanation section title - Browsing History";
      v6 = @"Web extension permission description - Browsing History (all sites)";
      goto LABEL_7;
    case 1:
      appliesToAllSites = self->_appliesToAllSites;
      v5 = @"Browsing History and Tracking Information";
      v6 = @"Warning title - Browsing History and Tracking Information (all sites)";
      goto LABEL_7;
    case 0:
      appliesToAllSites = self->_appliesToAllSites;
      v5 = @"Explanation section title - Webpage Contents and Browsing History";
      v6 = @"Warning title for extension that has permissions on all websites";
LABEL_7:
      if (appliesToAllSites)
      {
        v7 = v6;
      }

      else
      {
        v7 = v5;
      }

      v8 = SafariSettingsLocalizedString(v7, @"Extensions");

      return v8;
  }

  v8 = 0;

  return v8;
}

- (id)subtitle
{
  type = self->_type;
  if (type == 2)
  {
    if (self->_appliesToAllSites)
    {
      v5 = &stru_8BB60;
      goto LABEL_36;
    }

    if (self->_includesCurrentTab || [(NSArray *)self->_sites count])
    {
      v8 = [(NSArray *)self->_sites count];
      v9 = 1;
      if (!self->_includesCurrentTab)
      {
        v9 = 2;
      }

      if (v8 >= v9)
      {
        v4 = @"Web extension permission description - Browsing History (access to multiple sites)";
        goto LABEL_35;
      }

      if (self->_includesCurrentTab)
      {
        v4 = @"Web extension permission description - Browsing History (only on current tab)";
        goto LABEL_35;
      }

      v13 = @"Web extension permission description - Browsing History (access to one website)";
      goto LABEL_42;
    }

    v16 = @"Web extension permission description - Browsing History (no access granted yet)";
  }

  else if (type == 1)
  {
    if (self->_appliesToAllSites)
    {
      v4 = @"Warning subtitle - Browsing History and Tracking Information (all sites)";
      goto LABEL_35;
    }

    if (self->_includesCurrentTab || [(NSArray *)self->_sites count])
    {
      v6 = [(NSArray *)self->_sites count];
      v7 = 1;
      if (!self->_includesCurrentTab)
      {
        v7 = 2;
      }

      if (v6 >= v7)
      {
        v4 = @"Web extension permission description - Browsing History and Tracking Information (access to multiple sites)";
        goto LABEL_35;
      }

      if (self->_includesCurrentTab)
      {
        v4 = @"Web extension permission description - Browsing History and Tracking Information (only on current tab)";
        goto LABEL_35;
      }

      v13 = @"Web extension permission description - Browsing History and Tracking Information (access to one website)";
      goto LABEL_42;
    }

    v16 = @"Web extension permission description - Browsing History and Tracking Information (no access granted yet)";
  }

  else
  {
    if (type)
    {
      v5 = 0;
      goto LABEL_36;
    }

    if (self->_appliesToAllSites)
    {
      v4 = @"Warning subtitle for extension that has permissions on all websites";
LABEL_35:
      v5 = SafariSettingsLocalizedString(v4, @"Extensions");
      goto LABEL_36;
    }

    if (self->_includesCurrentTab || [(NSArray *)self->_sites count])
    {
      v10 = [(NSArray *)self->_sites count];
      v11 = 1;
      if (!self->_includesCurrentTab)
      {
        v11 = 2;
      }

      if (v10 >= v11)
      {
        v4 = @"Web extension permission description - webpage contents and browsing history (access to multiple sites)";
        goto LABEL_35;
      }

      if (self->_includesCurrentTab)
      {
        v4 = @"Web extension permission description - webpage contents and browsing history (only on current tab)";
        goto LABEL_35;
      }

      v13 = @"Web extension permission description - webpage contents and browsing history (access to one website)";
LABEL_42:
      v14 = SafariSettingsLocalizedString(v13, @"Extensions");
      v15 = [(NSArray *)self->_sites objectAtIndexedSubscript:0];
      v5 = [NSString stringWithFormat:v14, v15];

      goto LABEL_36;
    }

    v16 = @"Web extension permission description - webpage contents and browsing history (no access granted yet)";
  }

  v17 = SafariSettingsLocalizedString(v16, @"Extensions");
  v18 = [NSString stringWithFormat:v17, self->_extensionName];

  v19 = SafariSettingsLocalizedString(@"Web extension permission description (no access granted yet)", @"Extensions");
  v5 = [v18 stringByAppendingFormat:@"\n\n%@", v19];

LABEL_36:

  return v5;
}

@end