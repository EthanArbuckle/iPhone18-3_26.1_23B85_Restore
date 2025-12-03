@interface StoreAsset
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation StoreAsset

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[StoreAsset allocWithZone:](StoreAsset init];
  v5->_packageFormat = self->_packageFormat;
  v5->_assetType = self->_assetType;
  v6 = [(NSDictionary *)self->_backgroundAssetMetadata copyWithZone:zone];
  backgroundAssetMetadata = v5->_backgroundAssetMetadata;
  v5->_backgroundAssetMetadata = v6;

  v8 = [(NSNumber *)self->_bytesTotal copyWithZone:zone];
  bytesTotal = v5->_bytesTotal;
  v5->_bytesTotal = v8;

  v10 = [(NSArray *)self->_clearHashes copyWithZone:zone];
  clearHashes = v5->_clearHashes;
  v5->_clearHashes = v10;

  v12 = [(NSData *)self->_dpInfo copyWithZone:zone];
  dpInfo = v5->_dpInfo;
  v5->_dpInfo = v12;

  v14 = [(NSNumber *)self->_expectedDiskspace copyWithZone:zone];
  expectedDiskspace = v5->_expectedDiskspace;
  v5->_expectedDiskspace = v14;

  v16 = [(NSArray *)self->_hashes copyWithZone:zone];
  hashes = v5->_hashes;
  v5->_hashes = v16;

  v18 = [(NSNumber *)self->_hashType copyWithZone:zone];
  hashType = v5->_hashType;
  v5->_hashType = v18;

  v20 = [(NSNumber *)self->_initialODRSize copyWithZone:zone];
  initialODRSize = v5->_initialODRSize;
  v5->_initialODRSize = v20;

  v5->_locallyCacheable = self->_locallyCacheable;
  v22 = [(NSString *)self->_md5 copyWithZone:zone];
  md5 = v5->_md5;
  v5->_md5 = v22;

  v24 = [(NSNumber *)self->_numberOfBytesToHash copyWithZone:zone];
  numberOfBytesToHash = v5->_numberOfBytesToHash;
  v5->_numberOfBytesToHash = v24;

  v26 = [(NSArray *)self->_priorVariantIdentifiers copyWithZone:zone];
  priorVariantIdentifiers = v5->_priorVariantIdentifiers;
  v5->_priorVariantIdentifiers = v26;

  v28 = [(NSNumber *)self->_priorVersionEvid copyWithZone:zone];
  priorVersionEvid = v5->_priorVersionEvid;
  v5->_priorVersionEvid = v28;

  v30 = [(NSData *)self->_sinf copyWithZone:zone];
  sinf = v5->_sinf;
  v5->_sinf = v30;

  v32 = [(NSString *)self->_variantID copyWithZone:zone];
  variantID = v5->_variantID;
  v5->_variantID = v32;

  v5->_zipStreamable = self->_zipStreamable;
  return v5;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = StoreAsset;
  v3 = [(StoreAsset *)&v6 description];
  v4 = [NSString stringWithFormat:@"%@: {URL = %@ variant = %@; delta = %d}", v3, self->_assetURL, self->_variantDescriptor, self->_assetType == 3];;

  return v4;
}

@end