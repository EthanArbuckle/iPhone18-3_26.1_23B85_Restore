@interface MSSetupFailedEvent
- (MSSetupFailedEvent)initWithErrorNamed:(id)a3;
- (id)encoded;
@end

@implementation MSSetupFailedEvent

- (MSSetupFailedEvent)initWithErrorNamed:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MSSetupFailedEvent;
  v5 = [(MSBaseSetupEvent *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(MSBaseSetupEvent *)v5 setEventName:@"com.apple.cloudmediaservices.setupfailed"];
    [(MSSetupFailedEvent *)v6 setErrorName:v4];
  }

  return v6;
}

- (id)encoded
{
  v10[2] = *MEMORY[0x277D85DE8];
  serviceID = self->_serviceID;
  if (!serviceID)
  {
    serviceID = &stru_284C4B358;
  }

  v9[0] = @"service";
  v9[1] = @"errorName";
  errorName = self->_errorName;
  v10[0] = serviceID;
  v10[1] = errorName;
  v4 = MEMORY[0x277CBEAC0];
  v5 = serviceID;
  v6 = [v4 dictionaryWithObjects:v10 forKeys:v9 count:2];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end