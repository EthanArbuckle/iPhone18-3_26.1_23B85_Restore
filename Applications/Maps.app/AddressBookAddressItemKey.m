@interface AddressBookAddressItemKey
- (AddressBookAddressItemKey)initWithAddressBookAddress:(id)a3;
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
@end

@implementation AddressBookAddressItemKey

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (![(AddressBookAddressItemKey *)v4 conformsToProtocol:&OBJC_PROTOCOL___PersonalizedItemKeyWithGEOMapItem])
    {
      v8 = 0;
      goto LABEL_12;
    }

    v6 = [(AddressBookAddressItemKey *)v4 geoMapItem];
    if (v6)
    {
      v9 = [(AddressBookAddressItemKey *)self geoMapItem];

      if (v9)
      {
        v10 = [(AddressBookAddressItemKey *)self geoMapItem];
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

    v13 = [(AddressBookAddressItemKey *)self contact];

    v8 = 0;
    if (!v6 || !v13)
    {
      goto LABEL_4;
    }

    v14 = [(AddressBookAddressItemKey *)self contact];
    v15 = [CNContactFormatter stringFromContact:v14 style:0];

    v16 = [v6 addressObject];
    v17 = [v16 shortAddress];

    v18 = [v6 name];
    v19 = v15;
    v20 = v18;
    if (v19 | v20 && (v21 = [v19 isEqual:v20], v20, v19, (v21 & 1) == 0))
    {
    }

    else
    {
      v22 = [(AddressBookAddressItemKey *)self shortAddress];
      v23 = v17;
      if (!(v23 | v22))
      {

        goto LABEL_20;
      }

      v24 = v23;
      v25 = [v22 isEqual:v23];

      if (v25)
      {
        goto LABEL_20;
      }
    }

LABEL_22:
    v8 = 0;
    goto LABEL_4;
  }

  v5 = v4;
  v6 = [(AddressBookAddressItemKey *)self keyString];
  v7 = [(AddressBookAddressItemKey *)v5 keyString];

  v8 = [v6 isEqualToString:v7];
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

  v3 = [(AddressBookAddressItemKey *)self keyString];
  v4 = [v3 hash];

  return v4;
}

- (AddressBookAddressItemKey)initWithAddressBookAddress:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = AddressBookAddressItemKey;
  v5 = [(AddressBookAddressItemKey *)&v26 init];
  if (v5)
  {
    v6 = [v4 addressValue];
    v7 = [v6 label];
    v8 = [v4 addressValue];
    v9 = [v8 identifier];
    v10 = [NSString stringWithFormat:@"%@ - %@", v7, v9];
    keyString = v5->_keyString;
    v5->_keyString = v10;

    v12 = [v4 geocodedMapItem];

    if (v12)
    {
      v13 = [v4 geocodedMapItem];
      v14 = [v13 _geoMapItem];
      geoMapItem = v5->_geoMapItem;
      v5->_geoMapItem = v14;

      v5->_geoMapItemHash = GEOMapItemHashForPurpose();
    }

    else
    {
      v16 = [(AddressBookAddressItemKey *)v5 contact];
      v17 = [CNContactFormatter stringFromContact:v16 style:0];
      v18 = v5->_keyString;
      v5->_keyString = v17;

      v19 = [v4 contact];
      v20 = [v19 copy];
      contact = v5->_contact;
      v5->_contact = v20;

      v22 = [[MKMapItem alloc] initWithContact:v5->_contact];
      v23 = [v22 _addressFormattedAsShortenedAddress];
      shortAddress = v5->_shortAddress;
      v5->_shortAddress = v23;
    }
  }

  return v5;
}

@end