@interface ATXUserEducationSuggestionFocusModeSetup
- (ATXUserEducationSuggestionFocusModeSetup)initWithCoder:(id)coder;
- (ATXUserEducationSuggestionFocusModeSetup)initWithModeSemanticType:(int64_t)type;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXUserEducationSuggestionFocusModeSetup

- (ATXUserEducationSuggestionFocusModeSetup)initWithModeSemanticType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = ATXUserEducationSuggestionFocusModeSetup;
  result = [(ATXUserEducationSuggestion *)&v5 initWithRandomUUID];
  if (result)
  {
    result->_modeSemanticType = type;
  }

  return result;
}

- (id)description
{
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = objc_opt_class();
  v4 = DNDModeSemanticTypeToString();
  v5 = [v2 initWithFormat:@"<%@ modeSemanticType: %@>", v3, v4];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = ATXUserEducationSuggestionFocusModeSetup;
  coderCopy = coder;
  [(ATXUserEducationSuggestion *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_modeSemanticType forKey:{@"DiscoverySuggestions.codingKeyForModeSemanticType", v5.receiver, v5.super_class}];
}

- (ATXUserEducationSuggestionFocusModeSetup)initWithCoder:(id)coder
{
  v23 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = ATXUserEducationSuggestionFocusModeSetup;
  v5 = [(ATXUserEducationSuggestion *)&v18 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_modeSemanticType = [coderCopy decodeIntegerForKey:@"DiscoverySuggestions.codingKeyForModeSemanticType"];
    error = [coderCopy error];

    if (!error)
    {
      v16 = v5;
      goto LABEL_9;
    }

    v7 = __atxlog_handle_context_user_education_suggestions();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      error2 = [coderCopy error];
      *buf = 136315394;
      v20 = "[ATXUserEducationSuggestionFocusModeSetup initWithCoder:]";
      v21 = 2114;
      v22 = error2;
      _os_log_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEFAULT, "%s: decoding error: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v7 = __atxlog_handle_context_user_education_suggestions();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(ATXUserEducationSuggestionFocusModeSetup *)v7 initWithCoder:v9, v10, v11, v12, v13, v14, v15];
    }
  }

  v16 = 0;
LABEL_9:

  return v16;
}

@end