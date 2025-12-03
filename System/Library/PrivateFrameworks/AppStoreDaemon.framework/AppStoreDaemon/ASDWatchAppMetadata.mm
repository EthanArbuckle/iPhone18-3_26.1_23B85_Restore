@interface ASDWatchAppMetadata
+ (id)metadataFromStoreMetadata:(id)metadata;
- (ASDWatchAppMetadata)initWithCoder:(id)coder;
- (ASDWatchAppMetadata)initWithItemID:(id)d externalVersionID:(id)iD;
- (ASDWatchAppMetadata)initWithStoreMetadata:(id)metadata;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASDWatchAppMetadata

+ (id)metadataFromStoreMetadata:(id)metadata
{
  metadataCopy = metadata;
  v5 = [[self alloc] initWithStoreMetadata:metadataCopy];

  return v5;
}

- (ASDWatchAppMetadata)initWithItemID:(id)d externalVersionID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v14.receiver = self;
  v14.super_class = ASDWatchAppMetadata;
  v8 = [(ASDWatchAppMetadata *)&v14 init];
  if (v8)
  {
    v9 = [dCopy copy];
    itemID = v8->_itemID;
    v8->_itemID = v9;

    v11 = [iDCopy copy];
    externalVersionID = v8->_externalVersionID;
    v8->_externalVersionID = v11;
  }

  return v8;
}

- (ASDWatchAppMetadata)initWithStoreMetadata:(id)metadata
{
  metadataCopy = metadata;
  v23.receiver = self;
  v23.super_class = ASDWatchAppMetadata;
  v5 = [(ASDWatchAppMetadata *)&v23 init];
  if (v5)
  {
    altDSID = [metadataCopy altDSID];
    altDSID = v5->_altDSID;
    v5->_altDSID = altDSID;

    appleID = [metadataCopy appleID];
    appleID = v5->_appleID;
    v5->_appleID = appleID;

    softwareVersionBundleID = [metadataCopy softwareVersionBundleID];
    bundleID = v5->_bundleID;
    v5->_bundleID = softwareVersionBundleID;

    downloaderID = [metadataCopy downloaderID];
    downloaderID = v5->_downloaderID;
    v5->_downloaderID = downloaderID;

    softwareVersionExternalIdentifier = [metadataCopy softwareVersionExternalIdentifier];
    externalVersionID = v5->_externalVersionID;
    v5->_externalVersionID = softwareVersionExternalIdentifier;

    itemID = [metadataCopy itemID];
    itemID = v5->_itemID;
    v5->_itemID = itemID;

    purchaserID = [metadataCopy purchaserID];
    purchaserID = v5->_purchaserID;
    v5->_purchaserID = purchaserID;

    redownloadParams = [metadataCopy redownloadParams];
    redownloadParams = v5->_redownloadParams;
    v5->_redownloadParams = redownloadParams;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[ASDWatchAppMetadata allocWithZone:](ASDWatchAppMetadata init];
  v6 = [(NSString *)self->_altDSID copyWithZone:zone];
  [(ASDWatchAppMetadata *)v5 setAltDSID:v6];

  v7 = [(NSString *)self->_appleID copyWithZone:zone];
  [(ASDWatchAppMetadata *)v5 setAppleID:v7];

  v8 = [(NSString *)self->_bundleID copyWithZone:zone];
  [(ASDWatchAppMetadata *)v5 setBundleID:v8];

  v9 = [(NSNumber *)self->_downloaderID copyWithZone:zone];
  [(ASDWatchAppMetadata *)v5 setDownloaderID:v9];

  v10 = [(NSNumber *)self->_externalVersionID copyWithZone:zone];
  [(ASDWatchAppMetadata *)v5 setExternalVersionID:v10];

  v11 = [(NSNumber *)self->_itemID copyWithZone:zone];
  [(ASDWatchAppMetadata *)v5 setItemID:v11];

  v12 = [(NSNumber *)self->_previousExternalVersionID copyWithZone:zone];
  [(ASDWatchAppMetadata *)v5 setPreviousExternalVersionID:v12];

  v13 = [(NSString *)self->_previousVariantID copyWithZone:zone];
  [(ASDWatchAppMetadata *)v5 setPreviousVariantID:v13];

  v14 = [(NSNumber *)self->_purchaserID copyWithZone:zone];
  [(ASDWatchAppMetadata *)v5 setPurchaserID:v14];

  v15 = [(NSString *)self->_redownloadParams copyWithZone:zone];
  [(ASDWatchAppMetadata *)v5 setRedownloadParams:v15];

  [(ASDWatchAppMetadata *)v5 setSkipIfInstalled:self->_skipIfInstalled];
  [(ASDWatchAppMetadata *)v5 setUserInitiated:self->_userInitiated];
  return v5;
}

- (ASDWatchAppMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v27.receiver = self;
  v27.super_class = ASDWatchAppMetadata;
  v5 = [(ASDWatchAppMetadata *)&v27 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AD"];
    altDSID = v5->_altDSID;
    v5->_altDSID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AI"];
    appleID = v5->_appleID;
    v5->_appleID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BI"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DI"];
    downloaderID = v5->_downloaderID;
    v5->_downloaderID = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EV"];
    externalVersionID = v5->_externalVersionID;
    v5->_externalVersionID = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ID"];
    itemID = v5->_itemID;
    v5->_itemID = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PE"];
    previousExternalVersionID = v5->_previousExternalVersionID;
    v5->_previousExternalVersionID = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PV"];
    previousVariantID = v5->_previousVariantID;
    v5->_previousVariantID = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PI"];
    purchaserID = v5->_purchaserID;
    v5->_purchaserID = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BP"];
    redownloadParams = v5->_redownloadParams;
    v5->_redownloadParams = v24;

    v5->_skipIfInstalled = [coderCopy decodeBoolForKey:@"SK"];
    v5->_userInitiated = [coderCopy decodeBoolForKey:@"UI"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  altDSID = self->_altDSID;
  coderCopy = coder;
  [coderCopy encodeObject:altDSID forKey:@"AD"];
  [coderCopy encodeObject:self->_appleID forKey:@"AI"];
  [coderCopy encodeObject:self->_bundleID forKey:@"BI"];
  [coderCopy encodeObject:self->_downloaderID forKey:@"DI"];
  [coderCopy encodeObject:self->_externalVersionID forKey:@"EV"];
  [coderCopy encodeObject:self->_itemID forKey:@"ID"];
  [coderCopy encodeObject:self->_previousExternalVersionID forKey:@"PE"];
  [coderCopy encodeObject:self->_previousVariantID forKey:@"PV"];
  [coderCopy encodeObject:self->_purchaserID forKey:@"PI"];
  [coderCopy encodeObject:self->_redownloadParams forKey:@"BP"];
  [coderCopy encodeBool:self->_skipIfInstalled forKey:@"SK"];
  [coderCopy encodeBool:self->_userInitiated forKey:@"UI"];
}

@end