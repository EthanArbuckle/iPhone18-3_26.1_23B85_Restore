@interface _LTSafariLatencyLoggingRequest
- (NSDictionary)dict;
- (_LTSafariLatencyLoggingRequest)init;
- (_LTSafariLatencyLoggingRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)markFirstParagraphComplete;
- (void)markPageComplete;
- (void)markProgressDone;
- (void)markResponse;
@end

@implementation _LTSafariLatencyLoggingRequest

- (void)encodeWithCoder:(id)a3
{
  start = self->_start;
  v5 = a3;
  [v5 encodeDouble:@"start" forKey:start];
  [v5 encodeDouble:@"firstResponse" forKey:self->_firstResponse];
  [v5 encodeDouble:@"firstParagraphComplete" forKey:self->_firstParagraphComplete];
  [v5 encodeDouble:@"progressComplete" forKey:self->_progressComplete];
  [v5 encodeDouble:@"pageComplete" forKey:self->_pageComplete];
  [v5 encodeObject:self->_localePair forKey:@"localePair"];
}

- (_LTSafariLatencyLoggingRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = _LTSafariLatencyLoggingRequest;
  v5 = [(_LTSafariLatencyLoggingRequest *)&v15 init];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"start"];
    v5->_start = v6;
    [v4 decodeDoubleForKey:@"firstResponse"];
    v5->_firstResponse = v7;
    [v4 decodeDoubleForKey:@"firstParagraphComplete"];
    v5->_firstParagraphComplete = v8;
    [v4 decodeDoubleForKey:@"progressComplete"];
    v5->_progressComplete = v9;
    [v4 decodeDoubleForKey:@"pageComplete"];
    v5->_pageComplete = v10;
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localePair"];
    localePair = v5->_localePair;
    v5->_localePair = v11;

    v13 = v5;
  }

  return v5;
}

- (_LTSafariLatencyLoggingRequest)init
{
  v12.receiver = self;
  v12.super_class = _LTSafariLatencyLoggingRequest;
  v2 = [(_LTSafariLatencyLoggingRequest *)&v12 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAC38] processInfo];
    [v3 systemUptime];
    *(v2 + 2) = v4;

    *(v2 + 6) = 0xBFF0000000000000;
    __asm { FMOV            V0.2D, #-1.0 }

    *(v2 + 24) = _Q0;
    v10 = v2;
  }

  return v2;
}

- (void)markResponse
{
  if (self->_firstResponse < 0.0)
  {
    v5 = [MEMORY[0x277CCAC38] processInfo];
    [v5 systemUptime];
    self->_firstResponse = v4;
  }
}

- (void)markFirstParagraphComplete
{
  if (self->_firstParagraphComplete < 0.0)
  {
    v5 = [MEMORY[0x277CCAC38] processInfo];
    [v5 systemUptime];
    self->_firstParagraphComplete = v4;
  }
}

- (void)markProgressDone
{
  if (self->_progressComplete < 0.0)
  {
    v5 = [MEMORY[0x277CCAC38] processInfo];
    [v5 systemUptime];
    self->_progressComplete = v4;
  }
}

- (void)markPageComplete
{
  if (self->_pageComplete < 0.0)
  {
    v5 = [MEMORY[0x277CCAC38] processInfo];
    [v5 systemUptime];
    self->_pageComplete = v4;
  }
}

- (NSDictionary)dict
{
  v14[6] = *MEMORY[0x277D85DE8];
  if (self->_firstResponse < 0.0)
  {
    self->_firstResponse = self->_start;
  }

  start = self->_start;
  if (self->_firstParagraphComplete < 0.0)
  {
    self->_firstParagraphComplete = start;
  }

  if (self->_progressComplete < start)
  {
    self->_progressComplete = start;
  }

  v13[0] = @"localePair";
  v4 = [(_LTLocalePair *)self->_localePair combinedLocaleIdentifier];
  processName = self->_processName;
  v14[0] = v4;
  v14[1] = processName;
  v13[1] = @"processName";
  v13[2] = @"timeToFirstResponse";
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_firstResponse - self->_start];
  v14[2] = v6;
  v13[3] = @"timeToFirstParagraphComplete";
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_firstParagraphComplete - self->_start];
  v14[3] = v7;
  v13[4] = @"timeToProgressComplete";
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_progressComplete - self->_start];
  v14[4] = v8;
  v13[5] = @"timeToPageComplete";
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_pageComplete - self->_start];
  v14[5] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:6];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end