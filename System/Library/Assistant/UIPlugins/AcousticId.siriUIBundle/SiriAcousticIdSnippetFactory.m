@interface SiriAcousticIdSnippetFactory
- (id)viewControllerForAceObject:(id)a3;
- (id)viewControllerForSnippet:(id)a3 error:(id *)a4;
@end

@implementation SiriAcousticIdSnippetFactory

- (id)viewControllerForSnippet:(id)a3 error:(id *)a4
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [[SiriAcousticIdSongTagViewController alloc] initWithSongTagSnippet:v5];
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = 0;
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  if (!v6)
  {
    *a4 = [NSError errorWithDomain:SiriUISnippetPluginErrorDomain code:100 userInfo:0];
  }

LABEL_7:

  return v6;
}

- (id)viewControllerForAceObject:(id)a3
{
  v3 = a3;
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