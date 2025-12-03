@interface AXSSPronunciationSubstitution
- (BOOL)isEqualToSubstitution:(id)substitution;
- (_NSRange)replacementRange;
@end

@implementation AXSSPronunciationSubstitution

- (BOOL)isEqualToSubstitution:(id)substitution
{
  substitutionCopy = substitution;
  originalString = [(AXSSPronunciationSubstitution *)self originalString];
  originalString2 = [substitutionCopy originalString];

  LOBYTE(substitutionCopy) = [originalString isEqualToString:originalString2];
  return substitutionCopy;
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