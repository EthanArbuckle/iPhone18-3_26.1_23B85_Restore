@interface AddressBookAddressItemKey
- (AddressBookAddressItemKey)initWithAddressBookAddress:(id)address;
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation AddressBookAddressItemKey

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (![(AddressBookAddressItemKey *)equalCopy conformsToProtocol:&OBJC_PROTOCOL___PersonalizedItemKeyWithGEOMapItem])
    {
      v8 = 0;
      goto LABEL_12;
    }

    geoMapItem = [(AddressBookAddressItemKey *)equalCopy geoMapItem];
    if (geoMapItem)
    {
      geoMapItem2 = [(AddressBookAddressItemKey *)self geoMapItem];

      if (geoMapItem2)
      {
        geoMapItem3 = [(AddressBookAddressItemKey *)self geoMapItem];
        IsEqualToMapItemForPurposeWithinDistance = GEOMapItemIsEqualToMapItemForPurposeWithinDistance();

        if ((IsEqualToMapItemForPurposeWithinDistance & 1) == 0)
        {
          goto LABEL_22;
        }

LABEL_20:
        v8 = 1;
        goto LABEL_4;
      }
    }

    contact = [(AddressBookAddressItemKey *)self contact];

    v8 = 0;
    if (!geoMapItem || !contact)
    {
      goto LABEL_4;
    }

    contact2 = [(AddressBookAddressItemKey *)self contact];
    v15 = [CNContactFormatter stringFromContact:contact2 style:0];

    addressObject = [geoMapItem addressObject];
    shortAddress = [addressObject shortAddress];

    name = [geoMapItem name];
    v19 = v15;
    v20 = name;
    if (v19 | v20 && (v21 = [v19 isEqual:v20], v20, v19, (v21 & 1) == 0))
    {
    }

    else
    {
      shortAddress2 = [(AddressBookAddressItemKey *)self shortAddress];
      v23 = shortAddress;
      if (!(v23 | shortAddress2))
      {

        goto LABEL_20;
      }

      v24 = v23;
      v25 = [shortAddress2 isEqual:v23];

      if (v25)
      {
        goto LABEL_20;
      }
    }

LABEL_22:
    v8 = 0;
    goto LABEL_4;
  }

  v5 = equalCopy;
  geoMapItem = [(AddressBookAddressItemKey *)self keyString];
  keyString = [(AddressBookAddressItemKey *)v5 keyString];

  v8 = [geoMapItem isEqualToString:keyString];
LABEL_4:

LABEL_12:
  return v8;
}

- (unint64_t)hash
{
  if (self->_geoMapItemHash)
  {
    return self->_geoMapItemHash;
  }

  keyString = [(AddressBookAddressItemKey *)self keyString];
  v4 = [keyString hash];

  return v4;
}

- (AddressBookAddressItemKey)initWithAddressBookAddress:(id)address
{
  addressCopy = address;
  v26.receiver = self;
  v26.super_class = AddressBookAddressItemKey;
  v5 = [(AddressBookAddressItemKey *)&v26 init];
  if (v5)
  {
    addressValue = [addressCopy addressValue];
    label = [addressValue label];
    addressValue2 = [addressCopy addressValue];
    identifier = [addressValue2 identifier];
    v10 = [NSString stringWithFormat:@"%@ - %@", label, identifier];
    keyString = v5->_keyString;
    v5->_keyString = v10;

    geocodedMapItem = [addressCopy geocodedMapItem];

    if (geocodedMapItem)
    {
      geocodedMapItem2 = [addressCopy geocodedMapItem];
      _geoMapItem = [geocodedMapItem2 _geoMapItem];
      geoMapItem = v5->_geoMapItem;
      v5->_geoMapItem = _geoMapItem;

      v5->_geoMapItemHash = GEOMapItemHashForPurpose();
    }

    else
    {
      contact = [(AddressBookAddressItemKey *)v5 contact];
      v17 = [CNContactFormatter stringFromContact:contact style:0];
      v18 = v5->_keyString;
      v5->_keyString = v17;

      contact2 = [addressCopy contact];
      v20 = [contact2 copy];
      contact = v5->_contact;
      v5->_contact = v20;

      v22 = [[MKMapItem alloc] initWithContact:v5->_contact];
      _addressFormattedAsShortenedAddress = [v22 _addressFormattedAsShortenedAddress];
      shortAddress = v5->_shortAddress;
      v5->_shortAddress = _addressFormattedAsShortenedAddress;
    }
  }

  return v5;
}

@end