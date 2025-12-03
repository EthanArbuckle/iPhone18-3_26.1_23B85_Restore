@interface NSString(AXPropertyListCoersion)
- (id)_axReconstitutedRepresentationForDictionaryKeyReplacement;
@end

@implementation NSString(AXPropertyListCoersion)

- (id)_axReconstitutedRepresentationForDictionaryKeyReplacement
{
  v2 = [self length];
  if (v2 > [@"_AXSNSNumber" length] && (objc_msgSend(self, "substringToIndex:", objc_msgSend(@"_AXSNSNumber", "length")), v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "isEqualToString:", @"_AXSNSNumber"), v3, v4))
  {
    v5 = [self substringFromIndex:{objc_msgSend(@"_AXSNSNumber", "length")}];
    selfCopy = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v5, "longLongValue")}];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

@end