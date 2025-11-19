@interface PersonalizedMapItemKey
- (BOOL)isEqual:(id)a3;
- (PersonalizedMapItemKey)initWithGeoMapItem:(id)a3;
- (PersonalizedMapItemKey)initWithGeoMapItem:(id)a3 disambiguationRadiusMeters:(float)a4;
- (PersonalizedMapItemKey)initWithMapItem:(id)a3;
- (PersonalizedMapItemKey)initWithMapItem:(id)a3 disambiguationRadiusMeters:(float)a4;
@end

@implementation PersonalizedMapItemKey

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    LOBYTE(v21) = 1;
  }

  else
  {
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        v7 = [(PersonalizedMapItemKey *)self geoMapItem];
        v8 = [v7 _clientAttributes];
        v9 = [v8 mapsSyncAttributes];
        v10 = [v9 mapsSyncIdentifier];

        v11 = [(PersonalizedMapItemKey *)self geoMapItem];
        v12 = v11;
        if (v10)
        {
          v13 = [v11 _clientAttributes];
          v29 = [v13 mapsSyncAttributes];
          v14 = [v29 mapsSyncIdentifier];
          v15 = [(PersonalizedMapItemKey *)v6 geoMapItem];
          v16 = [v15 _clientAttributes];
          v17 = [v16 mapsSyncAttributes];
          [v17 mapsSyncIdentifier];
          v18 = v6;
          v20 = v19 = v12;
          LOBYTE(v21) = [v14 isEqualToString:v20];

          v12 = v19;
          v6 = v18;
          v22 = v13;

LABEL_24:
LABEL_25:

          goto LABEL_26;
        }

        v26 = [(PersonalizedMapItemKey *)v6 geoMapItem];
        v22 = v26;
        LOBYTE(v21) = 0;
        if (!v12 || !v26)
        {
          goto LABEL_24;
        }

        if ([(PersonalizedMapItemKey *)self hasDisambiguationRadiusMeters]&& [(PersonalizedMapItemKey *)v6 hasDisambiguationRadiusMeters])
        {
          [(PersonalizedMapItemKey *)self disambiguationRadiusMeters];
          [(PersonalizedMapItemKey *)v6 disambiguationRadiusMeters];
        }

        else
        {
          if ([(PersonalizedMapItemKey *)self hasDisambiguationRadiusMeters])
          {
            v27 = self;
          }

          else
          {
            if (![(PersonalizedMapItemKey *)v6 hasDisambiguationRadiusMeters])
            {
              goto LABEL_23;
            }

            v27 = v6;
          }

          [(PersonalizedMapItemKey *)v27 disambiguationRadiusMeters];
        }

LABEL_23:
        LOBYTE(v21) = GEOMapItemIsEqualToMapItemForPurposeWithinDistance();
        goto LABEL_24;
      }

      if ([(PersonalizedMapItemKey *)v5 conformsToProtocol:&OBJC_PROTOCOL___PersonalizedItemKeyWithGEOMapItem])
      {
        v6 = [(PersonalizedMapItemKey *)v5 geoMapItem];
        if (v6 && ([(PersonalizedMapItemKey *)self geoMapItem], v23 = objc_claimAutoreleasedReturnValue(), v23, v23))
        {
          v24 = [(PersonalizedMapItemKey *)self geoMapItem];
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

- (PersonalizedMapItemKey)initWithMapItem:(id)a3 disambiguationRadiusMeters:(float)a4
{
  v6 = [a3 _geoMapItem];
  *&v7 = a4;
  v8 = [(PersonalizedMapItemKey *)self initWithGeoMapItem:v6 disambiguationRadiusMeters:v7];

  return v8;
}

- (PersonalizedMapItemKey)initWithMapItem:(id)a3
{
  v4 = [a3 _geoMapItem];
  v5 = [(PersonalizedMapItemKey *)self initWithGeoMapItem:v4];

  return v5;
}

- (PersonalizedMapItemKey)initWithGeoMapItem:(id)a3 disambiguationRadiusMeters:(float)a4
{
  result = [(PersonalizedMapItemKey *)self initWithGeoMapItem:a3];
  if (result)
  {
    result->_hasDisambiguationRadiusMeters = 1;
    result->_disambiguationRadiusMeters = a4;
  }

  return result;
}

- (PersonalizedMapItemKey)initWithGeoMapItem:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PersonalizedMapItemKey;
  v6 = [(PersonalizedMapItemKey *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_geoMapItem, a3);
    v7->_hash = GEOMapItemHashForPurpose();
  }

  return v7;
}

@end