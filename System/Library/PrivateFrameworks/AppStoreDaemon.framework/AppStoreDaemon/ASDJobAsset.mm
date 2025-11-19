@interface ASDJobAsset
- (ASDJobAsset)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASDJobAsset

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[ASDJobAsset allocWithZone:](ASDJobAsset init];
  v6 = [(NSString *)self->_assetType copyWithZone:a3];
  assetType = v5->_assetType;
  v5->_assetType = v6;

  v8 = [(NSString *)self->_assetURL copyWithZone:a3];
  assetURL = v5->_assetURL;
  v5->_assetURL = v8;

  v10 = [(NSNumber *)self->_bytesTotal copyWithZone:a3];
  bytesTotal = v5->_bytesTotal;
  v5->_bytesTotal = v10;

  v12 = [(NSData *)self->_dPInfo copyWithZone:a3];
  dPInfo = v5->_dPInfo;
  v5->_dPInfo = v12;

  v14 = [(NSNumber *)self->_expectedDiskspace copyWithZone:a3];
  expectedDiskspace = v5->_expectedDiskspace;
  v5->_expectedDiskspace = v14;

  v16 = [(NSData *)self->_hashArrayData copyWithZone:a3];
  hashArrayData = v5->_hashArrayData;
  v5->_hashArrayData = v16;

  v18 = [(NSNumber *)self->_hashType copyWithZone:a3];
  hashType = v5->_hashType;
  v5->_hashType = v18;

  v20 = [(NSNumber *)self->_initialODRSize copyWithZone:a3];
  initialODRSize = v5->_initialODRSize;
  v5->_initialODRSize = v20;

  v5->_isExternal = self->_isExternal;
  v5->_isLocallyCacheable = self->_isLocallyCacheable;
  v5->_isZipStreamable = self->_isZipStreamable;
  v22 = [(NSNumber *)self->_numberOfBytesToHash copyWithZone:a3];
  numberOfBytesToHash = v5->_numberOfBytesToHash;
  v5->_numberOfBytesToHash = v22;

  v24 = [(NSData *)self->_sinfs copyWithZone:a3];
  sinfs = v5->_sinfs;
  v5->_sinfs = v24;

  v26 = [(NSString *)self->_storeDownloadKey copyWithZone:a3];
  storeDownloadKey = v5->_storeDownloadKey;
  v5->_storeDownloadKey = v26;

  v28 = [(NSString *)self->_variantID copyWithZone:a3];
  variantID = v5->_variantID;
  v5->_variantID = v28;

  return v5;
}

- (ASDJobAsset)initWithCoder:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = ASDJobAsset;
  v5 = [(ASDJobAsset *)&v31 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetType"];
    assetType = v5->_assetType;
    v5->_assetType = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetURL"];
    assetURL = v5->_assetURL;
    v5->_assetURL = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bytesTotal"];
    bytesTotal = v5->_bytesTotal;
    v5->_bytesTotal = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetDPInfo"];
    dPInfo = v5->_dPInfo;
    v5->_dPInfo = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"expectedDiskspace"];
    expectedDiskspace = v5->_expectedDiskspace;
    v5->_expectedDiskspace = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hashArrayData"];
    hashArrayData = v5->_hashArrayData;
    v5->_hashArrayData = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hashType"];
    hashType = v5->_hashType;
    v5->_hashType = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"initialODRSize"];
    initialODRSize = v5->_initialODRSize;
    v5->_initialODRSize = v20;

    v5->_isExternal = [v4 decodeBoolForKey:@"isExternal"];
    v5->_isLocallyCacheable = [v4 decodeBoolForKey:@"isZipStreamable"];
    v5->_isZipStreamable = [v4 decodeBoolForKey:@"isZipStreamable"];
    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"numberOfBytesToHash"];
    numberOfBytesToHash = v5->_numberOfBytesToHash;
    v5->_numberOfBytesToHash = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sinfs"];
    sinfs = v5->_sinfs;
    v5->_sinfs = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"storeDownloadKey"];
    storeDownloadKey = v5->_storeDownloadKey;
    v5->_storeDownloadKey = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"variantID"];
    variantID = v5->_variantID;
    v5->_variantID = v28;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ASDJobAsset *)self assetType];
  [v4 encodeObject:v5 forKey:@"assetType"];

  v6 = [(ASDJobAsset *)self assetURL];
  [v4 encodeObject:v6 forKey:@"assetURL"];

  v7 = [(ASDJobAsset *)self bytesTotal];
  [v4 encodeObject:v7 forKey:@"bytesTotal"];

  v8 = [(ASDJobAsset *)self dPInfo];
  [v4 encodeObject:v8 forKey:@"assetDPInfo"];

  v9 = [(ASDJobAsset *)self expectedDiskspace];
  [v4 encodeObject:v9 forKey:@"expectedDiskspace"];

  v10 = [(ASDJobAsset *)self hashArrayData];
  [v4 encodeObject:v10 forKey:@"hashArrayData"];

  v11 = [(ASDJobAsset *)self hashType];
  [v4 encodeObject:v11 forKey:@"hashType"];

  v12 = [(ASDJobAsset *)self initialODRSize];
  [v4 encodeObject:v12 forKey:@"initialODRSize"];

  [v4 encodeBool:-[ASDJobAsset isExternal](self forKey:{"isExternal"), @"isExternal"}];
  [v4 encodeBool:-[ASDJobAsset isLocallyCacheable](self forKey:{"isLocallyCacheable"), @"isLocallyCacheable"}];
  [v4 encodeBool:-[ASDJobAsset isZipStreamable](self forKey:{"isZipStreamable"), @"isZipStreamable"}];
  v13 = [(ASDJobAsset *)self numberOfBytesToHash];
  [v4 encodeObject:v13 forKey:@"numberOfBytesToHash"];

  v14 = [(ASDJobAsset *)self sinfs];
  [v4 encodeObject:v14 forKey:@"sinfs"];

  v15 = [(ASDJobAsset *)self storeDownloadKey];
  [v4 encodeObject:v15 forKey:@"storeDownloadKey"];

  v16 = [(ASDJobAsset *)self variantID];
  [v4 encodeObject:v16 forKey:@"variantID"];
}

@end