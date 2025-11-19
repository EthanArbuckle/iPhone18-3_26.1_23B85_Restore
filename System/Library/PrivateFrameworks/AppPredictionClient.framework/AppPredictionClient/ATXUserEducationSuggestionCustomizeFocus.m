@interface ATXUserEducationSuggestionCustomizeFocus
- (ATXUserEducationSuggestionCustomizeFocus)initWithCoder:(id)a3;
- (ATXUserEducationSuggestionCustomizeFocus)initWithModeSemanticType:(int64_t)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXUserEducationSuggestionCustomizeFocus

- (ATXUserEducationSuggestionCustomizeFocus)initWithModeSemanticType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ATXUserEducationSuggestionCustomizeFocus;
  result = [(ATXUserEducationSuggestion *)&v5 initWithRandomUUID];
  if (result)
  {
    result->_modeSemanticType = a3;
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

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = ATXUserEducationSuggestionCustomizeFocus;
  v4 = a3;
  [(ATXUserEducationSuggestion *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_modeSemanticType forKey:{@"DiscoverySuggestions.codingKeyForModeSemanticType", v5.receiver, v5.super_class}];
}

- (ATXUserEducationSuggestionCustomizeFocus)initWithCoder:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v18.receiver = self;
  v18.super_class = ATXUserEducationSuggestionCustomizeFocus;
  v5 = [(ATXUserEducationSuggestion *)&v18 initWithCoder:v4];
  if (v5)
  {
    v5->_modeSemanticType = [v4 decodeIntegerForKey:@"DiscoverySuggestions.codingKeyForModeSemanticType"];
    v6 = [v4 error];

    if (!v6)
    {
      v16 = v5;
      goto LABEL_9;
    }

    v7 = __atxlog_handle_context_user_education_suggestions();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v4 error];
      *buf = 136315394;
      v20 = "[ATXUserEducationSuggestionCustomizeFocus initWithCoder:]";
      v21 = 2114;
      v22 = v8;
      _os_log_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEFAULT, "%s: decoding error: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v7 = __atxlog_handle_context_user_education_suggestions();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(ATXUserEducationSuggestionCustomizeFocus *)v7 initWithCoder:v9, v10, v11, v12, v13, v14, v15];
    }
  }

  v16 = 0;
LABEL_9:

  return v16;
}

@end