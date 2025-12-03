@interface AXAuditObjectTransportInfo
- (AXAuditObjectTransportInfo)initWithTransportKey:(id)key;
@end

@implementation AXAuditObjectTransportInfo

- (AXAuditObjectTransportInfo)initWithTransportKey:(id)key
{
  keyCopy = key;
  v6 = [(AXAuditObjectTransportInfo *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_transportKey, key);
  }

  return v7;
}

@end