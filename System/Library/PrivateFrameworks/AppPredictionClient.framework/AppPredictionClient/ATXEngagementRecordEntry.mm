@interface ATXEngagementRecordEntry
- (ATXEngagementRecordEntry)initWithCoder:(id)coder;
- (ATXEngagementRecordEntry)initWithExecutable:(id)executable dateEngaged:(id)engaged engagementRecordType:(unint64_t)type;
- (BOOL)isEqual:(id)equal;
- (id)jsonDict;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXEngagementRecordEntry

- (ATXEngagementRecordEntry)initWithExecutable:(id)executable dateEngaged:(id)engaged engagementRecordType:(unint64_t)type
{
  executableCopy = executable;
  engagedCopy = engaged;
  v15.receiver = self;
  v15.super_class = ATXEngagementRecordEntry;
  v11 = [(ATXEngagementRecordEntry *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_executable, executable);
    objc_storeStrong(&v12->_dateEngaged, engaged);
    v12->_engagementRecordType = type;
    v13 = v12;
  }

  return v12;
}

- (ATXEngagementRecordEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x1E69C5D78];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_default();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"executable" withCoder:coderCopy expectNonNull:1 errorDomain:@"kATXEngagementRecord" errorCode:1 logHandle:v7];

  if (v8)
  {
    v9 = MEMORY[0x1E69C5D78];
    v10 = objc_opt_class();
    v11 = __atxlog_handle_home_screen();
    v12 = [v9 robustDecodeObjectOfClass:v10 forKey:@"dateEngaged" withCoder:coderCopy expectNonNull:1 errorDomain:@"kATXEngagementRecord" errorCode:2 logHandle:v11];

    if (v12)
    {
      self = -[ATXEngagementRecordEntry initWithExecutable:dateEngaged:engagementRecordType:](self, "initWithExecutable:dateEngaged:engagementRecordType:", v8, v12, [coderCopy decodeIntegerForKey:@"engagementRecordType"]);
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  executable = self->_executable;
  coderCopy = coder;
  [coderCopy encodeObject:executable forKey:@"executable"];
  [coderCopy encodeObject:self->_dateEngaged forKey:@"dateEngaged"];
  [coderCopy encodeInteger:self->_engagementRecordType forKey:@"engagementRecordType"];
}

- (id)jsonDict
{
  v9[3] = *MEMORY[0x1E69E9840];
  v8[0] = @"executable";
  debugTitle = [(ATXExecutableIdentifier *)self->_executable debugTitle];
  v9[0] = debugTitle;
  v8[1] = @"dateEngaged";
  v4 = [(NSDate *)self->_dateEngaged description];
  v9[1] = v4;
  v8[2] = @"engagementRecordType";
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_engagementRecordType];
  v9[2] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = self->_executable;
      v7 = v6;
      if (v6 == v5->_executable)
      {
      }

      else
      {
        v8 = [(ATXExecutableIdentifier *)v6 isEqual:?];

        if (!v8)
        {
          v9 = 0;
LABEL_10:

          goto LABEL_11;
        }
      }

      engagementRecordType = self->_engagementRecordType;
      v9 = engagementRecordType == [(ATXEngagementRecordEntry *)v5 engagementRecordType];
      goto LABEL_10;
    }

    v9 = 0;
  }

LABEL_11:

  return v9;
}

@end