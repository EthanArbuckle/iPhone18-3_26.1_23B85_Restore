@interface CLRecentLocationsFetchOptions
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToFetchOptions:(id)a3;
- (CLRecentLocationsFetchOptions)initWithCoder:(id)a3;
- (CLRecentLocationsFetchOptions)initWithDate:(id)a3 machContinuousTimeSeconds:(id)a4 numberOfSeconds:(id)a5 allowDelayedResponse:(BOOL)a6 returnSparseLocations:(BOOL)a7;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLRecentLocationsFetchOptions

- (CLRecentLocationsFetchOptions)initWithDate:(id)a3 machContinuousTimeSeconds:(id)a4 numberOfSeconds:(id)a5 allowDelayedResponse:(BOOL)a6 returnSparseLocations:(BOOL)a7
{
  v14.receiver = self;
  v14.super_class = CLRecentLocationsFetchOptions;
  v12 = [(CLRecentLocationsFetchOptions *)&v14 init];
  if (v12)
  {
    v12->_date = a3;
    v12->_machContinuousTimeSeconds = a4;
    v12->_numberOfSeconds = a5;
    v12->_allowDelayedResponse = a6;
    v12->_returnSparseLocations = a7;
  }

  return v12;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLRecentLocationsFetchOptions;
  [(CLRecentLocationsFetchOptions *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  if (!a3)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return MEMORY[0x1EEE66B58](self, sel_isEqualToFetchOptions_);
}

- (BOOL)isEqualToFetchOptions:(id)a3
{
  date = self->_date;
  if (date)
  {
    goto LABEL_4;
  }

  if ([a3 date])
  {
    date = self->_date;
LABEL_4:
    v6 = -[NSDate isEqual:](date, "isEqual:", [a3 date]) ^ 1;
    goto LABEL_5;
  }

  v6 = 0;
LABEL_5:
  machContinuousTimeSeconds = self->_machContinuousTimeSeconds;
  if (machContinuousTimeSeconds)
  {
LABEL_8:
    v8 = -[NSNumber isEqual:](machContinuousTimeSeconds, "isEqual:", [a3 machContinuousTimeSeconds]) ^ 1;
    goto LABEL_9;
  }

  if ([a3 machContinuousTimeSeconds])
  {
    machContinuousTimeSeconds = self->_machContinuousTimeSeconds;
    goto LABEL_8;
  }

  v8 = 0;
LABEL_9:
  numberOfSeconds = self->_numberOfSeconds;
  if (!numberOfSeconds)
  {
    if (![a3 numberOfSeconds])
    {
      v10 = 0;
      goto LABEL_13;
    }

    numberOfSeconds = self->_numberOfSeconds;
  }

  v10 = -[NSNumber isEqual:](numberOfSeconds, "isEqual:", [a3 numberOfSeconds]) ^ 1;
LABEL_13:
  allowDelayedResponse = self->_allowDelayedResponse;
  v12 = [a3 allowDelayedResponse];
  returnSparseLocations = self->_returnSparseLocations;
  v14 = [a3 returnSparseLocations];
  result = 0;
  if (((v6 | v8) & 1) == 0 && (v10 & 1) == 0)
  {
    v16 = v14 & 1;
    return allowDelayedResponse == v12 && v16 == returnSparseLocations;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_date forKey:@"date"];
  [a3 encodeObject:self->_machContinuousTimeSeconds forKey:@"machContinuousTimeSeconds"];
  [a3 encodeObject:self->_numberOfSeconds forKey:@"numberOfSeconds"];
  [a3 encodeBool:self->_allowDelayedResponse forKey:@"allowDelayedResponse"];
  returnSparseLocations = self->_returnSparseLocations;

  [a3 encodeBool:returnSparseLocations forKey:@"returnSparseLocations"];
}

- (CLRecentLocationsFetchOptions)initWithCoder:(id)a3
{
  v5 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
  v6 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"machContinuousTimeSeconds"];
  v7 = -[CLRecentLocationsFetchOptions initWithDate:machContinuousTimeSeconds:numberOfSeconds:allowDelayedResponse:returnSparseLocations:](self, "initWithDate:machContinuousTimeSeconds:numberOfSeconds:allowDelayedResponse:returnSparseLocations:", v5, v6, [a3 decodeObjectOfClass:objc_opt_class() forKey:@"numberOfSeconds"], objc_msgSend(a3, "decodeBoolForKey:", @"allowDelayedResponse"), objc_msgSend(a3, "decodeBoolForKey:", @"returnSparseLocations"));

  return v7;
}

- (id)description
{
  if ([(CLRecentLocationsFetchOptions *)self date])
  {
    if (qword_1ED5192B8 != -1)
    {
      dispatch_once(&qword_1ED5192B8, &unk_1F0E6D6F0);
    }

    v3 = MEMORY[0x1E696AEC0];
    [(NSDate *)[(CLRecentLocationsFetchOptions *)self date] timeIntervalSinceReferenceDate];
    return [v3 stringWithFormat:@"Date: %@, allowDelayedResponse, %d", objc_msgSend(v3, "stringWithFormat:", @"%f (%@)", v4, objc_msgSend(qword_1ED5192B0, "stringFromDate:", -[CLRecentLocationsFetchOptions date](self, "date"))), self->_allowDelayedResponse, v8];
  }

  else if ([(CLRecentLocationsFetchOptions *)self machContinuousTimeSeconds])
  {
    v6 = MEMORY[0x1E696AEC0];
    [(NSNumber *)[(CLRecentLocationsFetchOptions *)self machContinuousTimeSeconds] doubleValue];
    return [v6 stringWithFormat:@"MachContinuousTimeSec: %.3f, allowDelayedResponse, %d", v7, self->_allowDelayedResponse, v8];
  }

  else if ([(CLRecentLocationsFetchOptions *)self numberOfSeconds])
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"NumberOfSeconds: %u, allowDelayedResponse, %d, returnSparseLocations, %d", -[NSNumber unsignedIntValue](-[CLRecentLocationsFetchOptions numberOfSeconds](self, "numberOfSeconds"), "unsignedIntValue"), self->_allowDelayedResponse, self->_returnSparseLocations];
  }

  else
  {
    return @"<Invalid>";
  }
}

@end