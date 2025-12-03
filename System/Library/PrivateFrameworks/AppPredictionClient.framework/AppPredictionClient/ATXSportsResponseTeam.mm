@interface ATXSportsResponseTeam
- (ATXSportsResponseTeam)initWithCoder:(id)coder;
- (ATXSportsResponseTeam)initWithName:(id)name umcid:(id)umcid qid:(id)qid;
- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)forid key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXSportsResponseTeam

- (ATXSportsResponseTeam)initWithName:(id)name umcid:(id)umcid qid:(id)qid
{
  nameCopy = name;
  umcidCopy = umcid;
  qidCopy = qid;
  v19.receiver = self;
  v19.super_class = ATXSportsResponseTeam;
  v11 = [(ATXSportsResponseTeam *)&v19 init];
  if (v11)
  {
    v12 = [nameCopy copy];
    name = v11->_name;
    v11->_name = v12;

    v14 = [umcidCopy copy];
    umcid = v11->_umcid;
    v11->_umcid = v14;

    v16 = [qidCopy copy];
    qid = v11->_qid;
    v11->_qid = v16;
  }

  return v11;
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
  name = self->_name;
  coderCopy = coder;
  [coderCopy encodeObject:name forKey:@"KEY_NAME"];
  [coderCopy encodeObject:self->_umcid forKey:@"KEY_UMCID"];
  [coderCopy encodeObject:self->_qid forKey:@"KEY_QID"];
}

- (ATXSportsResponseTeam)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x1E69C5D78];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_default();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"KEY_NAME" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.duetexpertd.ATXSportsResponseTeam" errorCode:-1 logHandle:v7];

  error = [coderCopy error];

  if (error)
  {
    selfCopy = 0;
  }

  else
  {
    v11 = MEMORY[0x1E69C5D78];
    v12 = objc_opt_class();
    v13 = __atxlog_handle_default();
    v14 = [v11 robustDecodeObjectOfClass:v12 forKey:@"KEY_UMCID" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.duetexpertd.ATXSportsResponseTeam" errorCode:-1 logHandle:v13];

    error2 = [coderCopy error];

    if (error2)
    {
      selfCopy = 0;
    }

    else
    {
      v16 = MEMORY[0x1E69C5D78];
      v17 = objc_opt_class();
      v18 = __atxlog_handle_default();
      v19 = [v16 robustDecodeObjectOfClass:v17 forKey:@"KEY_QID" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.duetexpertd.ATXSportsResponseTeam" errorCode:-1 logHandle:v18];

      error3 = [coderCopy error];

      if (error3)
      {
        selfCopy = 0;
      }

      else
      {
        self = [(ATXSportsResponseTeam *)self initWithName:v8 umcid:v14 qid:v19];
        selfCopy = self;
      }
    }
  }

  return selfCopy;
}

@end