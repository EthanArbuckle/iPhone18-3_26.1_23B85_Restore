@interface RTTUIUtilitiesClass
@end

@implementation RTTUIUtilitiesClass

void __RTTUIUtilitiesClass_block_invoke(id a1)
{
  RTTUIUtilitiesClass_sRTTUIUtilitiesClass = CUTWeakLinkClass();
  if (!RTTUIUtilitiesClass_sRTTUIUtilitiesClass)
  {
    v1 = PHDefaultLog();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      *v2 = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find class RTTUIUtilities; RTTUI.framework may have failed to link.", v2, 2u);
    }
  }
}

@end