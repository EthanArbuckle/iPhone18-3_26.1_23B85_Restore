@interface BLDownloadStatus
- (id)bk_assetIdentifier;
@end

@implementation BLDownloadStatus

- (id)bk_assetIdentifier
{
  v3 = [(BLDownloadStatus *)self storeID];
  v4 = [v3 stringValue];

  if (![v4 length])
  {
    v5 = [(BLDownloadStatus *)self permLink];
    v6 = [NSURL URLWithString:v5];

    if (v6)
    {
      v7 = [v6 identifierFromPermlink];
    }

    else
    {
      v7 = 0;
    }

    v4 = v7;
  }

  return v4;
}

@end