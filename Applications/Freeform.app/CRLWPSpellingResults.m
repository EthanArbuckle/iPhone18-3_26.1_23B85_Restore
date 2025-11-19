@interface CRLWPSpellingResults
- (_NSRange)rangeOfMisspelledWordAtCharIndex:(unint64_t)a3;
- (void)addResult:(id)a3 forRange:(_NSRange)a4;
@end

@implementation CRLWPSpellingResults

- (void)addResult:(id)a3 forRange:(_NSRange)a4
{
  v4.receiver = self;
  v4.super_class = CRLWPSpellingResults;
  [(CRLWPCheckingResults *)&v4 addResult:a3 forRange:a4.location, a4.length];
}

- (_NSRange)rangeOfMisspelledWordAtCharIndex:(unint64_t)a3
{
  v4 = [(CRLWPCheckingResults *)self ranges];
  v5 = [v4 rangeContainingPosition:a3];
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.length = v9;
  result.location = v8;
  return result;
}

@end