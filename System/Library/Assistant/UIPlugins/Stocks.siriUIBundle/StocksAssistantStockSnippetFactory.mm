@interface StocksAssistantStockSnippetFactory
- (id)viewControllerForSnippet:(id)snippet;
@end

@implementation StocksAssistantStockSnippetFactory

- (id)viewControllerForSnippet:(id)snippet
{
  snippetCopy = snippet;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [[StocksAssistantStockSnippetController alloc] initWithAceObject:snippetCopy];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = snippetCopy;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Expected SAStockSnippet, got %@", &v6, 0xCu);
    }

    v4 = 0;
  }

  return v4;
}

@end