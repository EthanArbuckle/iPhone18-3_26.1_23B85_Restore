@interface ASDApplicationMetadata
- (ASDApplicationMetadata)initWithBundleID:(id)d;
- (ASDApplicationMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASDApplicationMetadata

- (ASDApplicationMetadata)initWithBundleID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = ASDApplicationMetadata;
  v6 = [(ASDApplicationMetadata *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleID, d);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[ASDApplicationMetadata allocWithZone:](ASDApplicationMetadata init];
  v6 = [(NSString *)self->_accountName copyWithZone:zone];
  accountName = v5->_accountName;
  v5->_accountName = v6;

  v8 = [(NSNumber *)self->_accountID copyWithZone:zone];
  accountID = v5->_accountID;
  v5->_accountID = v8;

  v10 = [(NSString *)self->_altDSID copyWithZone:zone];
  altDSID = v5->_altDSID;
  v5->_altDSID = v10;

  v12 = [(NSString *)self->_artworkPath copyWithZone:zone];
  artworkPath = v5->_artworkPath;
  v5->_artworkPath = v12;

  v14 = [(NSString *)self->_bundleID copyWithZone:zone];
  bundleID = v5->_bundleID;
  v5->_bundleID = v14;

  v16 = [(NSString *)self->_bundleVersion copyWithZone:zone];
  bundleVersion = v5->_bundleVersion;
  v5->_bundleVersion = v16;

  v18 = [(NSString *)self->_cohort copyWithZone:zone];
  cohort = v5->_cohort;
  v5->_cohort = v18;

  v20 = [(NSString *)self->_deviceVendorID copyWithZone:zone];
  deviceVendorID = v5->_deviceVendorID;
  v5->_deviceVendorID = v20;

  v5->_deviceBasedVPP = self->_deviceBasedVPP;
  v22 = [(NSNumber *)self->_downloaderID copyWithZone:zone];
  downloaderID = v5->_downloaderID;
  v5->_downloaderID = v22;

  v24 = [(NSNumber *)self->_externalVersionIdentifier copyWithZone:zone];
  externalVersionIdentifier = v5->_externalVersionIdentifier;
  v5->_externalVersionIdentifier = v24;

  v26 = [(NSNumber *)self->_familyID copyWithZone:zone];
  familyID = v5->_familyID;
  v5->_familyID = v26;

  v5->_isBeta = self->_isBeta;
  v5->_isClip = self->_isClip;
  v28 = [(NSNumber *)self->_installOrder copyWithZone:zone];
  installOrder = v5->_installOrder;
  v5->_installOrder = v28;

  v30 = [(NSNumber *)self->_itemID copyWithZone:zone];
  itemID = v5->_itemID;
  v5->_itemID = v30;

  v32 = [(NSString *)self->_itemName copyWithZone:zone];
  itemName = v5->_itemName;
  v5->_itemName = v32;

  v34 = [(NSNumber *)self->_purchaserDSID copyWithZone:zone];
  purchaserDSID = v5->_purchaserDSID;
  v5->_purchaserDSID = v34;

  v36 = [(NSString *)self->_shortVersion copyWithZone:zone];
  shortVersion = v5->_shortVersion;
  v5->_shortVersion = v36;

  v38 = [(NSNumber *)self->_storeFront copyWithZone:zone];
  storeFront = v5->_storeFront;
  v5->_storeFront = v38;

  v40 = [(NSString *)self->_vendorName copyWithZone:zone];
  vendorName = v5->_vendorName;
  v5->_vendorName = v40;

  return v5;
}

- (ASDApplicationMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(ASDApplicationMetadata *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountName"];
    accountName = v5->_accountName;
    v5->_accountName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountID"];
    accountID = v5->_accountID;
    v5->_accountID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"altDSID"];
    altDSID = v5->_altDSID;
    v5->_altDSID = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"artworkPath"];
    artworkPath = v5->_artworkPath;
    v5->_artworkPath = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleVersion"];
    bundleVersion = v5->_bundleVersion;
    v5->_bundleVersion = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cohort"];
    cohort = v5->_cohort;
    v5->_cohort = v18;

    v5->_deviceBasedVPP = [coderCopy decodeBoolForKey:@"deviceBasedVPP"];
    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceVendorID"];
    deviceVendorID = v5->_deviceVendorID;
    v5->_deviceVendorID = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"downloaderID"];
    downloaderID = v5->_downloaderID;
    v5->_downloaderID = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"externalVersionIdentifier"];
    externalVersionIdentifier = v5->_externalVersionIdentifier;
    v5->_externalVersionIdentifier = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"familyID"];
    familyID = v5->_familyID;
    v5->_familyID = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"itemID"];
    itemID = v5->_itemID;
    v5->_itemID = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"installOrder"];
    installOrder = v5->_installOrder;
    v5->_installOrder = v30;

    v5->_isBeta = [coderCopy decodeBoolForKey:@"isBeta"];
    v5->_isClip = [coderCopy decodeBoolForKey:@"isClip"];
    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"itemName"];
    itemName = v5->_itemName;
    v5->_itemName = v32;

    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"purchaserDSID"];
    purchaserDSID = v5->_purchaserDSID;
    v5->_purchaserDSID = v34;

    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shortVersion"];
    shortVersion = v5->_shortVersion;
    v5->_shortVersion = v36;

    v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"storeFront"];
    storeFront = v5->_storeFront;
    v5->_storeFront = v38;

    v40 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"vendorName"];
    vendorName = v5->_vendorName;
    v5->_vendorName = v40;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  accountName = self->_accountName;
  coderCopy = coder;
  [coderCopy encodeObject:accountName forKey:@"accountName"];
  [coderCopy encodeObject:self->_accountID forKey:@"accountID"];
  [coderCopy encodeObject:self->_altDSID forKey:@"altDSID"];
  [coderCopy encodeObject:self->_artworkPath forKey:@"artworkPath"];
  [coderCopy encodeObject:self->_bundleID forKey:@"bundleID"];
  [coderCopy encodeObject:self->_bundleVersion forKey:@"bundleVersion"];
  [coderCopy encodeObject:self->_cohort forKey:@"cohort"];
  [coderCopy encodeObject:self->_deviceVendorID forKey:@"deviceVendorID"];
  [coderCopy encodeBool:self->_deviceBasedVPP forKey:@"deviceBasedVPP"];
  [coderCopy encodeObject:self->_downloaderID forKey:@"downloaderID"];
  [coderCopy encodeObject:self->_externalVersionIdentifier forKey:@"externalVersionIdentifier"];
  [coderCopy encodeObject:self->_familyID forKey:@"familyID"];
  [coderCopy encodeObject:self->_installOrder forKey:@"installOrder"];
  [coderCopy encodeBool:self->_isBeta forKey:@"isBeta"];
  [coderCopy encodeBool:self->_isClip forKey:@"isClip"];
  [coderCopy encodeObject:self->_itemID forKey:@"itemID"];
  [coderCopy encodeObject:self->_itemName forKey:@"itemName"];
  [coderCopy encodeObject:self->_purchaserDSID forKey:@"purchaserDSID"];
  [coderCopy encodeObject:self->_shortVersion forKey:@"shortVersion"];
  [coderCopy encodeObject:self->_storeFront forKey:@"storeFront"];
  [coderCopy encodeObject:self->_vendorName forKey:@"vendorName"];
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