@interface GEOComposedGeometryRoutePersistentData
- (MapDataSubscriptionInfo)_maps_existingOfflineSubscription;
- (id)addressString;
- (id)addressStringWithAttributes:(id)attributes;
- (id)distanceAndElevationDescriptionStringWithAttributes:(id)attributes;
- (id)distanceAndElevationString;
- (id)distanceStringWithAttributes:(id)attributes;
- (id)titleString;
- (void)prepareForSaving;
@end

@implementation GEOComposedGeometryRoutePersistentData

- (MapDataSubscriptionInfo)_maps_existingOfflineSubscription
{
  boundingMapRegion = [(GEOComposedGeometryRoutePersistentData *)self boundingMapRegion];
  v3 = [GEOMapRegion _maps_offlineCoverageRegionForRouteBounds:boundingMapRegion];

  if (v3)
  {
    v4 = +[MapsOfflineUIHelper sharedHelper];
    v5 = [v4 subscriptionInfoForRegion:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)prepareForSaving
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  anchorPoints = [(GEOComposedGeometryRoutePersistentData *)self anchorPoints];
  v3 = [anchorPoints countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(anchorPoints);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        if ([v7 isCurrentLocation])
        {
          [v7 setIsCurrentLocation:0];
        }
      }

      v4 = [anchorPoints countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (id)distanceStringWithAttributes:(id)attributes
{
  attributesCopy = attributes;
  [(GEOComposedGeometryRoutePersistentData *)self distance];
  v5 = sub_100C86B78(attributesCopy);

  return v5;
}

- (id)distanceAndElevationDescriptionStringWithAttributes:(id)attributes
{
  attributesCopy = attributes;
  [(GEOComposedGeometryRoutePersistentData *)self distance];
  elevationProfile = [(GEOComposedGeometryRoutePersistentData *)self elevationProfile];
  v6 = sub_100C86C80(elevationProfile, attributesCopy);

  return v6;
}

- (id)addressStringWithAttributes:(id)attributes
{
  attributesCopy = attributes;
  if ([(GEOComposedGeometryRoutePersistentData *)self isAvailableForCurrentCountry])
  {
    address = [(GEOComposedGeometryRoutePersistentData *)self address];
    if (address)
    {
      v6 = attributesCopy;
      v7 = [address cityAndAboveNoCurrentCountryWithFallback:1];
      v8 = v7;
      if (v7)
      {
        name = v7;
      }

      else
      {
        name = [address name];
      }

      v11 = name;

      v10 = [[NSAttributedString alloc] initWithString:v11 attributes:v6];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)distanceAndElevationString
{
  [(GEOComposedGeometryRoutePersistentData *)self distance];
  elevationProfile = [(GEOComposedGeometryRoutePersistentData *)self elevationProfile];
  v4 = sub_100C86990(elevationProfile);

  return v4;
}

- (id)addressString
{
  if ([(GEOComposedGeometryRoutePersistentData *)self isAvailableForCurrentCountry])
  {
    address = [(GEOComposedGeometryRoutePersistentData *)self address];
    v4 = [address cityAndAboveNoCurrentCountryWithFallback:1];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      address2 = [(GEOComposedGeometryRoutePersistentData *)self address];
      name = [address2 name];
      v9 = name;
      v10 = &stru_1016631F0;
      if (name)
      {
        v10 = name;
      }

      v6 = v10;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)titleString
{
  userProvidedName = [(GEOComposedGeometryRoutePersistentData *)self userProvidedName];
  if ([userProvidedName length])
  {
    userProvidedName2 = [(GEOComposedGeometryRoutePersistentData *)self userProvidedName];
  }

  else
  {
    routeName = [(GEOComposedGeometryRoutePersistentData *)self routeName];
    v6 = routeName;
    v7 = &stru_1016631F0;
    if (routeName)
    {
      v7 = routeName;
    }

    userProvidedName2 = v7;
  }

  return userProvidedName2;
}

@end