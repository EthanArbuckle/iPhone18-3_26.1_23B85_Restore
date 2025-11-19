@interface ATXSpotlightAction
+ (id)_contactSuggestionResultWithId:(id)a3 title:(id)a4;
+ (id)_searchSuggestionResultWithString:(id)a3;
+ (id)actionIdentifierFromTopic:(id)a3;
+ (id)spotlightActionTypeFromTopic:(id)a3;
+ (unint64_t)instanceIdentifierFromTopic:(id)a3;
- (ATXActionCriteria)criteria;
- (ATXSpotlightAction)initWithCoder:(id)a3;
- (ATXSpotlightAction)initWithContactName:(id)a3 contactEmail:(id)a4 subtitle:(id)a5 criteria:(id)a6;
- (ATXSpotlightAction)initWithContactName:(id)a3 contactIdentifier:(id)a4 subtitle:(id)a5 criteria:(id)a6;
- (ATXSpotlightAction)initWithEntityName:(id)a3 qid:(id)a4 criteria:(id)a5;
- (ATXSpotlightAction)initWithFlightCode:(id)a3 date:(id)a4 criteria:(id)a5;
- (ATXSpotlightAction)initWithMediaName:(id)a3 identifier:(id)a4 criteria:(id)a5;
- (ATXSpotlightAction)initWithPOIName:(id)a3 muid:(id)a4 criteria:(id)a5;
- (ATXSpotlightAction)initWithSearchString:(id)a3;
- (ATXSpotlightAction)initWithSportsTeamName:(id)a3 qid:(id)a4 criteria:(id)a5;
- (ATXSpotlightAction)initWithTopic:(id)a3 criteria:(id)a4 actionDescription:(id)a5 actionIdentifier:(id)a6;
- (ATXSpotlightAction)initWithWeatherLocation:(id)a3 latitude:(double)a4 longitude:(double)a5 criteria:(id)a6;
- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7;
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXSpotlightAction

- (ATXSpotlightAction)initWithTopic:(id)a3 criteria:(id)a4 actionDescription:(id)a5 actionIdentifier:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = ATXSpotlightAction;
  v15 = [(ATXSpotlightAction *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_topic, a3);
    objc_storeStrong(&v16->_criteria, a4);
    objc_storeStrong(&v16->_actionDescription, a5);
    objc_storeStrong(&v16->_actionIdentifier, a6);
  }

  return v16;
}

- (ATXActionCriteria)criteria
{
  criteria = self->_criteria;
  if (criteria)
  {
    v3 = criteria;
  }

  else
  {
    v3 = objc_opt_new();
  }

  return v3;
}

- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7
{
  v22[1] = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!a3)
  {
    v15 = [v12 error];

    if (v15)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([v12 containsValueForKey:v11] & 1) == 0)
    {
      v16 = objc_alloc(MEMORY[0x1E696ABC0]);
      v21 = *MEMORY[0x1E696A578];
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to decode key %@", v11, v21];
      v22[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v19 = [v16 initWithDomain:v13 code:a7 userInfo:v18];

      [v12 failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  topic = self->_topic;
  v5 = a3;
  [v5 encodeObject:topic forKey:@"KEY_TOPIC"];
  [v5 encodeObject:self->_actionDescription forKey:@"KEY_ACTION_DESCRIPTION"];
  [v5 encodeObject:self->_actionIdentifier forKey:@"KEY_ACTION_IDENTIFIER"];
  [v5 encodeObject:self->_criteria forKey:@"KEY_ACTION_CRITERIA"];
}

- (ATXSpotlightAction)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69C5D78];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_default();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"KEY_TOPIC" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.duetexpertd.ATXSpotlightAction" errorCode:-1 logHandle:v7];

  v9 = [v4 error];

  v10 = 0;
  if (!v9 && v8)
  {
    v11 = MEMORY[0x1E69C5D78];
    v12 = objc_opt_class();
    v13 = __atxlog_handle_default();
    v14 = [v11 robustDecodeObjectOfClass:v12 forKey:@"KEY_ACTION_DESCRIPTION" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.duetexpertd.ATXSpotlightAction" errorCode:-1 logHandle:v13];

    v15 = [v4 error];

    v10 = 0;
    if (!v15 && v14)
    {
      v16 = MEMORY[0x1E69C5D78];
      v17 = objc_opt_class();
      v18 = __atxlog_handle_default();
      v19 = [v16 robustDecodeObjectOfClass:v17 forKey:@"KEY_ACTION_IDENTIFIER" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.duetexpertd.ATXSpotlightAction" errorCode:-1 logHandle:v18];

      v20 = [v4 error];

      v10 = 0;
      if (!v20 && v19)
      {
        v21 = MEMORY[0x1E69C5D78];
        v22 = objc_opt_class();
        v23 = __atxlog_handle_default();
        v24 = [v21 robustDecodeObjectOfClass:v22 forKey:@"KEY_ACTION_CRITERIA" withCoder:v4 expectNonNull:0 errorDomain:@"com.apple.duetexpertd.ATXSpotlightAction" errorCode:-1 logHandle:v23];

        v25 = [v4 error];

        if (v25)
        {
          v10 = 0;
        }

        else
        {
          self = [(ATXSpotlightAction *)self initWithTopic:v8 criteria:v24 actionDescription:v14 actionIdentifier:v19];
          v10 = self;
        }
      }
    }
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(SFTopic *)self->_topic identifier];
  v4 = [v3 hash];

  return [(NSString *)self->_actionIdentifier hash]- v4 + 32 * v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    if ([(ATXSpotlightAction *)v4 isMemberOfClass:objc_opt_class()])
    {
      v5 = v4;
      v6 = [(SFTopic *)self->_topic identifier];
      v7 = [(SFTopic *)v5->_topic identifier];
      v8 = v7;
      if (v6 == v7)
      {
      }

      else
      {
        v9 = [v6 isEqual:v7];

        if ((v9 & 1) == 0)
        {
          v10 = 0;
LABEL_13:

          goto LABEL_14;
        }
      }

      v11 = self->_actionIdentifier;
      v12 = v11;
      if (v11 == v5->_actionIdentifier)
      {
        v10 = 1;
      }

      else
      {
        v10 = [(NSString *)v11 isEqual:?];
      }

      goto LABEL_13;
    }

    v10 = 0;
  }

LABEL_14:

  return v10;
}

- (ATXSpotlightAction)initWithSearchString:(id)a3
{
  v4 = [MEMORY[0x1E69D3DE0] localTopicWithTitle:a3];
  v5 = [(ATXSpotlightAction *)self initWithTopic:v4 criteria:0 actionDescription:@"Search-String" actionIdentifier:@"SP-Search-String"];

  return v5;
}

- (ATXSpotlightAction)initWithContactName:(id)a3 contactIdentifier:(id)a4 subtitle:(id)a5 criteria:(id)a6
{
  v10 = a3;
  v11 = MEMORY[0x1E69D3DE0];
  v12 = a6;
  v13 = [v11 localTopicWithContactName:v10 contactIdentifier:a4 detailText:a5];
  v14 = v10;
  v15 = [objc_opt_class() actionIdentifierFromTopic:v13];
  v16 = [(ATXSpotlightAction *)self initWithTopic:v13 criteria:v12 actionDescription:v14 actionIdentifier:v15];

  return v16;
}

- (ATXSpotlightAction)initWithContactName:(id)a3 contactEmail:(id)a4 subtitle:(id)a5 criteria:(id)a6
{
  v22[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (objc_opt_respondsToSelector())
  {
    v14 = MEMORY[0x1E69D3DE0];
    v22[0] = v11;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
    v16 = [v14 localTopicWithContactName:v10 emails:v15 phones:0 detailText:v12];

    v17 = v10;
    v18 = [objc_opt_class() actionIdentifierFromTopic:v16];
    v19 = [(ATXSpotlightAction *)self initWithTopic:v16 criteria:v13 actionDescription:v17 actionIdentifier:v18];

    self = v19;
    v20 = self;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (ATXSpotlightAction)initWithFlightCode:(id)a3 date:(id)a4 criteria:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = MEMORY[0x1E69CA0E8];
  v11 = a5;
  v12 = [v10 alloc];
  v13 = v12;
  if (v9)
  {
    v14 = [v12 initWithQuery:v8 date:v9];
  }

  else
  {
    v15 = [MEMORY[0x1E695DF00] now];
    v14 = [v13 initWithQuery:v8 date:v15];
  }

  v16 = v8;
  v17 = [objc_opt_class() actionIdentifierFromTopic:v14];
  v18 = [(ATXSpotlightAction *)self initWithTopic:v14 criteria:v11 actionDescription:v16 actionIdentifier:v17];

  return v18;
}

- (ATXSpotlightAction)initWithWeatherLocation:(id)a3 latitude:(double)a4 longitude:(double)a5 criteria:(id)a6
{
  v10 = a3;
  v11 = a6;
  if (a4 == 0.0 || a5 == 0.0)
  {
    v18 = __atxlog_handle_default();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [ATXSpotlightAction initWithWeatherLocation:v18 latitude:a4 longitude:a5 criteria:?];
    }

    v17 = 0;
  }

  else
  {
    v12 = objc_alloc_init(MEMORY[0x1E69CA190]);
    [v12 setLat:a4];
    [v12 setLng:a5];
    v13 = [objc_alloc(MEMORY[0x1E69CA5C0]) initWithQuery:v10 location:v12];
    v14 = v10;
    v15 = [objc_opt_class() actionIdentifierFromTopic:v13];
    v16 = [(ATXSpotlightAction *)self initWithTopic:v13 criteria:v11 actionDescription:v14 actionIdentifier:v15];

    self = v16;
    v17 = self;
  }

  return v17;
}

- (ATXSpotlightAction)initWithMediaName:(id)a3 identifier:(id)a4 criteria:(id)a5
{
  v8 = a3;
  v9 = MEMORY[0x1E69CA328];
  v10 = a5;
  v11 = a4;
  v12 = [[v9 alloc] initWithType:1 query:v8 identifier:v11];

  v13 = v8;
  v14 = [objc_opt_class() actionIdentifierFromTopic:v12];
  v15 = [(ATXSpotlightAction *)self initWithTopic:v12 criteria:v10 actionDescription:v13 actionIdentifier:v14];

  return v15;
}

- (ATXSpotlightAction)initWithPOIName:(id)a3 muid:(id)a4 criteria:(id)a5
{
  v8 = a3;
  v9 = MEMORY[0x1E69CA328];
  v10 = a5;
  v11 = a4;
  v12 = [v9 alloc];
  v13 = [v11 stringValue];

  v14 = [v12 initWithType:6 query:v8 identifier:v13];
  v15 = v8;
  v16 = [objc_opt_class() actionIdentifierFromTopic:v14];
  v17 = [(ATXSpotlightAction *)self initWithTopic:v14 criteria:v10 actionDescription:v15 actionIdentifier:v16];

  return v17;
}

- (ATXSpotlightAction)initWithSportsTeamName:(id)a3 qid:(id)a4 criteria:(id)a5
{
  v8 = MEMORY[0x1E69CA470];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [[v8 alloc] initWithQuery:@"team-qid" requestedEntityType:@"Team" identifier:v10];

  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = @"team-qid";
  }

  v14 = v13;
  v15 = [objc_opt_class() actionIdentifierFromTopic:v12];
  v16 = [(ATXSpotlightAction *)self initWithTopic:v12 criteria:v9 actionDescription:v14 actionIdentifier:v15];

  return v16;
}

- (ATXSpotlightAction)initWithEntityName:(id)a3 qid:(id)a4 criteria:(id)a5
{
  v8 = MEMORY[0x1E69CA328];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [[v8 alloc] initWithType:2 query:@"entity-qid" identifier:v10];

  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = @"entity-qid";
  }

  v14 = [(ATXSpotlightAction *)self initWithTopic:v12 criteria:v9 actionDescription:v13 actionIdentifier:@"SP-Entity-QID"];

  return v14;
}

+ (id)actionIdentifierFromTopic:(id)a3
{
  v4 = a3;
  v5 = [a1 spotlightActionTypeFromTopic:v4];
  v6 = [a1 instanceIdentifierFromTopic:v4];

  v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@:%lu", v5, v6];

  return v7;
}

+ (unint64_t)instanceIdentifierFromTopic:(id)a3
{
  v3 = [a3 identifier];
  v4 = [v3 hash];

  return v4;
}

+ (id)spotlightActionTypeFromTopic:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = __atxlog_handle_default();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        +[ATXSpotlightAction spotlightActionTypeFromTopic:];
      }

      goto LABEL_21;
    }

    v5 = v3;
    v6 = [v5 queryType];
    if (v6 > 4)
    {
      if ((v6 - 7) >= 2)
      {
        if (v6 == 5)
        {
          v4 = @"SP-Flight";
          goto LABEL_22;
        }

        if (v6 == 6)
        {
          v4 = @"SP-POI-Muid";
LABEL_22:

          goto LABEL_23;
        }

LABEL_26:
        v7 = __atxlog_handle_default();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          [ATXSpotlightAction spotlightActionTypeFromTopic:v5];
        }

        goto LABEL_20;
      }
    }

    else
    {
      if (v6 > 1)
      {
        if (v6 != 2)
        {
          if (v6 == 3)
          {
            v4 = @"SP-Sports-Team-QID";
          }

          else
          {
            v4 = @"SP-Weather";
          }

          goto LABEL_22;
        }

        goto LABEL_18;
      }

      if (v6)
      {
        if (v6 == 1)
        {
          v4 = @"SP-Media-AdamId";
          goto LABEL_22;
        }

        goto LABEL_26;
      }
    }

LABEL_18:
    v7 = __atxlog_handle_default();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [ATXSpotlightAction spotlightActionTypeFromTopic:v5];
    }

LABEL_20:

LABEL_21:
    v4 = 0;
    goto LABEL_22;
  }

  v4 = @"SP-Contact";
LABEL_23:

  return v4;
}

+ (id)_searchSuggestionResultWithString:(id)a3
{
  v19[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69CA3E8];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = objc_opt_new();
  [v6 setText:v4];
  [v5 setTitle:v6];
  [v5 setCompletion:v4];
  [v5 setResultBundleId:@"com.apple.searchd.suggestion"];
  [v5 setSectionBundleIdentifier:@"com.apple.searchd.recent.suggestions"];
  [v5 setIdentifier:v4];
  v7 = objc_opt_new();
  [v7 setSymbolName:@"magnifyingglass.circle.fill"];
  [v7 setIsTemplate:1];
  v8 = objc_opt_new();
  v9 = [v5 resultBundleId];
  [v8 setBundleIdentifier:v9];

  v10 = objc_opt_new();
  v11 = [MEMORY[0x1E69CA3A0] textWithString:v4];
  [v10 setSuggestionText:v11];

  v12 = [v10 suggestionText];
  [v12 setMaxLines:1];

  [v10 setSuggestionType:0];
  v19[0] = v8;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  [v10 setPunchoutOptions:v13];

  [v10 setThumbnail:v7];
  v14 = objc_opt_new();
  [v14 setSearchString:v4];

  [v14 setQuerySource:1];
  [v10 setCommand:v14];
  v15 = objc_opt_new();
  v18 = v10;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
  [v15 setCardSections:v16];

  [v5 setInlineCard:v15];

  return v5;
}

+ (id)_contactSuggestionResultWithId:(id)a3 title:(id)a4
{
  v18[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69CA3E8];
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(v5);
  v9 = objc_opt_new();
  [v9 setText:v6];
  [v8 setTitle:v9];
  [v8 setCompletion:v6];
  [v8 setResultBundleId:@"com.apple.searchd.suggestion"];
  [v8 setSectionBundleIdentifier:@"com.apple.searchd.recent.suggestions"];
  [v8 setIdentifier:v7];
  v10 = objc_opt_new();
  v11 = [v8 resultBundleId];
  [v10 setBundleIdentifier:v11];

  v12 = objc_opt_new();
  [v12 setSymbolName:@"person.crop.circle"];
  [v12 setIsTemplate:1];
  v13 = objc_opt_new();
  [v13 setEntityType:2];
  [v13 setEntityIdentifier:v7];

  [v13 setTokenString:v6];
  [v13 setSymbolImage:v12];
  v14 = objc_opt_new();
  [v14 setCommand:v13];
  v15 = objc_opt_new();
  v18[0] = v14;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  [v15 setCardSections:v16];

  [v8 setInlineCard:v15];

  return v8;
}

- (void)initWithWeatherLocation:(double)a3 latitude:longitude:criteria:.cold.1(os_log_t log, double a2, double a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 134218240;
  v4 = a2;
  v5 = 2048;
  v6 = a3;
  _os_log_error_impl(&dword_1BF549000, log, OS_LOG_TYPE_ERROR, "ATXSpotlightAction Weather: received 0 lat or long. %f, %f", &v3, 0x16u);
}

+ (void)spotlightActionTypeFromTopic:.cold.1()
{
  v0 = objc_opt_class();
  v6 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

+ (void)spotlightActionTypeFromTopic:(void *)a1 .cold.2(void *a1)
{
  [a1 queryType];
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

+ (void)spotlightActionTypeFromTopic:(void *)a1 .cold.3(void *a1)
{
  [a1 queryType];
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

@end