@interface CKProcessInfo
+ (CKProcessInfo)processInfo;
- (BOOL)useDebugServices;
- (CKProcessInfo)init;
@end

@implementation CKProcessInfo

+ (CKProcessInfo)processInfo
{
  if (qword_1ED4B6078 != -1)
  {
    dispatch_once(&qword_1ED4B6078, &unk_1EFA30810);
  }

  v3 = qword_1ED4B6070;

  return v3;
}

- (CKProcessInfo)init
{
  v10.receiver = self;
  v10.super_class = CKProcessInfo;
  v2 = [(CKProcessInfo *)&v10 init];
  if (v2)
  {
    objc_opt_self();
    if (xpc_is_system_session())
    {
      v3 = 1;
    }

    else
    {
      v3 = 4 * (geteuid() > 0x1F4);
    }

    v2->_sessionType = v3;
    v4 = [CKEntitlements alloc];
    v7 = objc_msgSend_initWithCurrentProcess(v4, v5, v6);
    entitlements = v2->_entitlements;
    v2->_entitlements = v7;
  }

  return v2;
}

- (BOOL)useDebugServices
{
  if (_sCKUseSystemInstalledBinariesPredicate != -1)
  {
    dispatch_once(&_sCKUseSystemInstalledBinariesPredicate, &unk_1EFA30830);
  }

  return (_sCKUseSystemInstalledBinaries & 1) == 0;
}

@end