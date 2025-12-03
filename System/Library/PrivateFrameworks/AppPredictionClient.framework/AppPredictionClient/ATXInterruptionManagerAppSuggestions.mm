@interface ATXInterruptionManagerAppSuggestions
- (ATXInterruptionManagerAppSuggestions)init;
- (ATXInterruptionManagerAppSuggestions)initWithCoder:(id)coder;
- (ATXInterruptionManagerAppSuggestions)initWithRecommendedApps:(id)apps candidateApps:(id)candidateApps;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXInterruptionManagerAppSuggestions

- (ATXInterruptionManagerAppSuggestions)init
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = [(ATXInterruptionManagerAppSuggestions *)self initWithRecommendedApps:v3 candidateApps:v4];

  return v5;
}

- (ATXInterruptionManagerAppSuggestions)initWithRecommendedApps:(id)apps candidateApps:(id)candidateApps
{
  appsCopy = apps;
  candidateAppsCopy = candidateApps;
  v12.receiver = self;
  v12.super_class = ATXInterruptionManagerAppSuggestions;
  v9 = [(ATXInterruptionManagerAppSuggestions *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_recommendedApps, apps);
    objc_storeStrong(&v10->_candidateApps, candidateApps);
  }

  return v10;
}

- (id)debugDescription
{
  v7[2] = *MEMORY[0x1E69E9840];
  v6[0] = @"recommendedApps";
  v6[1] = @"candidateApps";
  candidateApps = self->_candidateApps;
  v7[0] = self->_recommendedApps;
  v7[1] = candidateApps;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];
  v4 = [v3 debugDescription];

  return v4;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"recommendedApps: %@ candidateApps: %@", self->_recommendedApps, self->_candidateApps];

  return v2;
}

- (void)encodeWithCoder:(id)coder
{
  recommendedApps = self->_recommendedApps;
  coderCopy = coder;
  [coderCopy encodeObject:recommendedApps forKey:@"codingKeyForRecommendedApps"];
  [coderCopy encodeObject:self->_candidateApps forKey:@"codingKeyForCandidateApps"];
}

- (ATXInterruptionManagerAppSuggestions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x1E69C5D78];
  v6 = objc_autoreleasePoolPush();
  v7 = objc_alloc(MEMORY[0x1E695DFD8]);
  v8 = objc_opt_class();
  v9 = [v7 initWithObjects:{v8, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v6);
  v10 = __atxlog_handle_notification_management();
  v11 = [v5 robustDecodeObjectOfClasses:v9 forKey:@"codingKeyForRecommendedApps" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.decode.ATXInterruptionManagerAppSuggestions" errorCode:-1 logHandle:v10];

  error = [coderCopy error];

  v13 = 0;
  if (!error)
  {
    v14 = MEMORY[0x1E69C5D78];
    v15 = objc_autoreleasePoolPush();
    v16 = objc_alloc(MEMORY[0x1E695DFD8]);
    v17 = objc_opt_class();
    v18 = [v16 initWithObjects:{v17, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v15);
    v19 = __atxlog_handle_notification_management();
    v20 = [v14 robustDecodeObjectOfClasses:v18 forKey:@"codingKeyForCandidateApps" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.decode.ATXInterruptionManagerAppSuggestions" errorCode:-1 logHandle:v19];

    error2 = [coderCopy error];

    v13 = 0;
    if (!error2)
    {
      v13 = [[ATXInterruptionManagerAppSuggestions alloc] initWithRecommendedApps:v11 candidateApps:v20];
    }
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ATXInterruptionManagerAppSuggestions allocWithZone:zone];
  v5 = [(NSMutableArray *)self->_recommendedApps mutableCopy];
  v6 = [(NSMutableArray *)self->_candidateApps mutableCopy];
  v7 = [(ATXInterruptionManagerAppSuggestions *)v4 initWithRecommendedApps:v5 candidateApps:v6];

  return v7;
}

@end