@interface SafariHideInternetAddressSettingsController
+ (id)_hideInternetAddressOptionList;
+ (unint64_t)_hideInternetAddressIndexForState:(unint64_t)state;
+ (unint64_t)_hideInternetAddressStateForIndex:(unint64_t)index;
- (id)specifiers;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
@end

@implementation SafariHideInternetAddressSettingsController

+ (id)_hideInternetAddressOptionList
{
  v2 = objc_opt_new();
  v3 = +[SafariSettingsController privacyProxyAvailabilityManager];
  isPrivacyProxyOnInICloudSettings = [v3 isPrivacyProxyOnInICloudSettings];

  if (isPrivacyProxyOnInICloudSettings)
  {
    v5 = SafariSettingsLocalizedString(@"Hide Internet Address Trackers and Websites List Item Title", @"Safari");
    [v2 addObject:v5];

    v6 = @"Hide Internet Address Trackers List Item Title";
  }

  else
  {
    v6 = @"Hide Internet Address From Trackers List Item Title";
  }

  v7 = SafariSettingsLocalizedString(v6, @"Safari");
  [v2 addObject:v7];

  v8 = SafariSettingsLocalizedString(@"Hide Internet Address Off Item Title", @"Safari");
  [v2 addObject:v8];

  return v2;
}

+ (unint64_t)_hideInternetAddressIndexForState:(unint64_t)state
{
  v4 = +[SafariSettingsController privacyProxyAvailabilityManager];
  isPrivacyProxyOnInICloudSettings = [v4 isPrivacyProxyOnInICloudSettings];

  v6 = state == 1;
  if (!state)
  {
    v6 = 2;
  }

  if (isPrivacyProxyOnInICloudSettings)
  {
    return v6;
  }

  else
  {
    return state == 0;
  }
}

+ (unint64_t)_hideInternetAddressStateForIndex:(unint64_t)index
{
  v4 = +[SafariSettingsController privacyProxyAvailabilityManager];
  isPrivacyProxyOnInICloudSettings = [v4 isPrivacyProxyOnInICloudSettings];

  v6 = 2 - index;
  if (index >= 3)
  {
    v6 = 0;
  }

  if (isPrivacyProxyOnInICloudSettings)
  {
    return v6;
  }

  else
  {
    return index == 0;
  }
}

- (id)specifiers
{
  v2 = OBJC_IVAR___PSListController__specifiers;
  v3 = *&self->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v6 = objc_alloc_init(NSMutableArray);
    _hideInternetAddressOptionList = [objc_opt_class() _hideInternetAddressOptionList];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = __57__SafariHideInternetAddressSettingsController_specifiers__block_invoke;
    v30[3] = &unk_8A430;
    v30[4] = self;
    v8 = [_hideInternetAddressOptionList safari_mapObjectsUsingBlock:v30];
    [v6 addObjectsFromArray:v8];

    v9 = SafariSettingsLocalizedString(@"Hide Internet Address Learn More", @"Safari");
    v10 = +[SafariSettingsController privacyProxyAvailabilityManager];
    isPrivacyProxyOnInICloudSettings = [v10 isPrivacyProxyOnInICloudSettings];

    if (isPrivacyProxyOnInICloudSettings)
    {
      v12 = @"Hide Internet Address Paid Tier Footer Text";
    }

    else
    {
      v12 = @"Hide Internet Address Free Tier Footer Text";
    }

    v13 = SafariSettingsLocalizedString(v12, @"Safari");
    v14 = [v13 stringByReplacingOccurrencesOfString:@"{learn-more-link}" withString:v9];

    v15 = [v14 rangeOfString:v9];
    v17 = v16;
    v18 = [PSSpecifier groupSpecifierWithID:@"HideInternetAddressFooterGroupSpecifier"];
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    [v18 setProperty:v20 forKey:PSFooterCellClassGroupKey];

    [v18 setProperty:v14 forKey:PSFooterHyperlinkViewTitleKey];
    v33.location = v15;
    v33.length = v17;
    v21 = NSStringFromRange(v33);
    [v18 setProperty:v21 forKey:PSFooterHyperlinkViewLinkRangeKey];

    v22 = [NSValue valueWithNonretainedObject:self];
    [v18 setProperty:v22 forKey:PSFooterHyperlinkViewTargetKey];

    [v18 setProperty:@"learnMore" forKey:PSFooterHyperlinkViewActionKey];
    [v6 insertObject:v18 atIndex:0];
    v23 = [v6 copy];
    v24 = *&self->super.PSListController_opaque[v2];
    *&self->super.PSListController_opaque[v2] = v23;

    v31[0] = 0;
    v25 = objc_opt_class();
    v26 = +[SafariSettingsController privacyProxyAvailabilityManager];
    v31[1] = [v25 _hideInternetAddressIndexForState:{objc_msgSend(v26, "state")}];

    v27 = [NSIndexPath indexPathWithIndexes:v31 length:2];
    currentCheckmarkIndexPath = self->_currentCheckmarkIndexPath;
    self->_currentCheckmarkIndexPath = v27;

    v4 = *&self->super.PSListController_opaque[v2];
  }

  return v4;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  currentCheckmarkIndexPath = self->_currentCheckmarkIndexPath;
  cellCopy = cell;
  if ([(NSIndexPath *)currentCheckmarkIndexPath isEqual:path])
  {
    v7 = 3;
  }

  else
  {
    v7 = 0;
  }

  [cellCopy setAccessoryType:v7];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  [viewCopy deselectRowAtIndexPath:pathCopy animated:0];
  if (([(NSIndexPath *)self->_currentCheckmarkIndexPath isEqual:pathCopy]& 1) == 0)
  {
    v8 = [viewCopy cellForRowAtIndexPath:self->_currentCheckmarkIndexPath];
    [v8 setAccessoryType:0];

    v9 = [viewCopy cellForRowAtIndexPath:pathCopy];
    [v9 setAccessoryType:3];

    v10 = [objc_opt_class() _hideInternetAddressStateForIndex:{objc_msgSend(pathCopy, "indexAtPosition:", 1)}];
    v11 = +[SafariSettingsController privacyProxyAvailabilityManager];
    state = [v11 state];

    if (state != v10)
    {
      objc_storeStrong(&self->_currentCheckmarkIndexPath, path);
      v13 = +[SafariSettingsController privacyProxyAvailabilityManager];
      [v13 setPrivacyProxyState:v10 completionHandler:0];
    }

    v14.receiver = self;
    v14.super_class = SafariHideInternetAddressSettingsController;
    [(SafariSettingsListController *)&v14 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  }
}

@end