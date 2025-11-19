@interface SiriUSSnippetFactory
- (SiriUSSnippetFactory)init;
- (id)viewControllerForSnippet:(id)a3 error:(id *)a4;
@end

@implementation SiriUSSnippetFactory

- (SiriUSSnippetFactory)init
{
  v7.receiver = self;
  v7.super_class = SiriUSSnippetFactory;
  v2 = [(SiriUSSnippetFactory *)&v7 init];
  if (v2)
  {
    v8 = SAUSGroupIdentifier;
    v3 = objc_alloc_init(SiriUniversalSearchSnippetTranslator);
    v9 = v3;
    v4 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    translators = v2->_translators;
    v2->_translators = v4;
  }

  return v2;
}

- (id)viewControllerForSnippet:(id)a3 error:(id *)a4
{
  v6 = a3;
  translators = self->_translators;
  v8 = [v6 groupIdentifier];
  v9 = [(NSDictionary *)translators objectForKey:v8];

  v10 = [v9 universalSearchResultsForSnippet:v6 error:a4];
  v11 = v10;
  if (a4)
  {
    if (!*a4)
    {
      if (![v10 count])
      {
        [NSError errorWithDomain:SiriUISnippetPluginErrorDomain code:101 userInfo:0];
        *a4 = v12 = 0;
        goto LABEL_11;
      }

LABEL_6:
      v13 = [v11 firstObject];
      v14 = [v13 results];
      v15 = [v14 firstObject];

      v16 = [v15 card];

      if (v16)
      {
        v17 = [SiriUSCardSnippetViewController alloc];
        v18 = [v15 card];
        v12 = [(SiriUSCardSnippetViewController *)v17 initWithUniversalSearchCard:v18 snippet:v6];
      }

      else
      {
        v12 = [[SiriUSSnippetViewController alloc] initWithUniversalSearchResults:v11 snippet:v6];
      }

      goto LABEL_11;
    }
  }

  else if ([v10 count])
  {
    goto LABEL_6;
  }

  v12 = 0;
LABEL_11:

  return v12;
}

@end