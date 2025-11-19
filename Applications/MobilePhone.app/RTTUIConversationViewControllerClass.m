@interface RTTUIConversationViewControllerClass
@end

@implementation RTTUIConversationViewControllerClass

void __RTTUIConversationViewControllerClass_block_invoke(id a1)
{
  RTTUIConversationViewControllerClass_sRTTUIConversationViewControllerClass = CUTWeakLinkClass();
  if (!RTTUIConversationViewControllerClass_sRTTUIConversationViewControllerClass)
  {
    v1 = PHDefaultLog();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      *v2 = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find class RTTUIConversationViewController; RTTUI may have failed to link.", v2, 2u);
    }
  }
}

@end