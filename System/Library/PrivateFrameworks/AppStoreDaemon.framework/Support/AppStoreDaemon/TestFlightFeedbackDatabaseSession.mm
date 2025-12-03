@interface TestFlightFeedbackDatabaseSession
- (TestFlightFeedbackDatabaseSession)initWithConnection:(id)connection;
@end

@implementation TestFlightFeedbackDatabaseSession

- (TestFlightFeedbackDatabaseSession)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = TestFlightFeedbackDatabaseSession;
  v6 = [(TestFlightFeedbackDatabaseSession *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, connection);
  }

  return v7;
}

@end