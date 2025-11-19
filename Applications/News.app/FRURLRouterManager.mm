@interface FRURLRouterManager
- (BOOL)handleOpenURL:(id)a3 options:(id)a4 analyticsReferral:(id)a5;
- (FRURLRouterManager)init;
- (void)addRoutable:(id)a3;
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

- (BOOL)handleOpenURL:(id)a3 options:(id)a4 analyticsReferral:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = FRNavigationLog;
  if (os_log_type_enabled(FRNavigationLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v26 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "URLRouterManager received URL to handle <%{public}@>", buf, 0xCu);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = [(FRURLRouterManager *)self routers];
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
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
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v21 + 1) + 8 * i);
        v18 = FRNavigationLog;
        if (os_log_type_enabled(FRNavigationLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v20;
          v26 = v8;
          v27 = 2112;
          v28 = v17;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "URLRouterManager sending URL <%{public}@> to router %@", buf, 0x16u);
        }

        if ([v17 handleOpenURL:v8 options:v9 analyticsReferral:{v10, v20}])
        {
          LOBYTE(v13) = 1;
          goto LABEL_15;
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
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

- (void)addRoutable:(id)a3
{
  v4 = a3;
  v5 = [(FRURLRouterManager *)self routers];
  [v5 addObject:v4];
}

@end