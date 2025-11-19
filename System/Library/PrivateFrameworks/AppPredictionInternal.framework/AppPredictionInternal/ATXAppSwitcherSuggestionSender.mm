@interface ATXAppSwitcherSuggestionSender
- (void)blendingLayerDidUpdateAppSwitcherUICache;
@end

@implementation ATXAppSwitcherSuggestionSender

- (void)blendingLayerDidUpdateAppSwitcherUICache
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = __atxlog_handle_blending();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_2263AA000, v2, OS_LOG_TYPE_DEFAULT, "%@ - received new ui cache", &v6, 0xCu);
  }

  notify_post([*MEMORY[0x277CEB1C8] UTF8String]);
  v5 = *MEMORY[0x277D85DE8];
}

@end