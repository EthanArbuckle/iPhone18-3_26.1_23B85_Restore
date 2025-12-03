@interface ATXSpotlightAction
+ (id)_contactSuggestionResultWithId:(id)id title:(id)title;
+ (id)_searchSuggestionResultWithString:(id)string;
+ (id)actionIdentifierFromTopic:(id)topic;
+ (id)spotlightActionTypeFromTopic:(id)topic;
+ (unint64_t)instanceIdentifierFromTopic:(id)topic;
- (ATXActionCriteria)criteria;
- (ATXSpotlightAction)initWithCoder:(id)coder;
- (ATXSpotlightAction)initWithContactName:(id)name contactEmail:(id)email subtitle:(id)subtitle criteria:(id)criteria;
- (ATXSpotlightAction)initWithContactName:(id)name contactIdentifier:(id)identifier subtitle:(id)subtitle criteria:(id)criteria;
- (ATXSpotlightAction)initWithEntityName:(id)name qid:(id)qid criteria:(id)criteria;
- (ATXSpotlightAction)initWithFlightCode:(id)code date:(id)date criteria:(id)criteria;
- (ATXSpotlightAction)initWithMediaName:(id)name identifier:(id)identifier criteria:(id)criteria;
- (ATXSpotlightAction)initWithPOIName:(id)name muid:(id)muid criteria:(id)criteria;
- (ATXSpotlightAction)initWithSearchString:(id)string;
- (ATXSpotlightAction)initWithSportsTeamName:(id)name qid:(id)qid criteria:(id)criteria;
- (ATXSpotlightAction)initWithTopic:(id)topic criteria:(id)criteria actionDescription:(id)description actionIdentifier:(id)identifier;
- (ATXSpotlightAction)initWithWeatherLocation:(id)location latitude:(double)latitude longitude:(double)longitude criteria:(id)criteria;
- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)forid key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code;
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXSpotlightAction

- (ATXSpotlightAction)initWithTopic:(id)topic criteria:(id)criteria actionDescription:(id)description actionIdentifier:(id)identifier
{
  topicCopy = topic;
  criteriaCopy = criteria;
  descriptionCopy = description;
  identifierCopy = identifier;
  v18.receiver = self;
  v18.super_class = ATXSpotlightAction;
  v15 = [(ATXSpotlightAction *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_topic, topic);
    objc_storeStrong(&v16->_criteria, criteria);
    objc_storeStrong(&v16->_actionDescription, description);
    objc_storeStrong(&v16->_actionIdentifier, identifier);
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

- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)forid key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code
{
  v22[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  coderCopy = coder;
  domainCopy = domain;
  if (!forid)
  {
    error = [coderCopy error];

    if (error)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([coderCopy containsValueForKey:keyCopy] & 1) == 0)
    {
      v16 = objc_alloc(MEMORY[0x1E696ABC0]);
      v21 = *MEMORY[0x1E696A578];
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to decode key %@", keyCopy, v21];
      v22[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v19 = [v16 initWithDomain:domainCopy code:code userInfo:v18];

      [coderCopy failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  topic = self->_topic;
  coderCopy = coder;
  [coderCopy encodeObject:topic forKey:@"KEY_TOPIC"];
  [coderCopy encodeObject:self->_actionDescription forKey:@"KEY_ACTION_DESCRIPTION"];
  [coderCopy encodeObject:self->_actionIdentifier forKey:@"KEY_ACTION_IDENTIFIER"];
  [coderCopy encodeObject:self->_criteria forKey:@"KEY_ACTION_CRITERIA"];
}

- (ATXSpotlightAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x1E69C5D78];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_default();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"KEY_TOPIC" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.duetexpertd.ATXSpotlightAction" errorCode:-1 logHandle:v7];

  error = [coderCopy error];

  selfCopy = 0;
  if (!error && v8)
  {
    v11 = MEMORY[0x1E69C5D78];
    v12 = objc_opt_class();
    v13 = __atxlog_handle_default();
    v14 = [v11 robustDecodeObjectOfClass:v12 forKey:@"KEY_ACTION_DESCRIPTION" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.duetexpertd.ATXSpotlightAction" errorCode:-1 logHandle:v13];

    error2 = [coderCopy error];

    selfCopy = 0;
    if (!error2 && v14)
    {
      v16 = MEMORY[0x1E69C5D78];
      v17 = objc_opt_class();
      v18 = __atxlog_handle_default();
      v19 = [v16 robustDecodeObjectOfClass:v17 forKey:@"KEY_ACTION_IDENTIFIER" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.duetexpertd.ATXSpotlightAction" errorCode:-1 logHandle:v18];

      error3 = [coderCopy error];

      selfCopy = 0;
      if (!error3 && v19)
      {
        v21 = MEMORY[0x1E69C5D78];
        v22 = objc_opt_class();
        v23 = __atxlog_handle_default();
        v24 = [v21 robustDecodeObjectOfClass:v22 forKey:@"KEY_ACTION_CRITERIA" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.duetexpertd.ATXSpotlightAction" errorCode:-1 logHandle:v23];

        error4 = [coderCopy error];

        if (error4)
        {
          selfCopy = 0;
        }

        else
        {
          self = [(ATXSpotlightAction *)self initWithTopic:v8 criteria:v24 actionDescription:v14 actionIdentifier:v19];
          selfCopy = self;
        }
      }
    }
  }

  return selfCopy;
}

- (unint64_t)hash
{
  identifier = [(SFTopic *)self->_topic identifier];
  v4 = [identifier hash];

  return [(NSString *)self->_actionIdentifier hash]- v4 + 32 * v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    if ([(ATXSpotlightAction *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v5 = equalCopy;
      identifier = [(SFTopic *)self->_topic identifier];
      identifier2 = [(SFTopic *)v5->_topic identifier];
      v8 = identifier2;
      if (identifier == identifier2)
      {
      }

      else
      {
        v9 = [identifier isEqual:identifier2];

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

- (ATXSpotlightAction)initWithSearchString:(id)string
{
  v4 = [MEMORY[0x1E69D3DE0] localTopicWithTitle:string];
  v5 = [(ATXSpotlightAction *)self initWithTopic:v4 criteria:0 actionDescription:@"Search-String" actionIdentifier:@"SP-Search-String"];

  return v5;
}

- (ATXSpotlightAction)initWithContactName:(id)name contactIdentifier:(id)identifier subtitle:(id)subtitle criteria:(id)criteria
{
  nameCopy = name;
  v11 = MEMORY[0x1E69D3DE0];
  criteriaCopy = criteria;
  v13 = [v11 localTopicWithContactName:nameCopy contactIdentifier:identifier detailText:subtitle];
  v14 = nameCopy;
  v15 = [objc_opt_class() actionIdentifierFromTopic:v13];
  v16 = [(ATXSpotlightAction *)self initWithTopic:v13 criteria:criteriaCopy actionDescription:v14 actionIdentifier:v15];

  return v16;
}

- (ATXSpotlightAction)initWithContactName:(id)name contactEmail:(id)email subtitle:(id)subtitle criteria:(id)criteria
{
  v22[1] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  emailCopy = email;
  subtitleCopy = subtitle;
  criteriaCopy = criteria;
  if (objc_opt_respondsToSelector())
  {
    v14 = MEMORY[0x1E69D3DE0];
    v22[0] = emailCopy;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
    v16 = [v14 localTopicWithContactName:nameCopy emails:v15 phones:0 detailText:subtitleCopy];

    v17 = nameCopy;
    v18 = [objc_opt_class() actionIdentifierFromTopic:v16];
    v19 = [(ATXSpotlightAction *)self initWithTopic:v16 criteria:criteriaCopy actionDescription:v17 actionIdentifier:v18];

    self = v19;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (ATXSpotlightAction)initWithFlightCode:(id)code date:(id)date criteria:(id)criteria
{
  codeCopy = code;
  dateCopy = date;
  v10 = MEMORY[0x1E69CA0E8];
  criteriaCopy = criteria;
  v12 = [v10 alloc];
  v13 = v12;
  if (dateCopy)
  {
    v14 = [v12 initWithQuery:codeCopy date:dateCopy];
  }

  else
  {
    v15 = [MEMORY[0x1E695DF00] now];
    v14 = [v13 initWithQuery:codeCopy date:v15];
  }

  v16 = codeCopy;
  v17 = [objc_opt_class() actionIdentifierFromTopic:v14];
  v18 = [(ATXSpotlightAction *)self initWithTopic:v14 criteria:criteriaCopy actionDescription:v16 actionIdentifier:v17];

  return v18;
}

- (ATXSpotlightAction)initWithWeatherLocation:(id)location latitude:(double)latitude longitude:(double)longitude criteria:(id)criteria
{
  locationCopy = location;
  criteriaCopy = criteria;
  if (latitude == 0.0 || longitude == 0.0)
  {
    v18 = __atxlog_handle_default();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [ATXSpotlightAction initWithWeatherLocation:v18 latitude:latitude longitude:longitude criteria:?];
    }

    selfCopy = 0;
  }

  else
  {
    v12 = objc_alloc_init(MEMORY[0x1E69CA190]);
    [v12 setLat:latitude];
    [v12 setLng:longitude];
    v13 = [objc_alloc(MEMORY[0x1E69CA5C0]) initWithQuery:locationCopy location:v12];
    v14 = locationCopy;
    v15 = [objc_opt_class() actionIdentifierFromTopic:v13];
    v16 = [(ATXSpotlightAction *)self initWithTopic:v13 criteria:criteriaCopy actionDescription:v14 actionIdentifier:v15];

    self = v16;
    selfCopy = self;
  }

  return selfCopy;
}

- (ATXSpotlightAction)initWithMediaName:(id)name identifier:(id)identifier criteria:(id)criteria
{
  nameCopy = name;
  v9 = MEMORY[0x1E69CA328];
  criteriaCopy = criteria;
  identifierCopy = identifier;
  v12 = [[v9 alloc] initWithType:1 query:nameCopy identifier:identifierCopy];

  v13 = nameCopy;
  v14 = [objc_opt_class() actionIdentifierFromTopic:v12];
  v15 = [(ATXSpotlightAction *)self initWithTopic:v12 criteria:criteriaCopy actionDescription:v13 actionIdentifier:v14];

  return v15;
}

- (ATXSpotlightAction)initWithPOIName:(id)name muid:(id)muid criteria:(id)criteria
{
  nameCopy = name;
  v9 = MEMORY[0x1E69CA328];
  criteriaCopy = criteria;
  muidCopy = muid;
  v12 = [v9 alloc];
  stringValue = [muidCopy stringValue];

  v14 = [v12 initWithType:6 query:nameCopy identifier:stringValue];
  v15 = nameCopy;
  v16 = [objc_opt_class() actionIdentifierFromTopic:v14];
  v17 = [(ATXSpotlightAction *)self initWithTopic:v14 criteria:criteriaCopy actionDescription:v15 actionIdentifier:v16];

  return v17;
}

- (ATXSpotlightAction)initWithSportsTeamName:(id)name qid:(id)qid criteria:(id)criteria
{
  v8 = MEMORY[0x1E69CA470];
  criteriaCopy = criteria;
  qidCopy = qid;
  nameCopy = name;
  v12 = [[v8 alloc] initWithQuery:@"team-qid" requestedEntityType:@"Team" identifier:qidCopy];

  if (nameCopy)
  {
    v13 = nameCopy;
  }

  else
  {
    v13 = @"team-qid";
  }

  v14 = v13;
  v15 = [objc_opt_class() actionIdentifierFromTopic:v12];
  v16 = [(ATXSpotlightAction *)self initWithTopic:v12 criteria:criteriaCopy actionDescription:v14 actionIdentifier:v15];

  return v16;
}

- (ATXSpotlightAction)initWithEntityName:(id)name qid:(id)qid criteria:(id)criteria
{
  v8 = MEMORY[0x1E69CA328];
  criteriaCopy = criteria;
  qidCopy = qid;
  nameCopy = name;
  v12 = [[v8 alloc] initWithType:2 query:@"entity-qid" identifier:qidCopy];

  if (nameCopy)
  {
    v13 = nameCopy;
  }

  else
  {
    v13 = @"entity-qid";
  }

  v14 = [(ATXSpotlightAction *)self initWithTopic:v12 criteria:criteriaCopy actionDescription:v13 actionIdentifier:@"SP-Entity-QID"];

  return v14;
}

+ (id)actionIdentifierFromTopic:(id)topic
{
  topicCopy = topic;
  v5 = [self spotlightActionTypeFromTopic:topicCopy];
  v6 = [self instanceIdentifierFromTopic:topicCopy];

  v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@:%lu", v5, v6];

  return v7;
}

+ (unint64_t)instanceIdentifierFromTopic:(id)topic
{
  identifier = [topic identifier];
  v4 = [identifier hash];

  return v4;
}

+ (id)spotlightActionTypeFromTopic:(id)topic
{
  topicCopy = topic;
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

    v5 = topicCopy;
    queryType = [v5 queryType];
    if (queryType > 4)
    {
      if ((queryType - 7) >= 2)
      {
        if (queryType == 5)
        {
          v4 = @"SP-Flight";
          goto LABEL_22;
        }

        if (queryType == 6)
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
      if (queryType > 1)
      {
        if (queryType != 2)
        {
          if (queryType == 3)
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

      if (queryType)
      {
        if (queryType == 1)
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

+ (id)_searchSuggestionResultWithString:(id)string
{
  v19[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69CA3E8];
  stringCopy = string;
  v5 = objc_alloc_init(v3);
  v6 = objc_opt_new();
  [v6 setText:stringCopy];
  [v5 setTitle:v6];
  [v5 setCompletion:stringCopy];
  [v5 setResultBundleId:@"com.apple.searchd.suggestion"];
  [v5 setSectionBundleIdentifier:@"com.apple.searchd.recent.suggestions"];
  [v5 setIdentifier:stringCopy];
  v7 = objc_opt_new();
  [v7 setSymbolName:@"magnifyingglass.circle.fill"];
  [v7 setIsTemplate:1];
  v8 = objc_opt_new();
  resultBundleId = [v5 resultBundleId];
  [v8 setBundleIdentifier:resultBundleId];

  v10 = objc_opt_new();
  v11 = [MEMORY[0x1E69CA3A0] textWithString:stringCopy];
  [v10 setSuggestionText:v11];

  suggestionText = [v10 suggestionText];
  [suggestionText setMaxLines:1];

  [v10 setSuggestionType:0];
  v19[0] = v8;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  [v10 setPunchoutOptions:v13];

  [v10 setThumbnail:v7];
  v14 = objc_opt_new();
  [v14 setSearchString:stringCopy];

  [v14 setQuerySource:1];
  [v10 setCommand:v14];
  v15 = objc_opt_new();
  v18 = v10;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
  [v15 setCardSections:v16];

  [v5 setInlineCard:v15];

  return v5;
}

+ (id)_contactSuggestionResultWithId:(id)id title:(id)title
{
  v18[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69CA3E8];
  titleCopy = title;
  idCopy = id;
  v8 = objc_alloc_init(v5);
  v9 = objc_opt_new();
  [v9 setText:titleCopy];
  [v8 setTitle:v9];
  [v8 setCompletion:titleCopy];
  [v8 setResultBundleId:@"com.apple.searchd.suggestion"];
  [v8 setSectionBundleIdentifier:@"com.apple.searchd.recent.suggestions"];
  [v8 setIdentifier:idCopy];
  v10 = objc_opt_new();
  resultBundleId = [v8 resultBundleId];
  [v10 setBundleIdentifier:resultBundleId];

  v12 = objc_opt_new();
  [v12 setSymbolName:@"person.crop.circle"];
  [v12 setIsTemplate:1];
  v13 = objc_opt_new();
  [v13 setEntityType:2];
  [v13 setEntityIdentifier:idCopy];

  [v13 setTokenString:titleCopy];
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