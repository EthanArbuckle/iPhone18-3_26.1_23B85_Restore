@interface PersonalizedMapItemKey
- (BOOL)isEqual:(id)equal;
- (PersonalizedMapItemKey)initWithGeoMapItem:(id)item;
- (PersonalizedMapItemKey)initWithGeoMapItem:(id)item disambiguationRadiusMeters:(float)meters;
- (PersonalizedMapItemKey)initWithMapItem:(id)item;
- (PersonalizedMapItemKey)initWithMapItem:(id)item disambiguationRadiusMeters:(float)meters;
@end

@implementation PersonalizedMapItemKey

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    LOBYTE(v21) = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        geoMapItem5 = v5;
        geoMapItem = [(PersonalizedMapItemKey *)self geoMapItem];
        _clientAttributes = [geoMapItem _clientAttributes];
        mapsSyncAttributes = [_clientAttributes mapsSyncAttributes];
        mapsSyncIdentifier = [mapsSyncAttributes mapsSyncIdentifier];

        geoMapItem2 = [(PersonalizedMapItemKey *)self geoMapItem];
        v12 = geoMapItem2;
        if (mapsSyncIdentifier)
        {
          _clientAttributes2 = [geoMapItem2 _clientAttributes];
          mapsSyncAttributes2 = [_clientAttributes2 mapsSyncAttributes];
          mapsSyncIdentifier2 = [mapsSyncAttributes2 mapsSyncIdentifier];
          geoMapItem3 = [(PersonalizedMapItemKey *)geoMapItem5 geoMapItem];
          _clientAttributes3 = [geoMapItem3 _clientAttributes];
          mapsSyncAttributes3 = [_clientAttributes3 mapsSyncAttributes];
          [mapsSyncAttributes3 mapsSyncIdentifier];
          v18 = geoMapItem5;
          v20 = v19 = v12;
          LOBYTE(v21) = [mapsSyncIdentifier2 isEqualToString:v20];

          v12 = v19;
          geoMapItem5 = v18;
          v22 = _clientAttributes2;

LABEL_24:
LABEL_25:

          goto LABEL_26;
        }

        geoMapItem4 = [(PersonalizedMapItemKey *)geoMapItem5 geoMapItem];
        v22 = geoMapItem4;
        LOBYTE(v21) = 0;
        if (!v12 || !geoMapItem4)
        {
          goto LABEL_24;
        }

        if ([(PersonalizedMapItemKey *)self hasDisambiguationRadiusMeters]&& [(PersonalizedMapItemKey *)geoMapItem5 hasDisambiguationRadiusMeters])
        {
          [(PersonalizedMapItemKey *)self disambiguationRadiusMeters];
          [(PersonalizedMapItemKey *)geoMapItem5 disambiguationRadiusMeters];
        }

        else
        {
          if ([(PersonalizedMapItemKey *)self hasDisambiguationRadiusMeters])
          {
            selfCopy = self;
          }

          else
          {
            if (![(PersonalizedMapItemKey *)geoMapItem5 hasDisambiguationRadiusMeters])
            {
              goto LABEL_23;
            }

            selfCopy = geoMapItem5;
          }

          [(PersonalizedMapItemKey *)selfCopy disambiguationRadiusMeters];
        }

LABEL_23:
        LOBYTE(v21) = GEOMapItemIsEqualToMapItemForPurposeWithinDistance();
        goto LABEL_24;
      }

      if ([(PersonalizedMapItemKey *)v5 conformsToProtocol:&OBJC_PROTOCOL___PersonalizedItemKeyWithGEOMapItem])
      {
        geoMapItem5 = [(PersonalizedMapItemKey *)v5 geoMapItem];
        if (geoMapItem5 && ([(PersonalizedMapItemKey *)self geoMapItem], v23 = objc_claimAutoreleasedReturnValue(), v23, v23))
        {
          geoMapItem6 = [(PersonalizedMapItemKey *)self geoMapItem];
          IsEqualToMapItemForPurposeWithinDistance = GEOMapItemIsEqualToMapItemForPurposeWithinDistance();

          v21 = IsEqualToMapItemForPurposeWithinDistance << 31 >> 31;
        }

        else
        {
          LOBYTE(v21) = 0;
        }

        goto LABEL_25;
      }
    }

    LOBYTE(v21) = 0;
  }

LABEL_26:

  return v21 & 1;
}

- (PersonalizedMapItemKey)initWithMapItem:(id)item disambiguationRadiusMeters:(float)meters
{
  _geoMapItem = [item _geoMapItem];
  *&v7 = meters;
  v8 = [(PersonalizedMapItemKey *)self initWithGeoMapItem:_geoMapItem disambiguationRadiusMeters:v7];

  return v8;
}

- (PersonalizedMapItemKey)initWithMapItem:(id)item
{
  _geoMapItem = [item _geoMapItem];
  v5 = [(PersonalizedMapItemKey *)self initWithGeoMapItem:_geoMapItem];

  return v5;
}

- (PersonalizedMapItemKey)initWithGeoMapItem:(id)item disambiguationRadiusMeters:(float)meters
{
  result = [(PersonalizedMapItemKey *)self initWithGeoMapItem:item];
  if (result)
  {
    result->_hasDisambiguationRadiusMeters = 1;
    result->_disambiguationRadiusMeters = meters;
  }

  return result;
}

- (PersonalizedMapItemKey)initWithGeoMapItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = PersonalizedMapItemKey;
  v6 = [(PersonalizedMapItemKey *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_geoMapItem, item);
    v7->_hash = GEOMapItemHashForPurpose();
  }

  return v7;
}

@end