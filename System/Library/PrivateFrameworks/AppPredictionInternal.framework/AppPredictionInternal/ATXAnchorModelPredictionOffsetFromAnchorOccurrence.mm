@interface ATXAnchorModelPredictionOffsetFromAnchorOccurrence
- (ATXAnchorModelPredictionOffsetFromAnchorOccurrence)initWithCoder:(id)a3;
- (ATXAnchorModelPredictionOffsetFromAnchorOccurrence)initWithStartSecondsAfterAnchor:(double)a3 endSecondsAfterAnchor:(double)a4;
- (BOOL)checkAndReportDecodingFailureIfNeededFordouble:(double)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXAnchorModelPredictionOffsetFromAnchorOccurrence

- (ATXAnchorModelPredictionOffsetFromAnchorOccurrence)initWithStartSecondsAfterAnchor:(double)a3 endSecondsAfterAnchor:(double)a4
{
  v7.receiver = self;
  v7.super_class = ATXAnchorModelPredictionOffsetFromAnchorOccurrence;
  result = [(ATXAnchorModelPredictionOffsetFromAnchorOccurrence *)&v7 init];
  if (result)
  {
    result->_startSecondsAfterAnchor = a3;
    result->_endSecondsAfterAnchor = a4;
  }

  return result;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Start seconds after anchor: %.2f, End seconds after anchor: %.2f", *&self->_startSecondsAfterAnchor, *&self->_endSecondsAfterAnchor];

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      startSecondsAfterAnchor = self->_startSecondsAfterAnchor;
      [(ATXAnchorModelPredictionOffsetFromAnchorOccurrence *)v5 startSecondsAfterAnchor];
      if (startSecondsAfterAnchor == v7)
      {
        endSecondsAfterAnchor = self->_endSecondsAfterAnchor;
        [(ATXAnchorModelPredictionOffsetFromAnchorOccurrence *)v5 endSecondsAfterAnchor];
        v8 = endSecondsAfterAnchor == v10;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (BOOL)checkAndReportDecodingFailureIfNeededFordouble:(double)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7
{
  v23[1] = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (a3 == 0.0)
  {
    v15 = [v12 error];

    if (v15)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([v12 containsValueForKey:v11] & 1) == 0)
    {
      v16 = objc_alloc(MEMORY[0x277CCA9B8]);
      v22 = *MEMORY[0x277CCA450];
      v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode key %@", v11, v22];
      v23[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v19 = [v16 initWithDomain:v13 code:a7 userInfo:v18];

      [v12 failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  v20 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  startSecondsAfterAnchor = self->_startSecondsAfterAnchor;
  v5 = a3;
  [v5 encodeDouble:@"startSeconds" forKey:startSecondsAfterAnchor];
  [v5 encodeDouble:@"endSeconds" forKey:self->_endSecondsAfterAnchor];
}

- (ATXAnchorModelPredictionOffsetFromAnchorOccurrence)initWithCoder:(id)a3
{
  v4 = a3;
  [v4 decodeDoubleForKey:@"startSeconds"];
  v6 = v5;
  if (-[ATXAnchorModelPredictionOffsetFromAnchorOccurrence checkAndReportDecodingFailureIfNeededFordouble:key:coder:errorDomain:errorCode:](self, "checkAndReportDecodingFailureIfNeededFordouble:key:coder:errorDomain:errorCode:", @"startSeconds", v4, @"endSeconds", -1) || ([v4 decodeDoubleForKey:@"endSeconds"], v8 = v7, -[ATXAnchorModelPredictionOffsetFromAnchorOccurrence checkAndReportDecodingFailureIfNeededFordouble:key:coder:errorDomain:errorCode:](self, "checkAndReportDecodingFailureIfNeededFordouble:key:coder:errorDomain:errorCode:", @"endSeconds", v4, @"endSeconds", -1)))
  {
    v9 = 0;
  }

  else
  {
    self = [(ATXAnchorModelPredictionOffsetFromAnchorOccurrence *)self initWithStartSecondsAfterAnchor:v6 endSecondsAfterAnchor:v8];
    v9 = self;
  }

  return v9;
}

@end