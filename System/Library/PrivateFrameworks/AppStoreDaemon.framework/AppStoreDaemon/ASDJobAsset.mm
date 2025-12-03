@interface ASDJobAsset
- (ASDJobAsset)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASDJobAsset

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[ASDJobAsset allocWithZone:](ASDJobAsset init];
  v6 = [(NSString *)self->_assetType copyWithZone:zone];
  assetType = v5->_assetType;
  v5->_assetType = v6;

  v8 = [(NSString *)self->_assetURL copyWithZone:zone];
  assetURL = v5->_assetURL;
  v5->_assetURL = v8;

  v10 = [(NSNumber *)self->_bytesTotal copyWithZone:zone];
  bytesTotal = v5->_bytesTotal;
  v5->_bytesTotal = v10;

  v12 = [(NSData *)self->_dPInfo copyWithZone:zone];
  dPInfo = v5->_dPInfo;
  v5->_dPInfo = v12;

  v14 = [(NSNumber *)self->_expectedDiskspace copyWithZone:zone];
  expectedDiskspace = v5->_expectedDiskspace;
  v5->_expectedDiskspace = v14;

  v16 = [(NSData *)self->_hashArrayData copyWithZone:zone];
  hashArrayData = v5->_hashArrayData;
  v5->_hashArrayData = v16;

  v18 = [(NSNumber *)self->_hashType copyWithZone:zone];
  hashType = v5->_hashType;
  v5->_hashType = v18;

  v20 = [(NSNumber *)self->_initialODRSize copyWithZone:zone];
  initialODRSize = v5->_initialODRSize;
  v5->_initialODRSize = v20;

  v5->_isExternal = self->_isExternal;
  v5->_isLocallyCacheable = self->_isLocallyCacheable;
  v5->_isZipStreamable = self->_isZipStreamable;
  v22 = [(NSNumber *)self->_numberOfBytesToHash copyWithZone:zone];
  numberOfBytesToHash = v5->_numberOfBytesToHash;
  v5->_numberOfBytesToHash = v22;

  v24 = [(NSData *)self->_sinfs copyWithZone:zone];
  sinfs = v5->_sinfs;
  v5->_sinfs = v24;

  v26 = [(NSString *)self->_storeDownloadKey copyWithZone:zone];
  storeDownloadKey = v5->_storeDownloadKey;
  v5->_storeDownloadKey = v26;

  v28 = [(NSString *)self->_variantID copyWithZone:zone];
  variantID = v5->_variantID;
  v5->_variantID = v28;

  return v5;
}

- (ASDJobAsset)initWithCoder:(id)coder
{
  coderCopy = coder;
  v31.receiver = self;
  v31.super_class = ASDJobAsset;
  v5 = [(ASDJobAsset *)&v31 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetType"];
    assetType = v5->_assetType;
    v5->_assetType = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetURL"];
    assetURL = v5->_assetURL;
    v5->_assetURL = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bytesTotal"];
    bytesTotal = v5->_bytesTotal;
    v5->_bytesTotal = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetDPInfo"];
    dPInfo = v5->_dPInfo;
    v5->_dPInfo = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expectedDiskspace"];
    expectedDiskspace = v5->_expectedDiskspace;
    v5->_expectedDiskspace = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hashArrayData"];
    hashArrayData = v5->_hashArrayData;
    v5->_hashArrayData = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hashType"];
    hashType = v5->_hashType;
    v5->_hashType = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"initialODRSize"];
    initialODRSize = v5->_initialODRSize;
    v5->_initialODRSize = v20;

    v5->_isExternal = [coderCopy decodeBoolForKey:@"isExternal"];
    v5->_isLocallyCacheable = [coderCopy decodeBoolForKey:@"isZipStreamable"];
    v5->_isZipStreamable = [coderCopy decodeBoolForKey:@"isZipStreamable"];
    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"numberOfBytesToHash"];
    numberOfBytesToHash = v5->_numberOfBytesToHash;
    v5->_numberOfBytesToHash = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sinfs"];
    sinfs = v5->_sinfs;
    v5->_sinfs = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"storeDownloadKey"];
    storeDownloadKey = v5->_storeDownloadKey;
    v5->_storeDownloadKey = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"variantID"];
    variantID = v5->_variantID;
    v5->_variantID = v28;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  assetType = [(ASDJobAsset *)self assetType];
  [coderCopy encodeObject:assetType forKey:@"assetType"];

  assetURL = [(ASDJobAsset *)self assetURL];
  [coderCopy encodeObject:assetURL forKey:@"assetURL"];

  bytesTotal = [(ASDJobAsset *)self bytesTotal];
  [coderCopy encodeObject:bytesTotal forKey:@"bytesTotal"];

  dPInfo = [(ASDJobAsset *)self dPInfo];
  [coderCopy encodeObject:dPInfo forKey:@"assetDPInfo"];

  expectedDiskspace = [(ASDJobAsset *)self expectedDiskspace];
  [coderCopy encodeObject:expectedDiskspace forKey:@"expectedDiskspace"];

  hashArrayData = [(ASDJobAsset *)self hashArrayData];
  [coderCopy encodeObject:hashArrayData forKey:@"hashArrayData"];

  hashType = [(ASDJobAsset *)self hashType];
  [coderCopy encodeObject:hashType forKey:@"hashType"];

  initialODRSize = [(ASDJobAsset *)self initialODRSize];
  [coderCopy encodeObject:initialODRSize forKey:@"initialODRSize"];

  [coderCopy encodeBool:-[ASDJobAsset isExternal](self forKey:{"isExternal"), @"isExternal"}];
  [coderCopy encodeBool:-[ASDJobAsset isLocallyCacheable](self forKey:{"isLocallyCacheable"), @"isLocallyCacheable"}];
  [coderCopy encodeBool:-[ASDJobAsset isZipStreamable](self forKey:{"isZipStreamable"), @"isZipStreamable"}];
  numberOfBytesToHash = [(ASDJobAsset *)self numberOfBytesToHash];
  [coderCopy encodeObject:numberOfBytesToHash forKey:@"numberOfBytesToHash"];

  sinfs = [(ASDJobAsset *)self sinfs];
  [coderCopy encodeObject:sinfs forKey:@"sinfs"];

  storeDownloadKey = [(ASDJobAsset *)self storeDownloadKey];
  [coderCopy encodeObject:storeDownloadKey forKey:@"storeDownloadKey"];

  variantID = [(ASDJobAsset *)self variantID];
  [coderCopy encodeObject:variantID forKey:@"variantID"];
}

@end