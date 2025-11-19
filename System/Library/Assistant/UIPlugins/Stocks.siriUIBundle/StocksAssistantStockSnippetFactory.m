@interface StocksAssistantStockSnippetFactory
- (id)viewControllerForSnippet:(id)a3;
@end

@implementation StocksAssistantStockSnippetFactory

- (id)viewControllerForSnippet:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [[StocksAssistantStockSnippetController alloc] initWithAceObject:v3];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Expected SAStockSnippet, got %@", &v6, 0xCu);
    }

    v4 = 0;
  }

  return v4;
}

@end