@interface ASDScreenSyncAppMetadata
- (ASDScreenSyncAppMetadata)initWithBundleID:(id)d;
- (ASDScreenSyncAppMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASDScreenSyncAppMetadata

- (ASDScreenSyncAppMetadata)initWithBundleID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = ASDScreenSyncAppMetadata;
  v6 = [(ASDScreenSyncAppMetadata *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleID, d);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [ASDScreenSyncAppMetadata allocWithZone:?];
  v6 = [(NSString *)self->_bundleID copyWithZone:zone];
  v7 = [(ASDScreenSyncAppMetadata *)v5 initWithBundleID:v6];

  v8 = [(NSString *)self->_accountName copyWithZone:zone];
  accountName = v7->_accountName;
  v7->_accountName = v8;

  v10 = [(NSNumber *)self->_externalVersionIdentifier copyWithZone:zone];
  externalVersionIdentifier = v7->_externalVersionIdentifier;
  v7->_externalVersionIdentifier = v10;

  v12 = [(NSNumber *)self->_itemID copyWithZone:zone];
  itemID = v7->_itemID;
  v7->_itemID = v12;

  v14 = [(NSString *)self->_itemName copyWithZone:zone];
  itemName = v7->_itemName;
  v7->_itemName = v14;

  v16 = [(NSNumber *)self->_purchaserDSID copyWithZone:zone];
  purchaserDSID = v7->_purchaserDSID;
  v7->_purchaserDSID = v16;

  v18 = [(NSNumber *)self->_storeFront copyWithZone:zone];
  storeFront = v7->_storeFront;
  v7->_storeFront = v18;

  v20 = [(NSString *)self->_vendorName copyWithZone:zone];
  vendorName = v7->_vendorName;
  v7->_vendorName = v20;

  return v7;
}

- (ASDScreenSyncAppMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BI"];
  v6 = [(ASDScreenSyncAppMetadata *)self initWithBundleID:v5];
  if (v6)
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AN"];
    accountName = v6->_accountName;
    v6->_accountName = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EV"];
    externalVersionIdentifier = v6->_externalVersionIdentifier;
    v6->_externalVersionIdentifier = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ID"];
    itemID = v6->_itemID;
    v6->_itemID = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IN"];
    itemName = v6->_itemName;
    v6->_itemName = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SF"];
    storeFront = v6->_storeFront;
    v6->_storeFront = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"VN"];
    vendorName = v6->_vendorName;
    v6->_vendorName = v17;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  accountName = self->_accountName;
  coderCopy = coder;
  [coderCopy encodeObject:accountName forKey:@"AN"];
  [coderCopy encodeObject:self->_bundleID forKey:@"BI"];
  [coderCopy encodeObject:self->_externalVersionIdentifier forKey:@"EV"];
  [coderCopy encodeObject:self->_itemID forKey:@"ID"];
  [coderCopy encodeObject:self->_itemName forKey:@"IN"];
  [coderCopy encodeObject:self->_purchaserDSID forKey:@"PD"];
  [coderCopy encodeObject:self->_storeFront forKey:@"SF"];
  [coderCopy encodeObject:self->_vendorName forKey:@"VN"];
}

@end