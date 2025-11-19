@interface MKAddress
- (BOOL)isEqual:(id)a3;
- (MKAddress)initWithFullAddress:(id)a3 shortAddress:(id)a4;
- (MKAddress)initWithGeoMapItem:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation MKAddress

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = v5;
    geoMapItem = self->_geoMapItem;
    if (geoMapItem && ([v5 _geoMapItem], v8 = objc_claimAutoreleasedReturnValue(), v9 = -[GEOMapItem isEqualToMapItem:](geoMapItem, "isEqualToMapItem:", v8), v8, !v9))
    {
      v14 = 0;
    }

    else
    {
      v10 = [(MKAddress *)self fullAddress];
      v11 = [v6 fullAddress];
      if ([v10 isEqualToString:v11])
      {
        v12 = [(MKAddress *)self shortAddress];
        v13 = [v6 shortAddress];
        v14 = [v12 isEqualToString:v13];
      }

      else
      {
        v14 = 0;
      }
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (unint64_t)hash
{
  v2 = [(MKAddress *)self fullAddress];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(MKAddress *)self fullAddress];
  [v3 setObject:v4 forKeyedSubscript:@"fullAddress"];

  v5 = [(MKAddress *)self shortAddress];

  if (v5)
  {
    v6 = [(MKAddress *)self shortAddress];
    [v3 setObject:v6 forKeyedSubscript:@"shortAddress"];
  }

  v7 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = MKAddress;
  v8 = [(MKAddress *)&v11 description];
  v9 = [v7 stringWithFormat:@"%@ %@", v8, v3];

  return v9;
}

- (MKAddress)initWithGeoMapItem:(id)a3
{
  v5 = a3;
  v6 = [v5 addressObject];
  v7 = [v6 fullAddressWithMultiline:0];

  if (v7)
  {
    v15.receiver = self;
    v15.super_class = MKAddress;
    v8 = [(MKAddress *)&v15 init];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_fullAddress, v7);
      v10 = [v5 addressObject];
      v11 = [v10 shortAddress];
      shortAddress = v9->_shortAddress;
      v9->_shortAddress = v11;

      objc_storeStrong(&v9->_geoMapItem, a3);
    }

    self = v9;
    v13 = self;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (MKAddress)initWithFullAddress:(id)a3 shortAddress:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v9 = [v6 stringByTrimmingCharactersInSet:v8];
  v10 = [v9 length];

  if (v10)
  {
    v18.receiver = self;
    v18.super_class = MKAddress;
    v11 = [(MKAddress *)&v18 init];
    if (v11)
    {
      v12 = [v6 copy];
      fullAddress = v11->_fullAddress;
      v11->_fullAddress = v12;

      v14 = [v7 copy];
      shortAddress = v11->_shortAddress;
      v11->_shortAddress = v14;
    }

    self = v11;
    v16 = self;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end