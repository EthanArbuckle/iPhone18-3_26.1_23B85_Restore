@interface ILMessageFilterExtension
- (void)beginRequestWithExtensionContext:(id)a3;
@end

@implementation ILMessageFilterExtension

- (void)beginRequestWithExtensionContext:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = ILDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_238A41000, v4, OS_LOG_TYPE_DEFAULT, "context: %@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

@end