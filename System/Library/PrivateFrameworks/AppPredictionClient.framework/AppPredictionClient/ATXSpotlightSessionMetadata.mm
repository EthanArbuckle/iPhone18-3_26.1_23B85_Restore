@interface ATXSpotlightSessionMetadata
- (ATXSpotlightSessionMetadata)initWithAppConsumerSubType:(unsigned __int8)a3 actionConsumerSubType:(unsigned __int8)a4 engagedAppString:(id)a5 didSearchDuringSession:(BOOL)a6;
- (ATXSpotlightSessionMetadata)initWithCoder:(id)a3;
- (BOOL)checkAndReportDecodingFailureIfNeededForBOOL:(BOOL)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7;
- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXSpotlightSessionMetadata:(id)a3;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXSpotlightSessionMetadata

- (ATXSpotlightSessionMetadata)initWithAppConsumerSubType:(unsigned __int8)a3 actionConsumerSubType:(unsigned __int8)a4 engagedAppString:(id)a5 didSearchDuringSession:(BOOL)a6
{
  v11 = a5;
  v15.receiver = self;
  v15.super_class = ATXSpotlightSessionMetadata;
  v12 = [(ATXSpotlightSessionMetadata *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_appConsumerSubType = a3;
    v12->_actionConsumerSubType = a4;
    objc_storeStrong(&v12->_engagedAppString, a5);
    v13->_didSearchDuringSession = a6;
  }

  return v13;
}

- (NSString)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [MEMORY[0x1E698B028] stringForConsumerSubtype:self->_appConsumerSubType];
  v8 = [MEMORY[0x1E698B028] stringForConsumerSubtype:self->_actionConsumerSubType];
  v9 = v8;
  if (self->_didSearchDuringSession)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v11 = [v4 initWithFormat:@"%@: \napp consumersubtype: %@ \naction consumersubtype: %@ \nengaged app string: %@ \ndid search during session: %@ \n", v6, v7, v8, self->_engagedAppString, v10];

  objc_autoreleasePoolPop(v3);

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

- (BOOL)checkAndReportDecodingFailureIfNeededForBOOL:(BOOL)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7
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
  v4 = MEMORY[0x1E698B028];
  appConsumerSubType = self->_appConsumerSubType;
  v8 = a3;
  v6 = [v4 stringForConsumerSubtype:appConsumerSubType];
  [v8 encodeObject:v6 forKey:@"appConsumerSubType"];

  v7 = [MEMORY[0x1E698B028] stringForConsumerSubtype:self->_actionConsumerSubType];
  [v8 encodeObject:v7 forKey:@"actionConsumerSubType"];

  [v8 encodeBool:self->_didSearchDuringSession forKey:@"didSearchDuringSession"];
  [v8 encodeObject:self->_engagedAppString forKey:@"engagedAppString"];
}

- (ATXSpotlightSessionMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appConsumerSubType"];
  if (-[ATXSpotlightSessionMetadata checkAndReportDecodingFailureIfNeededForid:key:coder:errorDomain:errorCode:](self, "checkAndReportDecodingFailureIfNeededForid:key:coder:errorDomain:errorCode:", v5, @"appConsumerSubType", v4, @"com.apple.ATXFeedbackSessionMetadata", -1) || (v19 = 0, v6 = [MEMORY[0x1E698B028] consumerSubtypeForString:v5 found:&v19], v19 != 1))
  {
    v12 = 0;
  }

  else
  {
    v7 = v6;
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"actionConsumerSubType"];
    if (-[ATXSpotlightSessionMetadata checkAndReportDecodingFailureIfNeededForid:key:coder:errorDomain:errorCode:](self, "checkAndReportDecodingFailureIfNeededForid:key:coder:errorDomain:errorCode:", v8, @"actionConsumerSubType", v4, @"com.apple.ATXFeedbackSessionMetadata", -1) || (v18 = 0, v9 = [MEMORY[0x1E698B028] consumerSubtypeForString:v8 found:&v18], v18 != 1) || (v10 = v9, v11 = objc_msgSend(v4, "decodeBoolForKey:", @"didSearchDuringSession"), -[ATXSpotlightSessionMetadata checkAndReportDecodingFailureIfNeededForBOOL:key:coder:errorDomain:errorCode:](self, "checkAndReportDecodingFailureIfNeededForBOOL:key:coder:errorDomain:errorCode:", v11, @"didSearchDuringSession", v4, @"com.apple.ATXFeedbackSessionMetadata", -1)))
    {
      v12 = 0;
    }

    else
    {
      v14 = MEMORY[0x1E69C5D78];
      v15 = objc_opt_class();
      v16 = __atxlog_handle_feedback();
      v17 = [v14 robustDecodeObjectOfClass:v15 forKey:@"engagedAppString" withCoder:v4 expectNonNull:0 errorDomain:@"com.apple.ATXFeedbackSessionMetadata" errorCode:-1 logHandle:v16];

      self = [(ATXSpotlightSessionMetadata *)self initWithAppConsumerSubType:v7 actionConsumerSubType:v10 engagedAppString:v17 didSearchDuringSession:v11];
      v12 = self;
    }
  }

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXSpotlightSessionMetadata *)self isEqualToATXSpotlightSessionMetadata:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXSpotlightSessionMetadata:(id)a3
{
  v4 = a3;
  appConsumerSubType = self->_appConsumerSubType;
  if (appConsumerSubType == [v4 appConsumerSubType] && (actionConsumerSubType = self->_actionConsumerSubType, actionConsumerSubType == objc_msgSend(v4, "actionConsumerSubType")) && (didSearchDuringSession = self->_didSearchDuringSession, didSearchDuringSession == objc_msgSend(v4, "didSearchDuringSession")))
  {
    v8 = self->_engagedAppString;
    v9 = v8;
    if (v8 == v4[2])
    {
      v10 = 1;
    }

    else
    {
      v10 = [(NSString *)v8 isEqual:?];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v2 = self->_actionConsumerSubType - self->_appConsumerSubType + 32 * self->_appConsumerSubType;
  v3 = self->_didSearchDuringSession - v2 + 32 * v2;
  return &self->_engagedAppString[4 * v3] - v3;
}

@end