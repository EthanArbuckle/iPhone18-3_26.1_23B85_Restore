@interface ATXAnchorModelPredictionOffsetFromAnchorOccurrence
- (ATXAnchorModelPredictionOffsetFromAnchorOccurrence)initWithCoder:(id)coder;
- (ATXAnchorModelPredictionOffsetFromAnchorOccurrence)initWithStartSecondsAfterAnchor:(double)anchor endSecondsAfterAnchor:(double)afterAnchor;
- (BOOL)checkAndReportDecodingFailureIfNeededFordouble:(double)fordouble key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXAnchorModelPredictionOffsetFromAnchorOccurrence

- (ATXAnchorModelPredictionOffsetFromAnchorOccurrence)initWithStartSecondsAfterAnchor:(double)anchor endSecondsAfterAnchor:(double)afterAnchor
{
  v7.receiver = self;
  v7.super_class = ATXAnchorModelPredictionOffsetFromAnchorOccurrence;
  result = [(ATXAnchorModelPredictionOffsetFromAnchorOccurrence *)&v7 init];
  if (result)
  {
    result->_startSecondsAfterAnchor = anchor;
    result->_endSecondsAfterAnchor = afterAnchor;
  }

  return result;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Start seconds after anchor: %.2f, End seconds after anchor: %.2f", *&self->_startSecondsAfterAnchor, *&self->_endSecondsAfterAnchor];

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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

- (BOOL)checkAndReportDecodingFailureIfNeededFordouble:(double)fordouble key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code
{
  v23[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  coderCopy = coder;
  domainCopy = domain;
  if (fordouble == 0.0)
  {
    error = [coderCopy error];

    if (error)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([coderCopy containsValueForKey:keyCopy] & 1) == 0)
    {
      v16 = objc_alloc(MEMORY[0x277CCA9B8]);
      v22 = *MEMORY[0x277CCA450];
      v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode key %@", keyCopy, v22];
      v23[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v19 = [v16 initWithDomain:domainCopy code:code userInfo:v18];

      [coderCopy failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  v20 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  startSecondsAfterAnchor = self->_startSecondsAfterAnchor;
  coderCopy = coder;
  [coderCopy encodeDouble:@"startSeconds" forKey:startSecondsAfterAnchor];
  [coderCopy encodeDouble:@"endSeconds" forKey:self->_endSecondsAfterAnchor];
}

- (ATXAnchorModelPredictionOffsetFromAnchorOccurrence)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeDoubleForKey:@"startSeconds"];
  v6 = v5;
  if (-[ATXAnchorModelPredictionOffsetFromAnchorOccurrence checkAndReportDecodingFailureIfNeededFordouble:key:coder:errorDomain:errorCode:](self, "checkAndReportDecodingFailureIfNeededFordouble:key:coder:errorDomain:errorCode:", @"startSeconds", coderCopy, @"endSeconds", -1) || ([coderCopy decodeDoubleForKey:@"endSeconds"], v8 = v7, -[ATXAnchorModelPredictionOffsetFromAnchorOccurrence checkAndReportDecodingFailureIfNeededFordouble:key:coder:errorDomain:errorCode:](self, "checkAndReportDecodingFailureIfNeededFordouble:key:coder:errorDomain:errorCode:", @"endSeconds", coderCopy, @"endSeconds", -1)))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ATXAnchorModelPredictionOffsetFromAnchorOccurrence *)self initWithStartSecondsAfterAnchor:v6 endSecondsAfterAnchor:v8];
    selfCopy = self;
  }

  return selfCopy;
}

@end