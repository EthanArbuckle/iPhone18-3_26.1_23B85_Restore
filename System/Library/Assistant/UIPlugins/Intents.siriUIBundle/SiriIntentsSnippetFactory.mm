@interface SiriIntentsSnippetFactory
- (id)viewControllerForSnippet:(id)snippet error:(id *)error;
@end

@implementation SiriIntentsSnippetFactory

- (id)viewControllerForSnippet:(id)snippet error:(id *)error
{
  snippetCopy = snippet;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = objc_alloc_init(SiriIntentsSnippetViewController);
  }

  else if (error)
  {
    v8 = [NSError errorWithDomain:SiriUISnippetPluginErrorDomain code:100 userInfo:0];
    v9 = v8;
    v7 = 0;
    *error = v8;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end