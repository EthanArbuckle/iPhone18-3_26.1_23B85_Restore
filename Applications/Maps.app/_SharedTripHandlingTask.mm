@interface _SharedTripHandlingTask
- (_SharedTripHandlingTask)initWithData:(id)data recordIdentifier:(id)identifier;
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

- (_SharedTripHandlingTask)initWithData:(id)data recordIdentifier:(id)identifier
{
  dataCopy = data;
  identifierCopy = identifier;
  v8 = [[GEOSharedNavState alloc] initWithData:dataCopy];
  if (v8)
  {
    v14.receiver = self;
    v14.super_class = _SharedTripHandlingTask;
    v9 = [(NotificationHandlingTask *)&v14 initWithData:dataCopy recordIdentifier:identifierCopy];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_shareTrip, v8);
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
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "_SharedTripHandlingTask GEOSharedNavState nil with data", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

@end