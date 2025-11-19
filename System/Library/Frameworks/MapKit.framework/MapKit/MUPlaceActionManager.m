@interface MUPlaceActionManager
- (BOOL)_showWebsite;
- (id)createFooterActions;
- (id)createMenuActions;
- (void)_addAddressFooterActions:(id)a3;
- (void)_addBasicFooterActions:(id)a3;
- (void)_addDeveloperPlaceCardFooterActions:(id)a3;
- (void)_addDroppedPinFooterActions:(id)a3;
- (void)_addHomeActionIfNeeded:(id)a3;
- (void)_addItemIfInMapsApp:(id)a3 actions:(id)a4;
- (void)_addMyLocationFooterActions:(id)a3;
- (void)_addReportAProblemActionIfNeed:(id)a3;
@end

@implementation MUPlaceActionManager

- (BOOL)_showWebsite
{
  v3 = [(MKPlaceActionManager *)self contact];
  v4 = [v3 urlAddresses];
  if ([v4 count])
  {
    v5 = [(MKPlaceActionManager *)self placeItem];
    v6 = ([v5 options] & 8) == 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_addHomeActionIfNeeded:(id)a3
{
  v5 = a3;
  if ([(MKPlaceActionManager *)self _showHomeShortcutItem])
  {
    v4 = [(MKPlaceActionManager *)self homeActionItem];
    [v5 addObject:v4];
  }
}

- (void)_addReportAProblemActionIfNeed:(id)a3
{
  v8 = a3;
  v4 = [MEMORY[0x1E69A1CD8] sharedConfiguration];
  v5 = [v4 countryCode];
  v6 = [v5 isEqualToString:@"KR"];

  if (!v6 || ([(MKPlaceActionManager *)self options]& 0x80000) == 0 && ([(MKPlaceActionManager *)self options]& 0x40000) == 0)
  {
    v7 = [(MKPlaceActionManager *)self reportAProblemFooterAction];
    [v8 addObject:v7];
  }
}

- (void)_addAddressFooterActions:(id)a3
{
  v5 = a3;
  v4 = [(MKPlaceActionManager *)self reportAProblemAddPlaceFooterAction];
  [(MUPlaceActionManager *)self _addItemIfInMapsApp:v4 actions:v5];

  [(MUPlaceActionManager *)self _addReportAProblemActionIfNeed:v5];
  [(MUPlaceActionManager *)self _addHomeActionIfNeeded:v5];
}

- (void)_addMyLocationFooterActions:(id)a3
{
  v4 = a3;
  if (([(MKPlaceActionManager *)self options]& 0x20000000) != 0)
  {
    [(MKPlaceActionManager *)self reportAProblemAddPlaceFooterAction];
  }

  else
  {
    [(MKPlaceActionManager *)self reportAProblemFooterAction];
  }
  v5 = ;
  [v4 addObject:v5];
}

- (void)_addDroppedPinFooterActions:(id)a3
{
  v4 = a3;
  v5 = [(MKPlaceActionManager *)self reportAProblemAddPlaceFooterAction];
  [(MUPlaceActionManager *)self _addItemIfInMapsApp:v5 actions:v4];

  [(MUPlaceActionManager *)self _addHomeActionIfNeeded:v4];
  v6 = [(MKPlaceActionManager *)self removeMarkerItem];
  [v4 addObject:v6];
}

- (void)_addDeveloperPlaceCardFooterActions:(id)a3
{
  v4 = a3;
  v5 = [(MKPlaceActionManager *)self developerPlaceCardGetDirectionsFooterAction];
  [v4 addObject:v5];

  v6 = [(MKPlaceActionManager *)self developerPlaceCardOpenInMapsFooterAction];
  [v4 addObject:v6];
}

- (void)_addBasicFooterActions:(id)a3
{
  v6 = a3;
  if ([(MKPlaceActionManager *)self _showReportAProblemFooterAction])
  {
    v4 = [(MKPlaceActionManager *)self reportAProblemFooterAction];
    [v6 addObject:v4];
  }

  [(MUPlaceActionManager *)self _addHomeActionIfNeeded:v6];
  if ([(MKPlaceActionManager *)self _canShowClaimThisBusiness])
  {
    v5 = [(MKPlaceActionManager *)self claimBusinessActionItem];
    [v6 addObject:v5];
  }
}

- (id)createMenuActions
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(MKPlaceActionManager *)self flyoverActionItem];
  if (v4)
  {
    [v3 addObject:v4];
  }

  v5 = [(MKPlaceActionManager *)self dataProvider];
  v6 = [v5 supportsAddingPhotos];

  if (v6)
  {
    v7 = [MKPlaceCardActionItem actionItemWithType:9 actionDataProvider:self enabled:1];
    [v3 addObject:v7];
  }

  if (GEOSupportsOfflineMaps() && ([(MKPlaceActionManager *)self options]& 0x1000000000) == 0)
  {
    v8 = [MKPlaceCardActionItem actionItemWithType:34];
    [v3 addObject:v8];
  }

  v14.receiver = self;
  v14.super_class = MUPlaceActionManager;
  v9 = [(MKPlaceActionManager *)&v14 createRowActionsWithStyle:0];
  [v3 addObjectsFromArray:v9];

  v13.receiver = self;
  v13.super_class = MUPlaceActionManager;
  v10 = [(MKPlaceActionManager *)&v13 createFooterActions];
  [v3 addObjectsFromArray:v10];

  v11 = [v3 copy];

  return v11;
}

- (void)_addItemIfInMapsApp:(id)a3 actions:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (([(MKPlaceActionManager *)self options]& 0x20000000) != 0)
  {
    [v6 addObject:v7];
  }
}

- (id)createFooterActions
{
  v3 = [(MKPlaceActionManager *)self mapItem];
  v4 = [v3 _placeDisplayStyle];

  if (v4 == 2)
  {
    v5 = [(MKPlaceActionManager *)self shortPlacecardFooterActions];
    goto LABEL_14;
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = [(MKPlaceActionManager *)self options];
  v8 = [(MKPlaceActionManager *)self isCurrentLocation];
  v9 = [(MKPlaceActionManager *)self placeItem];
  v10 = [v9 options];

  v11 = [(MKPlaceActionManager *)self placeItem];
  v12 = [v11 mapItem];
  v13 = [v12 _isMapItemTypeAddress];

  if ((v7 & 0x8000000000) != 0)
  {
    [(MUPlaceActionManager *)self _addDeveloperPlaceCardFooterActions:v6];
  }

  else
  {
    if (v8)
    {
      [(MUPlaceActionManager *)self _addMyLocationFooterActions:v6];
LABEL_12:
      [(MKPlaceActionManager *)self _addInternalOnlyActions:v6];
      goto LABEL_13;
    }

    if ((v10 & 2) != 0)
    {
      [(MUPlaceActionManager *)self _addDroppedPinFooterActions:v6];
      goto LABEL_12;
    }

    if (!v13)
    {
      [(MUPlaceActionManager *)self _addBasicFooterActions:v6];
      goto LABEL_12;
    }

    [(MUPlaceActionManager *)self _addAddressFooterActions:v6];
  }

LABEL_13:
  v5 = [v6 copy];

LABEL_14:

  return v5;
}

@end