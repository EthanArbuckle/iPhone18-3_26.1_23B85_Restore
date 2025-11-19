@interface ILClassificationUIExtensionViewController
- (ILClassificationResponse)classificationResponseForRequest:(ILClassificationRequest *)request;
- (void)prepareForClassificationRequest:(ILClassificationRequest *)request;
@end

@implementation ILClassificationUIExtensionViewController

- (void)prepareForClassificationRequest:(ILClassificationRequest *)request
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = ILDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[ILClassificationUIExtensionViewController prepareForClassificationRequest:]";
    _os_log_impl(&dword_238A6C000, v3, OS_LOG_TYPE_DEFAULT, "[WARN] Client did not override %s", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (ILClassificationResponse)classificationResponseForRequest:(ILClassificationRequest *)request
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CD2C28]) initWithClassificationAction:0];
  v4 = ILDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[ILClassificationUIExtensionViewController classificationResponseForRequest:]";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_238A6C000, v4, OS_LOG_TYPE_DEFAULT, "[WARN] Client did not override %s, returning empty response: %@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];

  return v3;
}

@end