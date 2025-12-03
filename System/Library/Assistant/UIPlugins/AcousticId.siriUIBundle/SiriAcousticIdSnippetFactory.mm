@interface SiriAcousticIdSnippetFactory
- (id)viewControllerForAceObject:(id)object;
- (id)viewControllerForSnippet:(id)snippet error:(id *)error;
@end

@implementation SiriAcousticIdSnippetFactory

- (id)viewControllerForSnippet:(id)snippet error:(id *)error
{
  snippetCopy = snippet;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [[SiriAcousticIdSongTagViewController alloc] initWithSongTagSnippet:snippetCopy];
    if (!error)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = 0;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  if (!v6)
  {
    *error = [NSError errorWithDomain:SiriUISnippetPluginErrorDomain code:100 userInfo:0];
  }

LABEL_7:

  return v6;
}

- (id)viewControllerForAceObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = objc_alloc_init(SiriAcousticIdSpinnerViewController);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end