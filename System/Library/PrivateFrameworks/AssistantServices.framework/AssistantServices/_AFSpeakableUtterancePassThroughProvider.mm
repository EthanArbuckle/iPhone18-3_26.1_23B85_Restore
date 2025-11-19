@interface _AFSpeakableUtterancePassThroughProvider
- (id)stringForExpression:(id)a3 containsPrivacySensitiveContents:(BOOL *)a4;
@end

@implementation _AFSpeakableUtterancePassThroughProvider

- (id)stringForExpression:(id)a3 containsPrivacySensitiveContents:(BOOL *)a4
{
  if (a4)
  {
    *a4 = 0;
  }

  v4 = [a3 copy];

  return v4;
}

@end