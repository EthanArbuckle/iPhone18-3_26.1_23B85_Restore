@interface ATXActionPredictionTypes
+ (id)actionExperienceToString:(unint64_t)string;
+ (id)actionFeedbackStageToString:(unint64_t)string;
+ (id)actionFeedbackTypeToString:(unint64_t)string;
+ (id)actionTypeToPETString:(unint64_t)string;
+ (id)actionTypeToString:(unint64_t)string;
+ (id)engagementTypeToString:(unint64_t)string;
+ (id)inverseActionFeedbackTypeMapping;
+ (unint64_t)stringToActionExperience:(id)experience found:(BOOL *)found;
+ (unint64_t)stringToActionFeedbackStage:(id)stage found:(BOOL *)found;
@end

@implementation ATXActionPredictionTypes

+ (id)engagementTypeToString:(unint64_t)string
{
  if (string < 0xB)
  {
    return off_1E80C1280[string];
  }

  v5 = __atxlog_handle_default();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    +[ATXActionPredictionTypes engagementTypeToString:];
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Invalid value of %lu passed to engagementTypeToString", string}];
  return @"Error";
}

+ (id)actionExperienceToString:(unint64_t)string
{
  if (string < 5)
  {
    return off_1E80C12D8[string];
  }

  v5 = __atxlog_handle_default();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    +[ATXActionPredictionTypes actionExperienceToString:];
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Invalid value of %lu passed to actionExperienceToString", string}];
  return @"Error";
}

+ (id)actionTypeToString:(unint64_t)string
{
  if (string < 9)
  {
    return off_1E80C1300[string];
  }

  v5 = __atxlog_handle_default();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    +[ATXActionPredictionTypes actionTypeToString:];
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Invalid value of %lu passed to actionTypeToString", string}];
  return @"Error";
}

+ (id)actionFeedbackStageToString:(unint64_t)string
{
  if (string < 9)
  {
    return off_1E80C1348[string];
  }

  v5 = __atxlog_handle_default();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    +[ATXActionPredictionTypes actionFeedbackStageToString:];
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Invalid value of %lu passed to actionFeedbackStageString", string}];
  return @"Error";
}

+ (id)actionFeedbackTypeToString:(unint64_t)string
{
  if (string < 4)
  {
    return off_1E80C1390[string];
  }

  v5 = __atxlog_handle_default();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    +[ATXActionPredictionTypes actionFeedbackTypeToString:];
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Invalid value of %lu passed to actionFeedbackTypeToString", string}];
  return @"Error";
}

+ (unint64_t)stringToActionExperience:(id)experience found:(BOOL *)found
{
  experienceCopy = experience;
  v6 = 0;
  while (1)
  {
    v7 = [objc_opt_class() actionExperienceToString:v6];
    v8 = [v7 isEqualToString:experienceCopy];

    if (v8)
    {
      break;
    }

    if (++v6 == 4)
    {
      v6 = 0;
      if (!found)
      {
        goto LABEL_9;
      }

      v9 = 0;
      goto LABEL_8;
    }
  }

  if (!found)
  {
    goto LABEL_9;
  }

  v9 = 1;
LABEL_8:
  *found = v9;
LABEL_9:

  return v6;
}

+ (unint64_t)stringToActionFeedbackStage:(id)stage found:(BOOL *)found
{
  stageCopy = stage;
  v7 = 0;
  while (1)
  {
    v8 = [self actionFeedbackStageToString:v7];
    v9 = [v8 isEqualToString:stageCopy];

    if (v9)
    {
      break;
    }

    if (++v7 == 8)
    {
      v7 = 0;
      if (!found)
      {
        goto LABEL_9;
      }

      v10 = 0;
      goto LABEL_8;
    }
  }

  if (!found)
  {
    goto LABEL_9;
  }

  v10 = 1;
LABEL_8:
  *found = v10;
LABEL_9:

  return v7;
}

+ (id)inverseActionFeedbackTypeMapping
{
  v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
  for (i = 0; i != 3; ++i)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:i];
    v6 = [self actionFeedbackTypeToString:i];
    [v3 setObject:v5 forKeyedSubscript:v6];
  }

  return v3;
}

+ (id)actionTypeToPETString:(unint64_t)string
{
  if (string > 7)
  {
    return @"other";
  }

  else
  {
    return off_1E80C13B0[string];
  }
}

@end