@interface SiriGKSnippetControllerFactory
- (id)viewControllerForAceObject:(id)object;
- (id)viewControllerForSnippet:(id)snippet error:(id *)error;
@end

@implementation SiriGKSnippetControllerFactory

- (id)viewControllerForSnippet:(id)snippet error:(id *)error
{
  snippetCopy = snippet;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [[SiriGKSnippetViewController alloc] initWithSnippet:snippetCopy];
  }

  else if (error)
  {
    [NSError errorWithDomain:SiriUISnippetPluginErrorDomain code:100 userInfo:0];
    *error = v6 = 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)viewControllerForAceObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [[SiriGKImageDetailViewController alloc] initWithImageViewSnippet:objectCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end