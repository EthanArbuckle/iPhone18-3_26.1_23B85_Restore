@interface CRLWPGrammarResults
- (id)grammarResultForCharIndex:(unint64_t)index outRange:(_NSRange *)range;
- (void)addResult:(id)result forRange:(_NSRange)range;
@end

@implementation CRLWPGrammarResults

- (void)addResult:(id)result forRange:(_NSRange)range
{
  v4.receiver = self;
  v4.super_class = CRLWPGrammarResults;
  [(CRLWPCheckingResults *)&v4 addResult:result forRange:range.location, range.length];
}

- (id)grammarResultForCharIndex:(unint64_t)index outRange:(_NSRange *)range
{
  *range = xmmword_101464828;
  ranges = [(CRLWPCheckingResults *)self ranges];
  results = [(CRLWPCheckingResults *)self results];
  if ([ranges rangeCount])
  {
    v9 = 0;
    while (1)
    {
      v10 = [ranges rangeAtIndex:v9];
      if (index >= v10 && index - v10 < v11)
      {
        break;
      }

      if (++v9 >= [ranges rangeCount])
      {
        goto LABEL_18;
      }
    }

    range->location = v10;
    range->length = v11;
    if ([results count] > v9)
    {
      v12 = objc_opt_class();
      v13 = [results objectAtIndexedSubscript:v9];
      v14 = sub_100013F00(v12, v13);

      v15 = objc_opt_class();
      first = [v14 first];
      v17 = sub_100013F00(v15, first);

      goto LABEL_19;
    }

    v18 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101373EF4();
    }

    v19 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101373F08(v18, v19);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101373FB4();
    }

    v20 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EE10(v20, v18);
    }

    v21 = [NSString stringWithUTF8String:"[CRLWPGrammarResults grammarResultForCharIndex:outRange:]"];
    v22 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPSpellingResults.m"];
    [CRLAssertionHandler handleFailureInFunction:v21 file:v22 lineNumber:185 isFatal:0 description:"No grammar error found for range"];
  }

LABEL_18:
  v17 = 0;
LABEL_19:

  return v17;
}

@end