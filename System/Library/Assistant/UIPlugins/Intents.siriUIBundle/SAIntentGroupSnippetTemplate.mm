@interface SAIntentGroupSnippetTemplate
- (NSString)detailIdentifier;
@end

@implementation SAIntentGroupSnippetTemplate

- (NSString)detailIdentifier
{
  detailSnippet = [(SAIntentGroupSnippetTemplate *)self detailSnippet];
  aceId = [detailSnippet aceId];

  return aceId;
}

@end