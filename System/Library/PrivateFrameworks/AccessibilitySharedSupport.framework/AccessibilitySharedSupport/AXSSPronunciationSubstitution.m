@interface AXSSPronunciationSubstitution
- (BOOL)isEqualToSubstitution:(id)a3;
- (_NSRange)replacementRange;
@end

@implementation AXSSPronunciationSubstitution

- (BOOL)isEqualToSubstitution:(id)a3
{
  v4 = a3;
  v5 = [(AXSSPronunciationSubstitution *)self originalString];
  v6 = [v4 originalString];

  LOBYTE(v4) = [v5 isEqualToString:v6];
  return v4;
}

- (_NSRange)replacementRange
{
  length = self->_replacementRange.length;
  location = self->_replacementRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end