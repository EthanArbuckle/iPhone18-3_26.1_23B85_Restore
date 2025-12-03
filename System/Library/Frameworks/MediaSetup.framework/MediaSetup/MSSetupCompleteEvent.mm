@interface MSSetupCompleteEvent
- (MSSetupCompleteEvent)init;
- (id)encoded;
- (void)addHome:(id)home;
@end

@implementation MSSetupCompleteEvent

- (MSSetupCompleteEvent)init
{
  v6.receiver = self;
  v6.super_class = MSSetupCompleteEvent;
  v2 = [(MSBaseSetupEvent *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(MSBaseSetupEvent *)v2 setEventName:@"com.apple.cloudmediaservices.setupcompleted"];
    v4 = objc_alloc_init(MEMORY[0x277CBEAA8]);
    [(MSSetupCompleteEvent *)v3 setStartTime:v4];

    [(MSSetupCompleteEvent *)v3 setNumberOfHomeAdded:0];
    [(MSSetupCompleteEvent *)v3 setNumberOfHomesWithVR:0];
    [(MSSetupCompleteEvent *)v3 setDidSwitchAccount:0];
  }

  return v3;
}

- (void)addHome:(id)home
{
  homeCopy = home;
  [(MSSetupCompleteEvent *)self setNumberOfHomeAdded:[(MSSetupCompleteEvent *)self numberOfHomeAdded]+ 1];
  v5 = MEMORY[0x277CCABB0];
  currentUser = [homeCopy currentUser];
  v6 = [currentUser ms_voiceRecognitionEnabledInHome:homeCopy];

  v7 = [v5 numberWithBool:v6];
  -[MSSetupCompleteEvent setNumberOfHomesWithVR:](self, "setNumberOfHomesWithVR:", -[MSSetupCompleteEvent numberOfHomesWithVR](self, "numberOfHomesWithVR") + [v7 intValue]);
}

- (id)encoded
{
  v13[5] = *MEMORY[0x277D85DE8];
  [(NSDate *)self->_endTime timeIntervalSinceDate:self->_startTime];
  *&v3 = v3;
  v12[0] = @"duration";
  v4 = [MEMORY[0x277CCABB0] numberWithFloat:v3];
  serviceID = self->_serviceID;
  v13[0] = v4;
  v13[1] = serviceID;
  v12[1] = @"service";
  v12[2] = @"numberOfHomesAdded";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numberOfHomeAdded];
  v13[2] = v6;
  v12[3] = @"numberOfHomesWithVR";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numberOfHomesWithVR];
  v13[3] = v7;
  v12[4] = @"didSwitchAccount";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_didSwitchAccount];
  v13[4] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:5];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end