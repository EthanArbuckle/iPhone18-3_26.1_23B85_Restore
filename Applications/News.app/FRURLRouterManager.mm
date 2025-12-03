@interface FRURLRouterManager
- (BOOL)handleOpenURL:(id)l options:(id)options analyticsReferral:(id)referral;
- (FRURLRouterManager)init;
- (void)addRoutable:(id)routable;
@end

@implementation FRURLRouterManager

- (FRURLRouterManager)init
{
  v6.receiver = self;
  v6.super_class = FRURLRouterManager;
  v2 = [(FRURLRouterManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    routers = v2->_routers;
    v2->_routers = v3;
  }

  return v2;
}

- (BOOL)handleOpenURL:(id)l options:(id)options analyticsReferral:(id)referral
{
  lCopy = l;
  optionsCopy = options;
  referralCopy = referral;
  v11 = FRNavigationLog;
  if (os_log_type_enabled(FRNavigationLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v26 = lCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "URLRouterManager received URL to handle <%{public}@>", buf, 0xCu);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  routers = [(FRURLRouterManager *)self routers];
  v13 = [routers countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v13)
  {
    v15 = *v22;
    *&v14 = 138543618;
    v20 = v14;
    while (2)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(routers);
        }

        v17 = *(*(&v21 + 1) + 8 * i);
        v18 = FRNavigationLog;
        if (os_log_type_enabled(FRNavigationLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v20;
          v26 = lCopy;
          v27 = 2112;
          v28 = v17;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "URLRouterManager sending URL <%{public}@> to router %@", buf, 0x16u);
        }

        if ([v17 handleOpenURL:lCopy options:optionsCopy analyticsReferral:{referralCopy, v20}])
        {
          LOBYTE(v13) = 1;
          goto LABEL_15;
        }
      }

      v13 = [routers countByEnumeratingWithState:&v21 objects:v29 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  return v13;
}

- (void)addRoutable:(id)routable
{
  routableCopy = routable;
  routers = [(FRURLRouterManager *)self routers];
  [routers addObject:routableCopy];
}

@end