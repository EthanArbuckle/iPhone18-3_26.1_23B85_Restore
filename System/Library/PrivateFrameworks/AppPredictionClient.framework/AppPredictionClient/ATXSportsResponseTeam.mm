@interface ATXSportsResponseTeam
- (ATXSportsResponseTeam)initWithCoder:(id)a3;
- (ATXSportsResponseTeam)initWithName:(id)a3 umcid:(id)a4 qid:(id)a5;
- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXSportsResponseTeam

- (ATXSportsResponseTeam)initWithName:(id)a3 umcid:(id)a4 qid:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = ATXSportsResponseTeam;
  v11 = [(ATXSportsResponseTeam *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    name = v11->_name;
    v11->_name = v12;

    v14 = [v9 copy];
    umcid = v11->_umcid;
    v11->_umcid = v14;

    v16 = [v10 copy];
    qid = v11->_qid;
    v11->_qid = v16;
  }

  return v11;
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
  name = self->_name;
  v5 = a3;
  [v5 encodeObject:name forKey:@"KEY_NAME"];
  [v5 encodeObject:self->_umcid forKey:@"KEY_UMCID"];
  [v5 encodeObject:self->_qid forKey:@"KEY_QID"];
}

- (ATXSportsResponseTeam)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69C5D78];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_default();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"KEY_NAME" withCoder:v4 expectNonNull:0 errorDomain:@"com.apple.duetexpertd.ATXSportsResponseTeam" errorCode:-1 logHandle:v7];

  v9 = [v4 error];

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v11 = MEMORY[0x1E69C5D78];
    v12 = objc_opt_class();
    v13 = __atxlog_handle_default();
    v14 = [v11 robustDecodeObjectOfClass:v12 forKey:@"KEY_UMCID" withCoder:v4 expectNonNull:0 errorDomain:@"com.apple.duetexpertd.ATXSportsResponseTeam" errorCode:-1 logHandle:v13];

    v15 = [v4 error];

    if (v15)
    {
      v10 = 0;
    }

    else
    {
      v16 = MEMORY[0x1E69C5D78];
      v17 = objc_opt_class();
      v18 = __atxlog_handle_default();
      v19 = [v16 robustDecodeObjectOfClass:v17 forKey:@"KEY_QID" withCoder:v4 expectNonNull:0 errorDomain:@"com.apple.duetexpertd.ATXSportsResponseTeam" errorCode:-1 logHandle:v18];

      v20 = [v4 error];

      if (v20)
      {
        v10 = 0;
      }

      else
      {
        self = [(ATXSportsResponseTeam *)self initWithName:v8 umcid:v14 qid:v19];
        v10 = self;
      }
    }
  }

  return v10;
}

@end