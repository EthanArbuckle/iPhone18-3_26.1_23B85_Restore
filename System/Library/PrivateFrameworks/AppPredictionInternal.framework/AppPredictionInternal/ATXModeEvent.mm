@interface ATXModeEvent
- (ATXModeEvent)initWithCoder:(id)coder;
- (ATXModeEvent)initWithStartDate:(id)date endDate:(id)endDate entity:(id)entity;
- (NSString)description;
- (id)json;
- (id)jsonRawData;
- (id)serialize;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXModeEvent

- (ATXModeEvent)initWithStartDate:(id)date endDate:(id)endDate entity:(id)entity
{
  dateCopy = date;
  endDateCopy = endDate;
  entityCopy = entity;
  v15.receiver = self;
  v15.super_class = ATXModeEvent;
  v12 = [(ATXModeEvent *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_startDate, date);
    objc_storeStrong(&v13->_endDate, endDate);
    objc_storeStrong(&v13->_entity, entity);
  }

  return v13;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  startDate = self->_startDate;
  endDate = self->_endDate;
  identifier = [(ATXModeEntityProtocol *)self->_entity identifier];
  v7 = [v3 initWithFormat:@"startDate: %@, endDate: %@, identifier: %@", startDate, endDate, identifier];

  return v7;
}

- (id)serialize
{
  v2 = objc_opt_new();

  return v2;
}

- (void)encodeWithCoder:(id)coder
{
  startDate = self->_startDate;
  coderCopy = coder;
  [coderCopy encodeObject:startDate forKey:@"startDate"];
  [coderCopy encodeObject:self->_endDate forKey:@"endDate"];
}

- (ATXModeEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x277D42620];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_notifications();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"startDate" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXModeEvent" errorCode:-1 logHandle:v7];

  if (v8 && ([coderCopy error], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
  {
    v11 = MEMORY[0x277D42620];
    v12 = objc_opt_class();
    v13 = __atxlog_handle_notifications();
    v14 = [v11 robustDecodeObjectOfClass:v12 forKey:@"endDate" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXModeEvent" errorCode:-1 logHandle:v13];

    if (v14 && ([coderCopy error], v15 = objc_claimAutoreleasedReturnValue(), v15, !v15))
    {
      self = [(ATXModeEvent *)self initWithStartDate:v8 endDate:v14];
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
  jsonRawData = [(ATXModeEvent *)self jsonRawData];
  v4 = [v2 dataWithJSONObject:jsonRawData options:1 error:0];

  return v4;
}

@end