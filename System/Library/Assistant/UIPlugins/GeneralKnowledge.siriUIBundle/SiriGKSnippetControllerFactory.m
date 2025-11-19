@interface SiriGKSnippetControllerFactory
- (id)viewControllerForAceObject:(id)a3;
- (id)viewControllerForSnippet:(id)a3 error:(id *)a4;
@end

@implementation SiriGKSnippetControllerFactory

- (id)viewControllerForSnippet:(id)a3 error:(id *)a4
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [[SiriGKSnippetViewController alloc] initWithSnippet:v5];
  }

  else if (a4)
  {
    [NSError errorWithDomain:SiriUISnippetPluginErrorDomain code:100 userInfo:0];
    *a4 = v6 = 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)viewControllerForAceObject:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [[SiriGKImageDetailViewController alloc] initWithImageViewSnippet:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end