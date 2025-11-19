@interface ATXSportsResponse
- (ATXSportsResponse)initWithCoder:(id)a3;
- (ATXSportsResponse)initWithTeams:(id)a3;
- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7;
@end

@implementation ATXSportsResponse

- (ATXSportsResponse)initWithTeams:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ATXSportsResponse;
  v5 = [(ATXSportsResponse *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    teams = v5->_teams;
    v5->_teams = v6;
  }

  return v5;
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

- (ATXSportsResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69C5D78];
  v6 = objc_autoreleasePoolPush();
  v7 = objc_alloc(MEMORY[0x1E695DFD8]);
  v8 = objc_opt_class();
  v9 = [v7 initWithObjects:{v8, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v6);
  v10 = __atxlog_handle_default();
  v11 = [v5 robustDecodeObjectOfClasses:v9 forKey:@"KEY_TEAMS" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.duetexpertd.ATXSportsResponse" errorCode:-1 logHandle:v10];

  v12 = [v4 error];

  v13 = 0;
  if (!v12 && v11)
  {
    self = [(ATXSportsResponse *)self initWithTeams:v11];
    v13 = self;
  }

  return v13;
}

@end