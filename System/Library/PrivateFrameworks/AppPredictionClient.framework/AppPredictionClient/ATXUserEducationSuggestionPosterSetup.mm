@interface ATXUserEducationSuggestionPosterSetup
- (ATXUserEducationSuggestionPosterSetup)initWithCoder:(id)a3;
- (ATXUserEducationSuggestionPosterSetup)initWithPosterId:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXUserEducationSuggestionPosterSetup

- (ATXUserEducationSuggestionPosterSetup)initWithPosterId:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATXUserEducationSuggestionPosterSetup;
  v6 = [(ATXUserEducationSuggestion *)&v9 initWithRandomUUID];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_posterId, a3);
  }

  return v7;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<%@ posterId: %@>", objc_opt_class(), self->_posterId];

  return v2;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = ATXUserEducationSuggestionPosterSetup;
  v4 = a3;
  [(ATXUserEducationSuggestion *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_posterId forKey:{@"DiscoverySuggestions.codingKeyForPosterId", v5.receiver, v5.super_class}];
}

- (ATXUserEducationSuggestionPosterSetup)initWithCoder:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v23.receiver = self;
  v23.super_class = ATXUserEducationSuggestionPosterSetup;
  v5 = [(ATXUserEducationSuggestion *)&v23 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E69C5D78];
    v7 = objc_opt_class();
    v8 = __atxlog_handle_context_user_education_suggestions();
    v9 = [v6 robustDecodeObjectOfClass:v7 forKey:@"DiscoverySuggestions.codingKeyForPosterId" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.decode.ATXUserEducationSuggestion" errorCode:-7 logHandle:v8];
    posterId = v5->_posterId;
    v5->_posterId = v9;

    v11 = [v4 error];

    if (!v11)
    {
      v21 = v5;
      goto LABEL_9;
    }

    v12 = __atxlog_handle_context_user_education_suggestions();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v4 error];
      *buf = 136315394;
      v25 = "[ATXUserEducationSuggestionPosterSetup initWithCoder:]";
      v26 = 2114;
      v27 = v13;
      _os_log_impl(&dword_1BF549000, v12, OS_LOG_TYPE_DEFAULT, "%s: decoding error: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v12 = __atxlog_handle_context_user_education_suggestions();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(ATXUserEducationSuggestionPosterSetup *)v12 initWithCoder:v14, v15, v16, v17, v18, v19, v20];
    }
  }

  v21 = 0;
LABEL_9:

  return v21;
}

@end