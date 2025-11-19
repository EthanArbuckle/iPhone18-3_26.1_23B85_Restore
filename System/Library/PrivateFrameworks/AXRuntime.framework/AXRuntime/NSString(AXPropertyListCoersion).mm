@interface NSString(AXPropertyListCoersion)
- (id)_axReconstitutedRepresentationForDictionaryKeyReplacement;
@end

@implementation NSString(AXPropertyListCoersion)

- (id)_axReconstitutedRepresentationForDictionaryKeyReplacement
{
  v2 = [a1 length];
  if (v2 > [@"_AXSNSNumber" length] && (objc_msgSend(a1, "substringToIndex:", objc_msgSend(@"_AXSNSNumber", "length")), v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "isEqualToString:", @"_AXSNSNumber"), v3, v4))
  {
    v5 = [a1 substringFromIndex:{objc_msgSend(@"_AXSNSNumber", "length")}];
    v6 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v5, "longLongValue")}];
  }

  else
  {
    v6 = a1;
  }

  return v6;
}

@end