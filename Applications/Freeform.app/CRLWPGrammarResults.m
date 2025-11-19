@interface CRLWPGrammarResults
- (id)grammarResultForCharIndex:(unint64_t)a3 outRange:(_NSRange *)a4;
- (void)addResult:(id)a3 forRange:(_NSRange)a4;
@end

@implementation CRLWPGrammarResults

- (void)addResult:(id)a3 forRange:(_NSRange)a4
{
  v4.receiver = self;
  v4.super_class = CRLWPGrammarResults;
  [(CRLWPCheckingResults *)&v4 addResult:a3 forRange:a4.location, a4.length];
}

- (id)grammarResultForCharIndex:(unint64_t)a3 outRange:(_NSRange *)a4
{
  *a4 = xmmword_101464828;
  v7 = [(CRLWPCheckingResults *)self ranges];
  v8 = [(CRLWPCheckingResults *)self results];
  if ([v7 rangeCount])
  {
    v9 = 0;
    while (1)
    {
      v10 = [v7 rangeAtIndex:v9];
      if (a3 >= v10 && a3 - v10 < v11)
      {
        break;
      }

      if (++v9 >= [v7 rangeCount])
      {
        goto LABEL_18;
      }
    }

    a4->location = v10;
    a4->length = v11;
    if ([v8 count] > v9)
    {
      v12 = objc_opt_class();
      v13 = [v8 objectAtIndexedSubscript:v9];
      v14 = sub_100013F00(v12, v13);

      v15 = objc_opt_class();
      v16 = [v14 first];
      v17 = sub_100013F00(v15, v16);

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