@interface SAIntentGroupSnippetTemplate
- (NSString)detailIdentifier;
@end

@implementation SAIntentGroupSnippetTemplate

- (NSString)detailIdentifier
{
  v2 = [(SAIntentGroupSnippetTemplate *)self detailSnippet];
  v3 = [v2 aceId];

  return v3;
}

@end