@interface ATXNotificationEntityFeatures
- (ATXNotificationEntityFeatures)init;
- (id)initFromJSON:(id)a3;
- (id)jsonRepresentation;
@end

@implementation ATXNotificationEntityFeatures

- (ATXNotificationEntityFeatures)init
{
  v6.receiver = self;
  v6.super_class = ATXNotificationEntityFeatures;
  v2 = [(ATXNotificationEntityFeatures *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    secondsToEngagement = v2->_secondsToEngagement;
    v2->_secondsToEngagement = v3;
  }

  return v2;
}

- (id)initFromJSON:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ATXNotificationEntityFeatures;
  v5 = [(ATXNotificationEntityFeatures *)&v9 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"secondsToEngagement"];
    secondsToEngagement = v5->_secondsToEngagement;
    v5->_secondsToEngagement = v6;
  }

  return v5;
}

- (id)jsonRepresentation
{
  v7[1] = *MEMORY[0x277D85DE8];
  secondsToEngagement = self->_secondsToEngagement;
  v6 = @"secondsToEngagement";
  v7[0] = secondsToEngagement;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

@end