@interface VOTAXSSPunctuationDynamicEntry
- (id)replacement;
@end

@implementation VOTAXSSPunctuationDynamicEntry

- (id)replacement
{
  dynamicReplacement = [(VOTAXSSPunctuationDynamicEntry *)self dynamicReplacement];

  if (dynamicReplacement)
  {
    dynamicReplacement2 = [(VOTAXSSPunctuationDynamicEntry *)self dynamicReplacement];
    replacement = dynamicReplacement2[2]();
  }

  else
  {
    v7.receiver = self;
    v7.super_class = VOTAXSSPunctuationDynamicEntry;
    replacement = [(VOTAXSSPunctuationDynamicEntry *)&v7 replacement];
  }

  return replacement;
}

@end