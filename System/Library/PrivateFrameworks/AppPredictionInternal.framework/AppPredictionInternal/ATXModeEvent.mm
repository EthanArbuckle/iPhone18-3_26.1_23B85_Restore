@interface ATXModeEvent
- (ATXModeEvent)initWithCoder:(id)a3;
- (ATXModeEvent)initWithStartDate:(id)a3 endDate:(id)a4 entity:(id)a5;
- (NSString)description;
- (id)json;
- (id)jsonRawData;
- (id)serialize;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXModeEvent

- (ATXModeEvent)initWithStartDate:(id)a3 endDate:(id)a4 entity:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = ATXModeEvent;
  v12 = [(ATXModeEvent *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_startDate, a3);
    objc_storeStrong(&v13->_endDate, a4);
    objc_storeStrong(&v13->_entity, a5);
  }

  return v13;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  startDate = self->_startDate;
  endDate = self->_endDate;
  v6 = [(ATXModeEntityProtocol *)self->_entity identifier];
  v7 = [v3 initWithFormat:@"startDate: %@, endDate: %@, identifier: %@", startDate, endDate, v6];

  return v7;
}

- (id)serialize
{
  v2 = objc_opt_new();

  return v2;
}

- (void)encodeWithCoder:(id)a3
{
  startDate = self->_startDate;
  v5 = a3;
  [v5 encodeObject:startDate forKey:@"startDate"];
  [v5 encodeObject:self->_endDate forKey:@"endDate"];
}

- (ATXModeEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D42620];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_notifications();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"startDate" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.ATXModeEvent" errorCode:-1 logHandle:v7];

  if (v8 && ([v4 error], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
  {
    v11 = MEMORY[0x277D42620];
    v12 = objc_opt_class();
    v13 = __atxlog_handle_notifications();
    v14 = [v11 robustDecodeObjectOfClass:v12 forKey:@"endDate" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.ATXModeEvent" errorCode:-1 logHandle:v13];

    if (v14 && ([v4 error], v15 = objc_claimAutoreleasedReturnValue(), v15, !v15))
    {
      self = [(ATXModeEvent *)self initWithStartDate:v8 endDate:v14];
      v10 = self;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)jsonRawData
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"startDate";
  v6[1] = @"endDate";
  endDate = self->_endDate;
  v7[0] = self->_startDate;
  v7[1] = endDate;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)json
{
  v2 = MEMORY[0x277CCAAA0];
  v3 = [(ATXModeEvent *)self jsonRawData];
  v4 = [v2 dataWithJSONObject:v3 options:1 error:0];

  return v4;
}

@end