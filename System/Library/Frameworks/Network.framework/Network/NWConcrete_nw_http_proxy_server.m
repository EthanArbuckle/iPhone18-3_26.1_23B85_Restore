@interface NWConcrete_nw_http_proxy_server
- (void)dealloc;
@end

@implementation NWConcrete_nw_http_proxy_server

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v3 = gLogObj;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    v8 = "[NWConcrete_nw_http_proxy_server dealloc]";
    _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_INFO, "%{public}s deallocating proxy server", buf, 0xCu);
  }

  v4 = *(self + 8);
  if (v4)
  {
    _nw_array_apply(v4, &__block_literal_global_66120);
    v5 = *(self + 8);
  }

  else
  {
    v5 = 0;
  }

  *(self + 8) = 0;

  v6.receiver = self;
  v6.super_class = NWConcrete_nw_http_proxy_server;
  [(NWConcrete_nw_http_proxy_server *)&v6 dealloc];
}

@end