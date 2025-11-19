@interface AXAuditObjectTransportInfo
- (AXAuditObjectTransportInfo)initWithTransportKey:(id)a3;
@end

@implementation AXAuditObjectTransportInfo

- (AXAuditObjectTransportInfo)initWithTransportKey:(id)a3
{
  v5 = a3;
  v6 = [(AXAuditObjectTransportInfo *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_transportKey, a3);
  }

  return v7;
}

@end