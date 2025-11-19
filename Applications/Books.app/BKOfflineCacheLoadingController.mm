@interface BKOfflineCacheLoadingController
- (id)prewarmForLaunchIfNeeded;
@end

@implementation BKOfflineCacheLoadingController

- (id)prewarmForLaunchIfNeeded
{
  v0 = sub_10079ACE4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10079AD34();
  v4 = sub_10079AD14();
  v5 = sub_10079AD04();
  sub_10079AE64();
  v6 = sub_10079AE44();
  sub_10079AE54();

  v7 = sub_10079AED4();
  v8 = sub_10079AED4();
  sub_10079AC64();
  v9 = sub_10079ACC4();
  v10 = sub_1007A29D4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109632;
    *(v11 + 4) = v4 & 1;
    *(v11 + 8) = 1024;
    *(v11 + 10) = v5 & 1;
    *(v11 + 14) = 1024;
    *(v11 + 16) = v7 == v8;
    _os_log_impl(&_mh_execute_header, v9, v10, "Prewarming offline cache, generate=%{BOOL}d, run=%{BOOL}d, PPT=%{BOOL}d", v11, 0x14u);
  }

  result = (*(v1 + 8))(v3, v0);
  if (v5)
  {

    [objc_opt_self() prewarmOfflineCache];
    return [objc_opt_self() prewarmOfflineCache];
  }

  return result;
}

@end