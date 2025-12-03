@interface _PushToPhoneHandlingTask
- (_PushToPhoneHandlingTask)initWithData:(id)data recordIdentifier:(id)identifier;
- (void)performTask;
@end

@implementation _PushToPhoneHandlingTask

- (void)performTask
{
  [(RichMapsActivityCreatingTaskImpl *)self taskStarted];
  [(NotificationHandlingTask *)self _clearBulletin];
  richMapsActivity = [(SyncedBookmarkRepr *)self->_bookmark richMapsActivity];
  v4 = richMapsActivity;
  if (richMapsActivity)
  {
    [(RichMapsActivityCreatingTaskImpl *)self taskFinished:richMapsActivity];
  }

  else
  {
    [(RichMapsActivityCreatingTaskImpl *)self taskFailed];
  }
}

- (_PushToPhoneHandlingTask)initWithData:(id)data recordIdentifier:(id)identifier
{
  dataCopy = data;
  identifierCopy = identifier;
  v8 = [[SyncedBookmarkRepr alloc] initWithData:dataCopy];
  if (v8)
  {
    v14.receiver = self;
    v14.super_class = _PushToPhoneHandlingTask;
    v9 = [(NotificationHandlingTask *)&v14 initWithData:dataCopy recordIdentifier:identifierCopy];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_bookmark, v8);
    }

    self = v10;
    selfCopy = self;
  }

  else
  {
    v12 = sub_100005610();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "_PushToPhoneHandlingTask SyncedBookmarkRepr nil with data", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

@end