@interface VOTAXSSPunctuationDynamicEntry
- (id)replacement;
@end

@implementation VOTAXSSPunctuationDynamicEntry

- (id)replacement
{
  v3 = [(VOTAXSSPunctuationDynamicEntry *)self dynamicReplacement];

  if (v3)
  {
    v4 = [(VOTAXSSPunctuationDynamicEntry *)self dynamicReplacement];
    v5 = v4[2]();
  }

  else
  {
    v7.receiver = self;
    v7.super_class = VOTAXSSPunctuationDynamicEntry;
    v5 = [(VOTAXSSPunctuationDynamicEntry *)&v7 replacement];
  }

  return v5;
}

@end