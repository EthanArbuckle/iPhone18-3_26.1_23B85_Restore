@interface ATXActionPredictionTypes
+ (id)actionExperienceToString:(unint64_t)a3;
+ (id)actionFeedbackStageToString:(unint64_t)a3;
+ (id)actionFeedbackTypeToString:(unint64_t)a3;
+ (id)actionTypeToPETString:(unint64_t)a3;
+ (id)actionTypeToString:(unint64_t)a3;
+ (id)engagementTypeToString:(unint64_t)a3;
+ (id)inverseActionFeedbackTypeMapping;
+ (unint64_t)stringToActionExperience:(id)a3 found:(BOOL *)a4;
+ (unint64_t)stringToActionFeedbackStage:(id)a3 found:(BOOL *)a4;
@end

@implementation ATXActionPredictionTypes

+ (id)engagementTypeToString:(unint64_t)a3
{
  if (a3 < 0xB)
  {
    return off_1E80C1280[a3];
  }

  v5 = __atxlog_handle_default();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    +[ATXActionPredictionTypes engagementTypeToString:];
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Invalid value of %lu passed to engagementTypeToString", a3}];
  return @"Error";
}

+ (id)actionExperienceToString:(unint64_t)a3
{
  if (a3 < 5)
  {
    return off_1E80C12D8[a3];
  }

  v5 = __atxlog_handle_default();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    +[ATXActionPredictionTypes actionExperienceToString:];
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Invalid value of %lu passed to actionExperienceToString", a3}];
  return @"Error";
}

+ (id)actionTypeToString:(unint64_t)a3
{
  if (a3 < 9)
  {
    return off_1E80C1300[a3];
  }

  v5 = __atxlog_handle_default();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    +[ATXActionPredictionTypes actionTypeToString:];
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Invalid value of %lu passed to actionTypeToString", a3}];
  return @"Error";
}

+ (id)actionFeedbackStageToString:(unint64_t)a3
{
  if (a3 < 9)
  {
    return off_1E80C1348[a3];
  }

  v5 = __atxlog_handle_default();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    +[ATXActionPredictionTypes actionFeedbackStageToString:];
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Invalid value of %lu passed to actionFeedbackStageString", a3}];
  return @"Error";
}

+ (id)actionFeedbackTypeToString:(unint64_t)a3
{
  if (a3 < 4)
  {
    return off_1E80C1390[a3];
  }

  v5 = __atxlog_handle_default();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    +[ATXActionPredictionTypes actionFeedbackTypeToString:];
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Invalid value of %lu passed to actionFeedbackTypeToString", a3}];
  return @"Error";
}

+ (unint64_t)stringToActionExperience:(id)a3 found:(BOOL *)a4
{
  v5 = a3;
  v6 = 0;
  while (1)
  {
    v7 = [objc_opt_class() actionExperienceToString:v6];
    v8 = [v7 isEqualToString:v5];

    if (v8)
    {
      break;
    }

    if (++v6 == 4)
    {
      v6 = 0;
      if (!a4)
      {
        goto LABEL_9;
      }

      v9 = 0;
      goto LABEL_8;
    }
  }

  if (!a4)
  {
    goto LABEL_9;
  }

  v9 = 1;
LABEL_8:
  *a4 = v9;
LABEL_9:

  return v6;
}

+ (unint64_t)stringToActionFeedbackStage:(id)a3 found:(BOOL *)a4
{
  v6 = a3;
  v7 = 0;
  while (1)
  {
    v8 = [a1 actionFeedbackStageToString:v7];
    v9 = [v8 isEqualToString:v6];

    if (v9)
    {
      break;
    }

    if (++v7 == 8)
    {
      v7 = 0;
      if (!a4)
      {
        goto LABEL_9;
      }

      v10 = 0;
      goto LABEL_8;
    }
  }

  if (!a4)
  {
    goto LABEL_9;
  }

  v10 = 1;
LABEL_8:
  *a4 = v10;
LABEL_9:

  return v7;
}

+ (id)inverseActionFeedbackTypeMapping
{
  v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
  for (i = 0; i != 3; ++i)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:i];
    v6 = [a1 actionFeedbackTypeToString:i];
    [v3 setObject:v5 forKeyedSubscript:v6];
  }

  return v3;
}

+ (id)actionTypeToPETString:(unint64_t)a3
{
  if (a3 > 7)
  {
    return @"other";
  }

  else
  {
    return off_1E80C13B0[a3];
  }
}

@end