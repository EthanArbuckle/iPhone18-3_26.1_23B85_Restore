@interface MKAddress
- (BOOL)isEqual:(id)equal;
- (MKAddress)initWithFullAddress:(id)address shortAddress:(id)shortAddress;
- (MKAddress)initWithGeoMapItem:(id)item;
- (id)description;
- (unint64_t)hash;
@end

@implementation MKAddress

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = v5;
    geoMapItem = self->_geoMapItem;
    if (geoMapItem && ([v5 _geoMapItem], v8 = objc_claimAutoreleasedReturnValue(), v9 = -[GEOMapItem isEqualToMapItem:](geoMapItem, "isEqualToMapItem:", v8), v8, !v9))
    {
      v14 = 0;
    }

    else
    {
      fullAddress = [(MKAddress *)self fullAddress];
      fullAddress2 = [v6 fullAddress];
      if ([fullAddress isEqualToString:fullAddress2])
      {
        shortAddress = [(MKAddress *)self shortAddress];
        shortAddress2 = [v6 shortAddress];
        v14 = [shortAddress isEqualToString:shortAddress2];
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
  fullAddress = [(MKAddress *)self fullAddress];
  v3 = [fullAddress hash];

  return v3;
}

- (id)description
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  fullAddress = [(MKAddress *)self fullAddress];
  [dictionary setObject:fullAddress forKeyedSubscript:@"fullAddress"];

  shortAddress = [(MKAddress *)self shortAddress];

  if (shortAddress)
  {
    shortAddress2 = [(MKAddress *)self shortAddress];
    [dictionary setObject:shortAddress2 forKeyedSubscript:@"shortAddress"];
  }

  v7 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = MKAddress;
  v8 = [(MKAddress *)&v11 description];
  v9 = [v7 stringWithFormat:@"%@ %@", v8, dictionary];

  return v9;
}

- (MKAddress)initWithGeoMapItem:(id)item
{
  itemCopy = item;
  addressObject = [itemCopy addressObject];
  v7 = [addressObject fullAddressWithMultiline:0];

  if (v7)
  {
    v15.receiver = self;
    v15.super_class = MKAddress;
    v8 = [(MKAddress *)&v15 init];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_fullAddress, v7);
      addressObject2 = [itemCopy addressObject];
      shortAddress = [addressObject2 shortAddress];
      shortAddress = v9->_shortAddress;
      v9->_shortAddress = shortAddress;

      objc_storeStrong(&v9->_geoMapItem, item);
    }

    self = v9;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (MKAddress)initWithFullAddress:(id)address shortAddress:(id)shortAddress
{
  addressCopy = address;
  shortAddressCopy = shortAddress;
  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v9 = [addressCopy stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
  v10 = [v9 length];

  if (v10)
  {
    v18.receiver = self;
    v18.super_class = MKAddress;
    v11 = [(MKAddress *)&v18 init];
    if (v11)
    {
      v12 = [addressCopy copy];
      fullAddress = v11->_fullAddress;
      v11->_fullAddress = v12;

      v14 = [shortAddressCopy copy];
      shortAddress = v11->_shortAddress;
      v11->_shortAddress = v14;
    }

    self = v11;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end