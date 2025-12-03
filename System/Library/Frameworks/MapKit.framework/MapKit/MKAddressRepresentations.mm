@interface MKAddressRepresentations
- (BOOL)isEqual:(id)equal;
- (MKAddressRepresentations)initWithGeoMapItem:(id)item;
- (NSString)cityName;
- (NSString)cityWithContext;
- (NSString)regionName;
- (id)cityWithContextUsingStyle:(int64_t)style;
- (id)description;
- (id)fullAddressIncludingRegion:(BOOL)region singleLine:(BOOL)line;
@end

@implementation MKAddressRepresentations

- (id)description
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  cityName = [(MKAddressRepresentations *)self cityName];
  [dictionary setObject:cityName forKeyedSubscript:@"cityName"];

  cityWithContext = [(MKAddressRepresentations *)self cityWithContext];
  [dictionary setObject:cityWithContext forKeyedSubscript:@"cityWithContext"];

  v6 = [(MKAddressRepresentations *)self cityWithContextUsingStyle:2];
  [dictionary setObject:v6 forKeyedSubscript:@"cityWithContextUsingStyle(.full)"];

  regionName = [(MKAddressRepresentations *)self regionName];
  [dictionary setObject:regionName forKeyedSubscript:@"regionName"];

  regionCode = [(MKAddressRepresentations *)self regionCode];
  [dictionary setObject:regionCode forKeyedSubscript:@"regionCode"];

  v9 = [(MKAddressRepresentations *)self fullAddressIncludingRegion:1 singleLine:1];
  [dictionary setObject:v9 forKeyedSubscript:@"fullAddress"];

  v10 = MEMORY[0x1E696AEC0];
  v14.receiver = self;
  v14.super_class = MKAddressRepresentations;
  v11 = [(MKAddressRepresentations *)&v14 description];
  v12 = [v10 stringWithFormat:@"%@ %@", v11, dictionary];

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    geoMapItem = self->_geoMapItem;
    v6 = equalCopy;
    geoAddress = [(GEOMapItem *)geoMapItem geoAddress];
    formattedAddressLines = [geoAddress formattedAddressLines];

    _geoMapItem = [v6 _geoMapItem];

    geoAddress2 = [_geoMapItem geoAddress];
    formattedAddressLines2 = [geoAddress2 formattedAddressLines];

    v12 = [formattedAddressLines isEqual:formattedAddressLines2];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (NSString)regionName
{
  addressObject = [(GEOMapItem *)self->_geoMapItem addressObject];
  countryName = [addressObject countryName];

  return countryName;
}

- (id)cityWithContextUsingStyle:(int64_t)style
{
  if (style == 2)
  {
    addressObject = [(GEOMapItem *)self->_geoMapItem addressObject];
    v5 = [addressObject cityAndAboveWithFallback:0];
  }

  else if (style == 1)
  {
    addressObject = [(GEOMapItem *)self->_geoMapItem addressObject];
    v5 = [addressObject cityAndAboveNoCountryWithFallback:0];
  }

  else
  {
    if (style)
    {
      goto LABEL_8;
    }

    addressObject = [(GEOMapItem *)self->_geoMapItem addressObject];
    v5 = [addressObject cityAndAboveNoCurrentCountryWithFallback:0];
  }

  v3 = v5;

LABEL_8:

  return v3;
}

- (NSString)cityWithContext
{
  addressObject = [(GEOMapItem *)self->_geoMapItem addressObject];
  v3 = [addressObject cityAndAboveNoCurrentCountryWithFallback:0];

  return v3;
}

- (NSString)cityName
{
  addressObject = [(GEOMapItem *)self->_geoMapItem addressObject];
  v3 = [addressObject cityDisplayNameWithFallback:1];

  return v3;
}

- (id)fullAddressIncludingRegion:(BOOL)region singleLine:(BOOL)line
{
  lineCopy = line;
  addressObject = [(GEOMapItem *)self->_geoMapItem addressObject];
  v7 = addressObject;
  v8 = !lineCopy;
  if (region)
  {
    [addressObject fullAddressWithMultiline:v8];
  }

  else
  {
    [addressObject fullAddressNoCurrentCountryWithMultiline:v8];
  }
  v9 = ;

  return v9;
}

- (MKAddressRepresentations)initWithGeoMapItem:(id)item
{
  itemCopy = item;
  v11.receiver = self;
  v11.super_class = MKAddressRepresentations;
  v6 = [(MKAddressRepresentations *)&v11 init];
  if (v6)
  {
    addressObject = [itemCopy addressObject];
    if (addressObject)
    {
    }

    else
    {
      _iso3166CountryCode = [itemCopy _iso3166CountryCode];

      if (!_iso3166CountryCode)
      {
        v9 = 0;
        goto LABEL_7;
      }
    }

    objc_storeStrong(&v6->_geoMapItem, item);
  }

  v9 = v6;
LABEL_7:

  return v9;
}

@end