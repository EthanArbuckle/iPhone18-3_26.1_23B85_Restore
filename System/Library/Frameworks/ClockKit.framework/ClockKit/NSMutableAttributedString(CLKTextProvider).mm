@interface NSMutableAttributedString(CLKTextProvider)
- (void)addAttributesPreservingOriginals:()CLKTextProvider range:;
@end

@implementation NSMutableAttributedString(CLKTextProvider)

- (void)addAttributesPreservingOriginals:()CLKTextProvider range:
{
  if (a3)
  {
    v8 = a3;
    v9 = [self copy];
    [self addAttributes:v8 range:{a4, a5}];

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __85__NSMutableAttributedString_CLKTextProvider__addAttributesPreservingOriginals_range___block_invoke;
    v10[3] = &unk_278A1F9E8;
    v10[4] = self;
    [v9 enumerateAttributesInRange:a4 options:a5 usingBlock:{0, v10}];
  }
}

@end