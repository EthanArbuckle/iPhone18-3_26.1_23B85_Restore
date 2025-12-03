@interface CRLWPSpellingResults
- (_NSRange)rangeOfMisspelledWordAtCharIndex:(unint64_t)index;
- (void)addResult:(id)result forRange:(_NSRange)range;
@end

@implementation CRLWPSpellingResults

- (void)addResult:(id)result forRange:(_NSRange)range
{
  v4.receiver = self;
  v4.super_class = CRLWPSpellingResults;
  [(CRLWPCheckingResults *)&v4 addResult:result forRange:range.location, range.length];
}

- (_NSRange)rangeOfMisspelledWordAtCharIndex:(unint64_t)index
{
  ranges = [(CRLWPCheckingResults *)self ranges];
  v5 = [ranges rangeContainingPosition:index];
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.length = v9;
  result.location = v8;
  return result;
}

@end