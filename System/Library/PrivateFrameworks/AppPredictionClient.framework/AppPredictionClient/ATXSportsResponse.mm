@interface ATXSportsResponse
- (ATXSportsResponse)initWithCoder:(id)coder;
- (ATXSportsResponse)initWithTeams:(id)teams;
- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)forid key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code;
@end

@implementation ATXSportsResponse

- (ATXSportsResponse)initWithTeams:(id)teams
{
  teamsCopy = teams;
  v9.receiver = self;
  v9.super_class = ATXSportsResponse;
  v5 = [(ATXSportsResponse *)&v9 init];
  if (v5)
  {
    v6 = [teamsCopy copy];
    teams = v5->_teams;
    v5->_teams = v6;
  }

  return v5;
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

- (ATXSportsResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x1E69C5D78];
  v6 = objc_autoreleasePoolPush();
  v7 = objc_alloc(MEMORY[0x1E695DFD8]);
  v8 = objc_opt_class();
  v9 = [v7 initWithObjects:{v8, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v6);
  v10 = __atxlog_handle_default();
  v11 = [v5 robustDecodeObjectOfClasses:v9 forKey:@"KEY_TEAMS" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.duetexpertd.ATXSportsResponse" errorCode:-1 logHandle:v10];

  error = [coderCopy error];

  selfCopy = 0;
  if (!error && v11)
  {
    self = [(ATXSportsResponse *)self initWithTeams:v11];
    selfCopy = self;
  }

  return selfCopy;
}

@end