@interface WAAnswerSnippetFactory
- (id)viewControllerForSnippet:(id)snippet;
@end

@implementation WAAnswerSnippetFactory

- (id)viewControllerForSnippet:(id)snippet
{
  snippetCopy = snippet;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [[WADetailedSnippetViewController alloc] initWithAnswerSnippet:snippetCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end