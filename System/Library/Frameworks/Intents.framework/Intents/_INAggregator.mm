@interface _INAggregator
+ (double)roundCount:(unint64_t)a3 toSignificantFigure:(unint64_t)a4;
+ (id)_distributionKeyForVocabularyStringType:(int64_t)a3;
+ (unint64_t)_singificantFigureForVocabularyStringType:(int64_t)a3;
+ (void)logReceivedCount:(unint64_t)a3 ofVocabularyStringType:(int64_t)a4;
@end

@implementation _INAggregator

+ (void)logReceivedCount:(unint64_t)a3 ofVocabularyStringType:(int64_t)a4
{
  v7 = [a1 _distributionKeyForVocabularyStringType:a4];
  if (v7)
  {
    [a1 roundCount:a3 toSignificantFigure:{objc_msgSend(a1, "_singificantFigureForVocabularyStringType:", a4)}];
    ADClientPushValueForDistributionKey();
  }

  ADClientAddValueForScalarKey();
}

+ (double)roundCount:(unint64_t)a3 toSignificantFigure:(unint64_t)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = 0.0;
  if (a3)
  {
    if (a4)
    {
      v6 = a3;
      v7 = log10(a3);
      v8 = __exp10(a4 - ceil(v7));
      v4 = round(v8 * v6) / v8;
    }

    else
    {
      v9 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
      {
        v12 = 136315138;
        v13 = "+[_INAggregator roundCount:toSignificantFigure:]";
        _os_log_error_impl(&dword_18E991000, v9, OS_LOG_TYPE_ERROR, "%s WARNING: asking to round a value to 0 significant figures makes no sense — answer is 0.", &v12, 0xCu);
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return v4;
}

+ (id)_distributionKeyForVocabularyStringType:(int64_t)a3
{
  if ([a1 _canReportDistributionOfVocabularyStringType:?])
  {
    v4 = _INStringFromVocabularyStringType(a3);
    v5 = [v4 stringByReplacingOccurrencesOfString:@"INVocabularyStringType" withString:@"com.apple.siri.UserVocabularyStringCount."];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (unint64_t)_singificantFigureForVocabularyStringType:(int64_t)a3
{
  result = 2;
  if (a3 > 699)
  {
    if ((a3 - 700) < 5 || a3 == 50003 || a3 == 50000)
    {
      return 1;
    }
  }

  else
  {
    if (a3 <= 399)
    {
      if ((a3 - 300) >= 2 && a3 != 2 && a3 != 200)
      {
        return result;
      }

      return 1;
    }

    if ((a3 - 400) < 2 || (a3 - 500) < 2)
    {
      return 1;
    }
  }

  return result;
}

@end