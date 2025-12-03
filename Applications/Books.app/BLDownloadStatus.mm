@interface BLDownloadStatus
- (id)bk_assetIdentifier;
@end

@implementation BLDownloadStatus

- (id)bk_assetIdentifier
{
  storeID = [(BLDownloadStatus *)self storeID];
  stringValue = [storeID stringValue];

  if (![stringValue length])
  {
    permLink = [(BLDownloadStatus *)self permLink];
    v6 = [NSURL URLWithString:permLink];

    if (v6)
    {
      identifierFromPermlink = [v6 identifierFromPermlink];
    }

    else
    {
      identifierFromPermlink = 0;
    }

    stringValue = identifierFromPermlink;
  }

  return stringValue;
}

@end