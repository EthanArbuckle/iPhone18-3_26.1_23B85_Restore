@interface AXSSInterDeviceSearchResult
+ (id)searchResultWithPeerID:(id)d deviceType:(id)type;
- (AXSSInterDeviceSearchResult)initWithPeerID:(id)d deviceType:(id)type;
- (BOOL)isEqual:(id)equal;
- (NSString)name;
- (unint64_t)hash;
@end

@implementation AXSSInterDeviceSearchResult

+ (id)searchResultWithPeerID:(id)d deviceType:(id)type
{
  typeCopy = type;
  dCopy = d;
  v8 = [[self alloc] initWithPeerID:dCopy deviceType:typeCopy];

  return v8;
}

- (AXSSInterDeviceSearchResult)initWithPeerID:(id)d deviceType:(id)type
{
  dCopy = d;
  typeCopy = type;
  v11.receiver = self;
  v11.super_class = AXSSInterDeviceSearchResult;
  v8 = [(AXSSInterDeviceSearchResult *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(AXSSInterDeviceSearchResult *)v8 setPeerID:dCopy];
    [(AXSSInterDeviceSearchResult *)v9 setDeviceType:typeCopy];
  }

  return v9;
}

- (NSString)name
{
  peerID = [(AXSSInterDeviceSearchResult *)self peerID];
  displayName = [peerID displayName];

  return displayName;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    peerID = [equalCopy peerID];
    peerID2 = [(AXSSInterDeviceSearchResult *)self peerID];
    v7 = [peerID isEqual:peerID2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  peerID = [(AXSSInterDeviceSearchResult *)self peerID];
  v3 = [peerID hash];

  return v3;
}

@end