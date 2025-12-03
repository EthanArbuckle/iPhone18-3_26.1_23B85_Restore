@interface AXSSPunctuationGroup
- (BOOL)isAllPunctuationGroup;
- (BOOL)isNonePunctuationGroup;
- (BOOL)isSomePunctuationGroup;
@end

@implementation AXSSPunctuationGroup

- (BOOL)isAllPunctuationGroup
{
  uuid = [(AXSSPunctuationGroup *)self uuid];
  v3 = [uuid isEqual:AXSSVoiceOverPunctuationGroupAll];

  return v3;
}

- (BOOL)isSomePunctuationGroup
{
  uuid = [(AXSSPunctuationGroup *)self uuid];
  v3 = [uuid isEqual:AXSSVoiceOverPunctuationGroupSome];

  return v3;
}

- (BOOL)isNonePunctuationGroup
{
  uuid = [(AXSSPunctuationGroup *)self uuid];
  v3 = [uuid isEqual:AXSSVoiceOverPunctuationGroupNone];

  return v3;
}

@end