@interface SiriUSSnippetFactory
- (SiriUSSnippetFactory)init;
- (id)viewControllerForSnippet:(id)snippet error:(id *)error;
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

- (id)viewControllerForSnippet:(id)snippet error:(id *)error
{
  snippetCopy = snippet;
  translators = self->_translators;
  groupIdentifier = [snippetCopy groupIdentifier];
  v9 = [(NSDictionary *)translators objectForKey:groupIdentifier];

  v10 = [v9 universalSearchResultsForSnippet:snippetCopy error:error];
  v11 = v10;
  if (error)
  {
    if (!*error)
    {
      if (![v10 count])
      {
        [NSError errorWithDomain:SiriUISnippetPluginErrorDomain code:101 userInfo:0];
        *error = v12 = 0;
        goto LABEL_11;
      }

LABEL_6:
      firstObject = [v11 firstObject];
      results = [firstObject results];
      firstObject2 = [results firstObject];

      card = [firstObject2 card];

      if (card)
      {
        v17 = [SiriUSCardSnippetViewController alloc];
        card2 = [firstObject2 card];
        v12 = [(SiriUSCardSnippetViewController *)v17 initWithUniversalSearchCard:card2 snippet:snippetCopy];
      }

      else
      {
        v12 = [[SiriUSSnippetViewController alloc] initWithUniversalSearchResults:v11 snippet:snippetCopy];
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