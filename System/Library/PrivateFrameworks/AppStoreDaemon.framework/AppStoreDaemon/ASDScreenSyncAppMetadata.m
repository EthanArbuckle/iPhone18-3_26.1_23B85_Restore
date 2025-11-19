@interface ASDScreenSyncAppMetadata
- (ASDScreenSyncAppMetadata)initWithBundleID:(id)a3;
- (ASDScreenSyncAppMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASDScreenSyncAppMetadata

- (ASDScreenSyncAppMetadata)initWithBundleID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ASDScreenSyncAppMetadata;
  v6 = [(ASDScreenSyncAppMetadata *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleID, a3);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [ASDScreenSyncAppMetadata allocWithZone:?];
  v6 = [(NSString *)self->_bundleID copyWithZone:a3];
  v7 = [(ASDScreenSyncAppMetadata *)v5 initWithBundleID:v6];

  v8 = [(NSString *)self->_accountName copyWithZone:a3];
  accountName = v7->_accountName;
  v7->_accountName = v8;

  v10 = [(NSNumber *)self->_externalVersionIdentifier copyWithZone:a3];
  externalVersionIdentifier = v7->_externalVersionIdentifier;
  v7->_externalVersionIdentifier = v10;

  v12 = [(NSNumber *)self->_itemID copyWithZone:a3];
  itemID = v7->_itemID;
  v7->_itemID = v12;

  v14 = [(NSString *)self->_itemName copyWithZone:a3];
  itemName = v7->_itemName;
  v7->_itemName = v14;

  v16 = [(NSNumber *)self->_purchaserDSID copyWithZone:a3];
  purchaserDSID = v7->_purchaserDSID;
  v7->_purchaserDSID = v16;

  v18 = [(NSNumber *)self->_storeFront copyWithZone:a3];
  storeFront = v7->_storeFront;
  v7->_storeFront = v18;

  v20 = [(NSString *)self->_vendorName copyWithZone:a3];
  vendorName = v7->_vendorName;
  v7->_vendorName = v20;

  return v7;
}

- (ASDScreenSyncAppMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BI"];
  v6 = [(ASDScreenSyncAppMetadata *)self initWithBundleID:v5];
  if (v6)
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AN"];
    accountName = v6->_accountName;
    v6->_accountName = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EV"];
    externalVersionIdentifier = v6->_externalVersionIdentifier;
    v6->_externalVersionIdentifier = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ID"];
    itemID = v6->_itemID;
    v6->_itemID = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IN"];
    itemName = v6->_itemName;
    v6->_itemName = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SF"];
    storeFront = v6->_storeFront;
    v6->_storeFront = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"VN"];
    vendorName = v6->_vendorName;
    v6->_vendorName = v17;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  accountName = self->_accountName;
  v5 = a3;
  [v5 encodeObject:accountName forKey:@"AN"];
  [v5 encodeObject:self->_bundleID forKey:@"BI"];
  [v5 encodeObject:self->_externalVersionIdentifier forKey:@"EV"];
  [v5 encodeObject:self->_itemID forKey:@"ID"];
  [v5 encodeObject:self->_itemName forKey:@"IN"];
  [v5 encodeObject:self->_purchaserDSID forKey:@"PD"];
  [v5 encodeObject:self->_storeFront forKey:@"SF"];
  [v5 encodeObject:self->_vendorName forKey:@"VN"];
}

@end