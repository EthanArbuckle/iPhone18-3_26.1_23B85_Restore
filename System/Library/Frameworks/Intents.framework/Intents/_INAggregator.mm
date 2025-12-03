@interface _INAggregator
+ (double)roundCount:(unint64_t)count toSignificantFigure:(unint64_t)figure;
+ (id)_distributionKeyForVocabularyStringType:(int64_t)type;
+ (unint64_t)_singificantFigureForVocabularyStringType:(int64_t)type;
+ (void)logReceivedCount:(unint64_t)count ofVocabularyStringType:(int64_t)type;
@end

@implementation _INAggregator

+ (void)logReceivedCount:(unint64_t)count ofVocabularyStringType:(int64_t)type
{
  v7 = [self _distributionKeyForVocabularyStringType:type];
  if (v7)
  {
    [self roundCount:count toSignificantFigure:{objc_msgSend(self, "_singificantFigureForVocabularyStringType:", type)}];
    ADClientPushValueForDistributionKey();
  }

  ADClientAddValueForScalarKey();
}

+ (double)roundCount:(unint64_t)count toSignificantFigure:(unint64_t)figure
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = 0.0;
  if (count)
  {
    if (figure)
    {
      countCopy = count;
      v7 = log10(count);
      v8 = __exp10(figure - ceil(v7));
      v4 = round(v8 * countCopy) / v8;
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

+ (id)_distributionKeyForVocabularyStringType:(int64_t)type
{
  if ([self _canReportDistributionOfVocabularyStringType:?])
  {
    v4 = _INStringFromVocabularyStringType(type);
    v5 = [v4 stringByReplacingOccurrencesOfString:@"INVocabularyStringType" withString:@"com.apple.siri.UserVocabularyStringCount."];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (unint64_t)_singificantFigureForVocabularyStringType:(int64_t)type
{
  result = 2;
  if (type > 699)
  {
    if ((type - 700) < 5 || type == 50003 || type == 50000)
    {
      return 1;
    }
  }

  else
  {
    if (type <= 399)
    {
      if ((type - 300) >= 2 && type != 2 && type != 200)
      {
        return result;
      }

      return 1;
    }

    if ((type - 400) < 2 || (type - 500) < 2)
    {
      return 1;
    }
  }

  return result;
}

@end