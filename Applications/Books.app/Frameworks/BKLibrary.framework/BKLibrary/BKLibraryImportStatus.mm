@interface BKLibraryImportStatus
+ (id)statusWithAssetID:(id)a3 progressValue:(double)a4;
- (BKLibraryImportStatus)initWithAssetID:(id)a3 progressValue:(double)a4;
- (NSString)description;
- (void)updateWithStatus:(id)a3;
@end

@implementation BKLibraryImportStatus

+ (id)statusWithAssetID:(id)a3 progressValue:(double)a4
{
  v6 = a3;
  v7 = [[a1 alloc] initWithAssetID:v6 progressValue:a4];

  return v7;
}

- (BKLibraryImportStatus)initWithAssetID:(id)a3 progressValue:(double)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = BKLibraryImportStatus;
  v7 = [(BKLibraryImportStatus *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    assetID = v7->_assetID;
    v7->_assetID = v8;

    v7->_progressValue = a4;
  }

  return v7;
}

- (void)updateWithStatus:(id)a3
{
  v9 = a3;
  v4 = [v9 assetID];
  v5 = [(BKLibraryImportStatus *)self assetID];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    [v9 progressValue];
    if (v7 != self->_progressValue)
    {
      [(BKLibraryImportStatus *)self willChangeValueForKey:@"progressValue"];
      [v9 progressValue];
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