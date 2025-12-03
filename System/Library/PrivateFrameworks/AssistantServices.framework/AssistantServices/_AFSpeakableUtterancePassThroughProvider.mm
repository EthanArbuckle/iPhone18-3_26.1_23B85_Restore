@interface _AFSpeakableUtterancePassThroughProvider
- (id)stringForExpression:(id)expression containsPrivacySensitiveContents:(BOOL *)contents;
@end

@implementation _AFSpeakableUtterancePassThroughProvider

- (id)stringForExpression:(id)expression containsPrivacySensitiveContents:(BOOL *)contents
{
  if (contents)
  {
    *contents = 0;
  }

  v4 = [expression copy];

  return v4;
}

@end