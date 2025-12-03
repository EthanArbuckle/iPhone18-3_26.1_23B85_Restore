@interface BKLibraryImportStatus
+ (id)statusWithAssetID:(id)d progressValue:(double)value;
- (BKLibraryImportStatus)initWithAssetID:(id)d progressValue:(double)value;
- (NSString)description;
- (void)updateWithStatus:(id)status;
@end

@implementation BKLibraryImportStatus

+ (id)statusWithAssetID:(id)d progressValue:(double)value
{
  dCopy = d;
  v7 = [[self alloc] initWithAssetID:dCopy progressValue:value];

  return v7;
}

- (BKLibraryImportStatus)initWithAssetID:(id)d progressValue:(double)value
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = BKLibraryImportStatus;
  v7 = [(BKLibraryImportStatus *)&v11 init];
  if (v7)
  {
    v8 = [dCopy copy];
    assetID = v7->_assetID;
    v7->_assetID = v8;

    v7->_progressValue = value;
  }

  return v7;
}

- (void)updateWithStatus:(id)status
{
  statusCopy = status;
  assetID = [statusCopy assetID];
  assetID2 = [(BKLibraryImportStatus *)self assetID];
  v6 = [assetID isEqualToString:assetID2];

  if (v6)
  {
    [statusCopy progressValue];
    if (v7 != self->_progressValue)
    {
      [(BKLibraryImportStatus *)self willChangeValueForKey:@"progressValue"];
      [statusCopy progressValue];
      self->_progressValue = v8;
      [(BKLibraryImportStatus *)self didChangeValueForKey:@"progressValue"];
    }
  }
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"<%@ %p assetID=%@ progressValue=%f>", v4, self, self->_assetID, *&self->_progressValue];

  return v5;
}

@end