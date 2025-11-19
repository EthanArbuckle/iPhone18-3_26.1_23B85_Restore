@interface LSEntitledForPluginQuery
@end

@implementation LSEntitledForPluginQuery

void ___LSEntitledForPluginQuery_block_invoke()
{
  v0 = _LSPluginFaultLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    ___LSEntitledForPluginQuery_block_invoke_cold_1(v0);
  }
}

@end