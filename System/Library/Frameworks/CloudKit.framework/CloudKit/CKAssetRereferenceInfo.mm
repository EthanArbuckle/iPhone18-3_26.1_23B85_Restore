@interface CKAssetRereferenceInfo
- (CKAssetRereferenceInfo)initWithSourceZoneID:(id)d;
@end

@implementation CKAssetRereferenceInfo

- (CKAssetRereferenceInfo)initWithSourceZoneID:(id)d
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = CKAssetRereferenceInfo;
  v7 = [(CKAssetRereferenceInfo *)&v11 init];
  if (v7)
  {
    v8 = objc_msgSend_copy(dCopy, v5, v6);
    sourceZoneID = v7->_sourceZoneID;
    v7->_sourceZoneID = v8;
  }

  return v7;
}

@end