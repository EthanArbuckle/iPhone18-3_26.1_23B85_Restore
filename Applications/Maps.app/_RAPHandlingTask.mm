@interface _RAPHandlingTask
- (_RAPHandlingTask)initWithData:(id)data recordIdentifier:(id)identifier;
- (void)performTask;
@end

@implementation _RAPHandlingTask

- (void)performTask
{
  [(RichMapsActivityCreatingTaskImpl *)self taskStarted];
  [(NotificationHandlingTask *)self _clearBulletin];
  v4 = [[PresentRAPAction alloc] initWithResponse:self->_response];
  v3 = [[RichMapsActivity alloc] initWithMapsAction:v4];
  [(RichMapsActivityCreatingTaskImpl *)self taskFinished:v3];
}

- (_RAPHandlingTask)initWithData:(id)data recordIdentifier:(id)identifier
{
  dataCopy = data;
  identifierCopy = identifier;
  v8 = [[GEORPProblemStatusResponse alloc] initWithData:dataCopy];
  if (v8)
  {
    v14.receiver = self;
    v14.super_class = _RAPHandlingTask;
    v9 = [(NotificationHandlingTask *)&v14 initWithData:dataCopy recordIdentifier:identifierCopy];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_response, v8);
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
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "_AnnounceHandlingTask GEORPProblemStatusResponse nil with data", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

@end