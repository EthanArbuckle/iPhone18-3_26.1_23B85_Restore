@interface MKAddressRepresentations
- (BOOL)isEqual:(id)a3;
- (MKAddressRepresentations)initWithGeoMapItem:(id)a3;
- (NSString)cityName;
- (NSString)cityWithContext;
- (NSString)regionName;
- (id)cityWithContextUsingStyle:(int64_t)a3;
- (id)description;
- (id)fullAddressIncludingRegion:(BOOL)a3 singleLine:(BOOL)a4;
@end

@implementation MKAddressRepresentations

- (id)description
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(MKAddressRepresentations *)self cityName];
  [v3 setObject:v4 forKeyedSubscript:@"cityName"];

  v5 = [(MKAddressRepresentations *)self cityWithContext];
  [v3 setObject:v5 forKeyedSubscript:@"cityWithContext"];

  v6 = [(MKAddressRepresentations *)self cityWithContextUsingStyle:2];
  [v3 setObject:v6 forKeyedSubscript:@"cityWithContextUsingStyle(.full)"];

  v7 = [(MKAddressRepresentations *)self regionName];
  [v3 setObject:v7 forKeyedSubscript:@"regionName"];

  v8 = [(MKAddressRepresentations *)self regionCode];
  [v3 setObject:v8 forKeyedSubscript:@"regionCode"];

  v9 = [(MKAddressRepresentations *)self fullAddressIncludingRegion:1 singleLine:1];
  [v3 setObject:v9 forKeyedSubscript:@"fullAddress"];

  v10 = MEMORY[0x1E696AEC0];
  v14.receiver = self;
  v14.super_class = MKAddressRepresentations;
  v11 = [(MKAddressRepresentations *)&v14 description];
  v12 = [v10 stringWithFormat:@"%@ %@", v11, v3];

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    geoMapItem = self->_geoMapItem;
    v6 = v4;
    v7 = [(GEOMapItem *)geoMapItem geoAddress];
    v8 = [v7 formattedAddressLines];

    v9 = [v6 _geoMapItem];

    v10 = [v9 geoAddress];
    v11 = [v10 formattedAddressLines];

    v12 = [v8 isEqual:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (NSString)regionName
{
  v2 = [(GEOMapItem *)self->_geoMapItem addressObject];
  v3 = [v2 countryName];

  return v3;
}

- (id)cityWithContextUsingStyle:(int64_t)a3
{
  if (a3 == 2)
  {
    v4 = [(GEOMapItem *)self->_geoMapItem addressObject];
    v5 = [v4 cityAndAboveWithFallback:0];
  }

  else if (a3 == 1)
  {
    v4 = [(GEOMapItem *)self->_geoMapItem addressObject];
    v5 = [v4 cityAndAboveNoCountryWithFallback:0];
  }

  else
  {
    if (a3)
    {
      goto LABEL_8;
    }

    v4 = [(GEOMapItem *)self->_geoMapItem addressObject];
    v5 = [v4 cityAndAboveNoCurrentCountryWithFallback:0];
  }

  v3 = v5;

LABEL_8:

  return v3;
}

- (NSString)cityWithContext
{
  v2 = [(GEOMapItem *)self->_geoMapItem addressObject];
  v3 = [v2 cityAndAboveNoCurrentCountryWithFallback:0];

  return v3;
}

- (NSString)cityName
{
  v2 = [(GEOMapItem *)self->_geoMapItem addressObject];
  v3 = [v2 cityDisplayNameWithFallback:1];

  return v3;
}

- (id)fullAddressIncludingRegion:(BOOL)a3 singleLine:(BOOL)a4
{
  v4 = a4;
  v6 = [(GEOMapItem *)self->_geoMapItem addressObject];
  v7 = v6;
  v8 = !v4;
  if (a3)
  {
    [v6 fullAddressWithMultiline:v8];
  }

  else
  {
    [v6 fullAddressNoCurrentCountryWithMultiline:v8];
  }
  v9 = ;

  return v9;
}

- (MKAddressRepresentations)initWithGeoMapItem:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = MKAddressRepresentations;
  v6 = [(MKAddressRepresentations *)&v11 init];
  if (v6)
  {
    v7 = [v5 addressObject];
    if (v7)
    {
    }

    else
    {
      v8 = [v5 _iso3166CountryCode];

      if (!v8)
      {
        v9 = 0;
        goto LABEL_7;
      }
    }

    objc_storeStrong(&v6->_geoMapItem, a3);
  }

  v9 = v6;
LABEL_7:

  return v9;
}

@end