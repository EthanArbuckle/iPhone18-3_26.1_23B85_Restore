@interface BLSHPendingEnvironmentUpdateOperation
- (BLSHPendingEnvironmentUpdateOperation)initWithEvents:(id)events withInitialSpecifier:(id)specifier;
- (BLSHPendingEnvironmentUpdateOperation)initWithTriggerEvent:(id)event withInitialSpecifier:(id)specifier;
- (NSString)description;
@end

@implementation BLSHPendingEnvironmentUpdateOperation

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendBool:-[BLSHPendingEnvironmentUpdateOperation isStarted](self withName:{"isStarted"), @"started"}];
  v5 = [v3 appendBool:-[BLSHPendingEnvironmentUpdateOperation didUpdateInitialState](self withName:{"didUpdateInitialState"), @"updatedInitialState"}];
  v6 = [v3 appendBool:-[BLSHPendingEnvironmentUpdateOperation isCompleted](self withName:{"isCompleted"), @"completed"}];
  events = self->_events;
  v8 = NSStringFromBLSBacklightChangeEvents();
  v9 = [v3 appendObject:v8 withName:@"events"];

  v10 = [v3 appendObject:self->_initialSpecifier withName:@"initial" skipIfNil:1];
  build = [v3 build];

  return build;
}

- (BLSHPendingEnvironmentUpdateOperation)initWithEvents:(id)events withInitialSpecifier:(id)specifier
{
  eventsCopy = events;
  specifierCopy = specifier;
  v12.receiver = self;
  v12.super_class = BLSHPendingEnvironmentUpdateOperation;
  v9 = [(BLSHPendingEnvironmentUpdateOperation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_events, events);
    objc_storeStrong(&v10->_initialSpecifier, specifier);
  }

  return v10;
}

- (BLSHPendingEnvironmentUpdateOperation)initWithTriggerEvent:(id)event withInitialSpecifier:(id)specifier
{
  v14 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v6 = MEMORY[0x277CBEA60];
  specifierCopy = specifier;
  eventCopy2 = event;
  v9 = [v6 arrayWithObjects:&eventCopy count:1];

  v10 = [(BLSHPendingEnvironmentUpdateOperation *)self initWithEvents:v9 withInitialSpecifier:specifierCopy, eventCopy, v14];
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

@end