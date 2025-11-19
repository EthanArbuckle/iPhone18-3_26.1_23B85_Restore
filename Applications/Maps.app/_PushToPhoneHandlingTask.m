@interface _PushToPhoneHandlingTask
- (_PushToPhoneHandlingTask)initWithData:(id)a3 recordIdentifier:(id)a4;
- (void)performTask;
@end

@implementation _PushToPhoneHandlingTask

- (void)performTask
{
  [(RichMapsActivityCreatingTaskImpl *)self taskStarted];
  [(NotificationHandlingTask *)self _clearBulletin];
  v3 = [(SyncedBookmarkRepr *)self->_bookmark richMapsActivity];
  v4 = v3;
  if (v3)
  {
    [(RichMapsActivityCreatingTaskImpl *)self taskFinished:v3];
  }

  else
  {
    [(RichMapsActivityCreatingTaskImpl *)self taskFailed];
  }
}

- (_PushToPhoneHandlingTask)initWithData:(id)a3 recordIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[SyncedBookmarkRepr alloc] initWithData:v6];
  if (v8)
  {
    v14.receiver = self;
    v14.super_class = _PushToPhoneHandlingTask;
    v9 = [(NotificationHandlingTask *)&v14 initWithData:v6 recordIdentifier:v7];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_bookmark, v8);
    }

    self = v10;
    v11 = self;
  }

  else
  {
    v12 = sub_100005610();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "_PushToPhoneHandlingTask SyncedBookmarkRepr nil with data", buf, 2u);
    }

    v11 = 0;
  }

  return v11;
}

@end