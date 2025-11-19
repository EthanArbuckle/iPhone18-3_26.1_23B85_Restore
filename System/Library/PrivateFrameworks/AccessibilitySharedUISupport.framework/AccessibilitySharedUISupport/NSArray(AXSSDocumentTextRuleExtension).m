@interface NSArray(AXSSDocumentTextRuleExtension)
- (BOOL)containsString:()AXSSDocumentTextRuleExtension caseSensitive:;
@end

@implementation NSArray(AXSSDocumentTextRuleExtension)

- (BOOL)containsString:()AXSSDocumentTextRuleExtension caseSensitive:
{
  v6 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71__NSArray_AXSSDocumentTextRuleExtension__containsString_caseSensitive___block_invoke;
  v10[3] = &unk_278BF0220;
  v11 = v6;
  v12 = a4;
  v7 = v6;
  v8 = [a1 indexOfObjectPassingTest:v10] != 0x7FFFFFFFFFFFFFFFLL;

  return v8;
}

@end