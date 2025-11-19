@interface MSSetupEarlyExitEvent
- (id)encoded;
@end

@implementation MSSetupEarlyExitEvent

- (id)encoded
{
  v12[3] = *MEMORY[0x277D85DE8];
  serviceID = self->_serviceID;
  if (!serviceID)
  {
    serviceID = &stru_284C4B358;
  }

  exitReason = self->_exitReason;
  v11[0] = @"service";
  v11[1] = @"exitReason";
  v12[0] = serviceID;
  v12[1] = exitReason;
  v11[2] = @"didEncounterError";
  v4 = MEMORY[0x277CCABB0];
  didEncounterError = self->_didEncounterError;
  v6 = serviceID;
  v7 = [v4 numberWithBool:didEncounterError];
  v12[2] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

@end