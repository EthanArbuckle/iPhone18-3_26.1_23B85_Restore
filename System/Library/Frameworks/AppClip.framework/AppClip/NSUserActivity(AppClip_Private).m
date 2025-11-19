@interface NSUserActivity(AppClip_Private)
- (id)appClipActivationPayload;
- (void)appClipActivationPayload;
- (void)setAppClipActivationPayload:()AppClip_Private;
@end

@implementation NSUserActivity(AppClip_Private)

- (id)appClipActivationPayload
{
  v1 = [a1 _payloadForIdentifier:@"com.apple.AppClip.useractivity.appClipActivationPayload"];
  v6 = 0;
  v2 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v1 error:&v6];
  v3 = v6;
  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [(NSUserActivity(AppClip_Private) *)v3 appClipActivationPayload];
    }

    v4 = 0;
  }

  else
  {
    v4 = v2;
  }

  return v4;
}

- (void)setAppClipActivationPayload:()AppClip_Private
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = 0;
    v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v7];
    v6 = v7;
    if (v6)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [NSUserActivity(AppClip_Private) setAppClipActivationPayload:v6];
      }
    }

    else
    {
      [a1 _setPayload:v5 object:0 identifier:@"com.apple.AppClip.useractivity.appClipActivationPayload" dirty:0];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NSUserActivity(AppClip_Private) setAppClipActivationPayload:];
  }
}

- (void)appClipActivationPayload
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_236A7C000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "An error occurred when unarchiving activation payload, %@", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)setAppClipActivationPayload:()AppClip_Private .cold.2(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_236A7C000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "An error occurred when archiving activation payload, %@", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end