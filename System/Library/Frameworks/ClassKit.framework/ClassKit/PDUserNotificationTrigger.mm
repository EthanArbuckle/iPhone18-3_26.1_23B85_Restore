@interface PDUserNotificationTrigger
- (BOOL)isIncompleteHandout:(id)handout;
- (PDUserNotificationTrigger)initWithDatabase:(id)database;
- (PDUserNotificationTriggerDelegate)delegate;
- (id)classIDFromHandout:(id)handout;
- (void)fireTriggerWithNotificationData:(id)data;
@end

@implementation PDUserNotificationTrigger

- (PDUserNotificationTrigger)initWithDatabase:(id)database
{
  databaseCopy = database;
  v9.receiver = self;
  v9.super_class = PDUserNotificationTrigger;
  v6 = [(PDUserNotificationTrigger *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_database, database);
  }

  return v7;
}

- (void)fireTriggerWithNotificationData:(id)data
{
  dataCopy = data;
  delegate = [(PDUserNotificationTrigger *)self delegate];
  if (dataCopy && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate triggerDidFire:self notificationData:dataCopy];
  }
}

- (BOOL)isIncompleteHandout:(id)handout
{
  handoutCopy = handout;
  database = [(PDUserNotificationTrigger *)self database];
  v6 = objc_opt_class();
  objectID = [handoutCopy objectID];
  v16 = objectID;
  v8 = [NSArray arrayWithObjects:&v16 count:1];
  v9 = [database select:v6 where:@"parentObjectID = ?" bindings:v8];

  if (v9)
  {
    LODWORD(v10) = [v9 isCompletedHandout] ^ 1;
  }

  else
  {
    CLSInitLog();
    v11 = CLSLogDefault;
    LOBYTE(v10) = 0;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v11;
      objectID2 = [handoutCopy objectID];
      v14 = 138543362;
      v15 = objectID2;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "PDUserNotificationTrigger: collaboration state for handout with id: %{public}@ not available.", &v14, 0xCu);

      LOBYTE(v10) = 0;
    }
  }

  return v10;
}

- (id)classIDFromHandout:(id)handout
{
  handoutCopy = handout;
  objectID = [handoutCopy objectID];

  if (objectID)
  {
    database = [(PDUserNotificationTrigger *)self database];
    v7 = objc_opt_class();
    objectID2 = [handoutCopy objectID];
    v13 = objectID2;
    v9 = [NSArray arrayWithObjects:&v13 count:1];
    v10 = [database select:v7 where:@"parentObjectID = ?" bindings:v9];

    classID = [v10 classID];
  }

  else
  {
    classID = 0;
  }

  return classID;
}

- (PDUserNotificationTriggerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end