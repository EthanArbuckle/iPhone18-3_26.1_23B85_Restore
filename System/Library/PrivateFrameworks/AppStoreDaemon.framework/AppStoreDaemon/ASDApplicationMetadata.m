@interface ASDApplicationMetadata
- (ASDApplicationMetadata)initWithBundleID:(id)a3;
- (ASDApplicationMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASDApplicationMetadata

- (ASDApplicationMetadata)initWithBundleID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ASDApplicationMetadata;
  v6 = [(ASDApplicationMetadata *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleID, a3);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[ASDApplicationMetadata allocWithZone:](ASDApplicationMetadata init];
  v6 = [(NSString *)self->_accountName copyWithZone:a3];
  accountName = v5->_accountName;
  v5->_accountName = v6;

  v8 = [(NSNumber *)self->_accountID copyWithZone:a3];
  accountID = v5->_accountID;
  v5->_accountID = v8;

  v10 = [(NSString *)self->_altDSID copyWithZone:a3];
  altDSID = v5->_altDSID;
  v5->_altDSID = v10;

  v12 = [(NSString *)self->_artworkPath copyWithZone:a3];
  artworkPath = v5->_artworkPath;
  v5->_artworkPath = v12;

  v14 = [(NSString *)self->_bundleID copyWithZone:a3];
  bundleID = v5->_bundleID;
  v5->_bundleID = v14;

  v16 = [(NSString *)self->_bundleVersion copyWithZone:a3];
  bundleVersion = v5->_bundleVersion;
  v5->_bundleVersion = v16;

  v18 = [(NSString *)self->_cohort copyWithZone:a3];
  cohort = v5->_cohort;
  v5->_cohort = v18;

  v20 = [(NSString *)self->_deviceVendorID copyWithZone:a3];
  deviceVendorID = v5->_deviceVendorID;
  v5->_deviceVendorID = v20;

  v5->_deviceBasedVPP = self->_deviceBasedVPP;
  v22 = [(NSNumber *)self->_downloaderID copyWithZone:a3];
  downloaderID = v5->_downloaderID;
  v5->_downloaderID = v22;

  v24 = [(NSNumber *)self->_externalVersionIdentifier copyWithZone:a3];
  externalVersionIdentifier = v5->_externalVersionIdentifier;
  v5->_externalVersionIdentifier = v24;

  v26 = [(NSNumber *)self->_familyID copyWithZone:a3];
  familyID = v5->_familyID;
  v5->_familyID = v26;

  v5->_isBeta = self->_isBeta;
  v5->_isClip = self->_isClip;
  v28 = [(NSNumber *)self->_installOrder copyWithZone:a3];
  installOrder = v5->_installOrder;
  v5->_installOrder = v28;

  v30 = [(NSNumber *)self->_itemID copyWithZone:a3];
  itemID = v5->_itemID;
  v5->_itemID = v30;

  v32 = [(NSString *)self->_itemName copyWithZone:a3];
  itemName = v5->_itemName;
  v5->_itemName = v32;

  v34 = [(NSNumber *)self->_purchaserDSID copyWithZone:a3];
  purchaserDSID = v5->_purchaserDSID;
  v5->_purchaserDSID = v34;

  v36 = [(NSString *)self->_shortVersion copyWithZone:a3];
  shortVersion = v5->_shortVersion;
  v5->_shortVersion = v36;

  v38 = [(NSNumber *)self->_storeFront copyWithZone:a3];
  storeFront = v5->_storeFront;
  v5->_storeFront = v38;

  v40 = [(NSString *)self->_vendorName copyWithZone:a3];
  vendorName = v5->_vendorName;
  v5->_vendorName = v40;

  return v5;
}

- (ASDApplicationMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ASDApplicationMetadata *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountName"];
    accountName = v5->_accountName;
    v5->_accountName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountID"];
    accountID = v5->_accountID;
    v5->_accountID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"altDSID"];
    altDSID = v5->_altDSID;
    v5->_altDSID = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"artworkPath"];
    artworkPath = v5->_artworkPath;
    v5->_artworkPath = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleVersion"];
    bundleVersion = v5->_bundleVersion;
    v5->_bundleVersion = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cohort"];
    cohort = v5->_cohort;
    v5->_cohort = v18;

    v5->_deviceBasedVPP = [v4 decodeBoolForKey:@"deviceBasedVPP"];
    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceVendorID"];
    deviceVendorID = v5->_deviceVendorID;
    v5->_deviceVendorID = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"downloaderID"];
    downloaderID = v5->_downloaderID;
    v5->_downloaderID = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"externalVersionIdentifier"];
    externalVersionIdentifier = v5->_externalVersionIdentifier;
    v5->_externalVersionIdentifier = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"familyID"];
    familyID = v5->_familyID;
    v5->_familyID = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"itemID"];
    itemID = v5->_itemID;
    v5->_itemID = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"installOrder"];
    installOrder = v5->_installOrder;
    v5->_installOrder = v30;

    v5->_isBeta = [v4 decodeBoolForKey:@"isBeta"];
    v5->_isClip = [v4 decodeBoolForKey:@"isClip"];
    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"itemName"];
    itemName = v5->_itemName;
    v5->_itemName = v32;

    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"purchaserDSID"];
    purchaserDSID = v5->_purchaserDSID;
    v5->_purchaserDSID = v34;

    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shortVersion"];
    shortVersion = v5->_shortVersion;
    v5->_shortVersion = v36;

    v38 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"storeFront"];
    storeFront = v5->_storeFront;
    v5->_storeFront = v38;

    v40 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"vendorName"];
    vendorName = v5->_vendorName;
    v5->_vendorName = v40;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  accountName = self->_accountName;
  v5 = a3;
  [v5 encodeObject:accountName forKey:@"accountName"];
  [v5 encodeObject:self->_accountID forKey:@"accountID"];
  [v5 encodeObject:self->_altDSID forKey:@"altDSID"];
  [v5 encodeObject:self->_artworkPath forKey:@"artworkPath"];
  [v5 encodeObject:self->_bundleID forKey:@"bundleID"];
  [v5 encodeObject:self->_bundleVersion forKey:@"bundleVersion"];
  [v5 encodeObject:self->_cohort forKey:@"cohort"];
  [v5 encodeObject:self->_deviceVendorID forKey:@"deviceVendorID"];
  [v5 encodeBool:self->_deviceBasedVPP forKey:@"deviceBasedVPP"];
  [v5 encodeObject:self->_downloaderID forKey:@"downloaderID"];
  [v5 encodeObject:self->_externalVersionIdentifier forKey:@"externalVersionIdentifier"];
  [v5 encodeObject:self->_familyID forKey:@"familyID"];
  [v5 encodeObject:self->_installOrder forKey:@"installOrder"];
  [v5 encodeBool:self->_isBeta forKey:@"isBeta"];
  [v5 encodeBool:self->_isClip forKey:@"isClip"];
  [v5 encodeObject:self->_itemID forKey:@"itemID"];
  [v5 encodeObject:self->_itemName forKey:@"itemName"];
  [v5 encodeObject:self->_purchaserDSID forKey:@"purchaserDSID"];
  [v5 encodeObject:self->_shortVersion forKey:@"shortVersion"];
  [v5 encodeObject:self->_storeFront forKey:@"storeFront"];
  [v5 encodeObject:self->_vendorName forKey:@"vendorName"];
}

- (id)description
{
  downloaderID = self->_downloaderID;
  bundleID = self->_bundleID;
  itemID = self->_itemID;
  itemName = self->_itemName;
  if (downloaderID)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"{ bundleID: %@ itemName: %@ itemID: %@ downloaderID %@ familyID: %@ }", bundleID, itemName, itemID, downloaderID, self->_familyID];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"{ bundleID: %@ itemName: %@ itemID: %@ installOrder: %@ }", bundleID, itemName, itemID, self->_installOrder, v8];
  }
  v6 = ;

  return v6;
}

@end