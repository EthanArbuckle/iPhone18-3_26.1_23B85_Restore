@interface BLSHPendingEnvironmentUpdateOperation
- (BLSHPendingEnvironmentUpdateOperation)initWithEvents:(id)a3 withInitialSpecifier:(id)a4;
- (BLSHPendingEnvironmentUpdateOperation)initWithTriggerEvent:(id)a3 withInitialSpecifier:(id)a4;
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
  v11 = [v3 build];

  return v11;
}

- (BLSHPendingEnvironmentUpdateOperation)initWithEvents:(id)a3 withInitialSpecifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = BLSHPendingEnvironmentUpdateOperation;
  v9 = [(BLSHPendingEnvironmentUpdateOperation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_events, a3);
    objc_storeStrong(&v10->_initialSpecifier, a4);
  }

  return v10;
}

- (BLSHPendingEnvironmentUpdateOperation)initWithTriggerEvent:(id)a3 withInitialSpecifier:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v6 = MEMORY[0x277CBEA60];
  v7 = a4;
  v8 = a3;
  v9 = [v6 arrayWithObjects:&v13 count:1];

  v10 = [(BLSHPendingEnvironmentUpdateOperation *)self initWithEvents:v9 withInitialSpecifier:v7, v13, v14];
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

@end