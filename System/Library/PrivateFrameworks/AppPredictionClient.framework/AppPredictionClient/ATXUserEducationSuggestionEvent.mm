@interface ATXUserEducationSuggestionEvent
- (ATXUserEducationSuggestionEvent)initWithCoder:(id)coder;
- (ATXUserEducationSuggestionEvent)initWithUserEducationSuggestion:(id)suggestion userEducationSuggestionEventType:(unint64_t)type;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXUserEducationSuggestionEvent

- (ATXUserEducationSuggestionEvent)initWithUserEducationSuggestion:(id)suggestion userEducationSuggestionEventType:(unint64_t)type
{
  suggestionCopy = suggestion;
  v11.receiver = self;
  v11.super_class = ATXUserEducationSuggestionEvent;
  v8 = [(ATXUserEducationSuggestionEvent *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_userEducationSuggestion, suggestion);
    v9->_userEducationSuggestionEventType = type;
  }

  return v9;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  userEducationSuggestion = self->_userEducationSuggestion;
  v6 = ATXUserEducationSuggestionEventTypeToString(self->_userEducationSuggestionEventType);
  v7 = [v3 initWithFormat:@"<%@ userEducationSuggestion: %@ eventType: %@>", v4, userEducationSuggestion, v6];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  userEducationSuggestion = self->_userEducationSuggestion;
  coderCopy = coder;
  [coderCopy encodeObject:userEducationSuggestion forKey:@"ATXUserEducationSuggestionEvent.codingKeyForUserEducationSuggestion"];
  [coderCopy encodeInteger:self->_userEducationSuggestionEventType forKey:@"ATXUserEducationSuggestionEvent.codingKeyForUserEducationSuggestionEventType"];
}

- (ATXUserEducationSuggestionEvent)initWithCoder:(id)coder
{
  v20 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = MEMORY[0x1E69C5D78];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_context_user_education_suggestions();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"ATXUserEducationSuggestionEvent.codingKeyForUserEducationSuggestion" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.decode.ATXUserEducationSuggestionEvent" errorCode:-7 logHandle:v7];

  error = [coderCopy error];

  if (error)
  {
    v10 = __atxlog_handle_context_user_education_suggestions();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
LABEL_6:
      error2 = [coderCopy error];
      *buf = 136315394;
      v17 = "[ATXUserEducationSuggestionEvent initWithCoder:]";
      v18 = 2114;
      v19 = error2;
      _os_log_impl(&dword_1BF549000, v10, OS_LOG_TYPE_DEFAULT, "%s: decoding error: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v11 = [coderCopy decodeIntegerForKey:@"ATXUserEducationSuggestionEvent.codingKeyForUserEducationSuggestionEventType"];
    error3 = [coderCopy error];

    if (!error3)
    {
      v14 = [objc_alloc(objc_opt_class()) initWithUserEducationSuggestion:v8 userEducationSuggestionEventType:v11];
      goto LABEL_8;
    }

    v10 = __atxlog_handle_context_user_education_suggestions();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_6;
    }
  }

  v14 = 0;
LABEL_8:

  return v14;
}

@end