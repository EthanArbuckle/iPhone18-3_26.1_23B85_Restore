@interface LSProcessCanAccessProgressPort
@end

@implementation LSProcessCanAccessProgressPort

void ___LSProcessCanAccessProgressPort_block_invoke()
{
  v1 = [__LSDefaultsGetSharedInstance() serviceNameForConnectionType:5];
  v0 = _LSGetAuditTokenForSelf();
  _LSProcessCanAccessProgressPort_canAccessProgressPort = _LSCheckMachPortAccessForAuditToken(v0, v1) != 0;
}

@end