@interface _SharedTripHandlingTask
- (_SharedTripHandlingTask)initWithData:(id)a3 recordIdentifier:(id)a4;
- (void)performTask;
@end

@implementation _SharedTripHandlingTask

- (void)performTask
{
  [(RichMapsActivityCreatingTaskImpl *)self taskStarted];
  v4 = [[SharedTripAction alloc] initWithSharedTrip:self->_shareTrip];
  v3 = [[RichMapsActivity alloc] initWithMapsAction:v4];
  if (v3)
  {
    [(RichMapsActivityCreatingTaskImpl *)self taskFinished:v3];
  }

  else
  {
    [(RichMapsActivityCreatingTaskImpl *)self taskFailed];
  }
}

- (_SharedTripHandlingTask)initWithData:(id)a3 recordIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[GEOSharedNavState alloc] initWithData:v6];
  if (v8)
  {
    v14.receiver = self;
    v14.super_class = _SharedTripHandlingTask;
    v9 = [(NotificationHandlingTask *)&v14 initWithData:v6 recordIdentifier:v7];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_shareTrip, v8);
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
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "_SharedTripHandlingTask GEOSharedNavState nil with data", buf, 2u);
    }

    v11 = 0;
  }

  return v11;
}

@end