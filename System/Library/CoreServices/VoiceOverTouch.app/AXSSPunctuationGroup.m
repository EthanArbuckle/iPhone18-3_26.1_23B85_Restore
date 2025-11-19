@interface AXSSPunctuationGroup
- (BOOL)isAllPunctuationGroup;
- (BOOL)isNonePunctuationGroup;
- (BOOL)isSomePunctuationGroup;
@end

@implementation AXSSPunctuationGroup

- (BOOL)isAllPunctuationGroup
{
  v2 = [(AXSSPunctuationGroup *)self uuid];
  v3 = [v2 isEqual:AXSSVoiceOverPunctuationGroupAll];

  return v3;
}

- (BOOL)isSomePunctuationGroup
{
  v2 = [(AXSSPunctuationGroup *)self uuid];
  v3 = [v2 isEqual:AXSSVoiceOverPunctuationGroupSome];

  return v3;
}

- (BOOL)isNonePunctuationGroup
{
  v2 = [(AXSSPunctuationGroup *)self uuid];
  v3 = [v2 isEqual:AXSSVoiceOverPunctuationGroupNone];

  return v3;
}

@end