@interface AXSSInterDeviceSearchResult
+ (id)searchResultWithPeerID:(id)a3 deviceType:(id)a4;
- (AXSSInterDeviceSearchResult)initWithPeerID:(id)a3 deviceType:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)name;
- (unint64_t)hash;
@end

@implementation AXSSInterDeviceSearchResult

+ (id)searchResultWithPeerID:(id)a3 deviceType:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithPeerID:v7 deviceType:v6];

  return v8;
}

- (AXSSInterDeviceSearchResult)initWithPeerID:(id)a3 deviceType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = AXSSInterDeviceSearchResult;
  v8 = [(AXSSInterDeviceSearchResult *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(AXSSInterDeviceSearchResult *)v8 setPeerID:v6];
    [(AXSSInterDeviceSearchResult *)v9 setDeviceType:v7];
  }

  return v9;
}

- (NSString)name
{
  v2 = [(AXSSInterDeviceSearchResult *)self peerID];
  v3 = [v2 displayName];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 peerID];
    v6 = [(AXSSInterDeviceSearchResult *)self peerID];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(AXSSInterDeviceSearchResult *)self peerID];
  v3 = [v2 hash];

  return v3;
}

@end