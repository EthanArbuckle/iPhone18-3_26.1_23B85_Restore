@interface MZUPPAsynchronousTask
- (MZUPPAsynchronousTask)initWithHandlerQueue:(id)queue taskTimeout:(double)timeout assertionTimeout:(double)assertionTimeout debugDescription:(id)description reportMetrics:(BOOL)metrics;
- (void)beginTaskOperation;
- (void)finishTaskOperationWithResult:(id)result error:(id)error;
@end

@implementation MZUPPAsynchronousTask

- (MZUPPAsynchronousTask)initWithHandlerQueue:(id)queue taskTimeout:(double)timeout assertionTimeout:(double)assertionTimeout debugDescription:(id)description reportMetrics:(BOOL)metrics
{
  metricsCopy = metrics;
  v11.receiver = self;
  v11.super_class = MZUPPAsynchronousTask;
  v8 = [(MZAsynchronousTask *)&v11 initWithHandlerQueue:queue taskTimeout:description assertionTimeout:timeout debugDescription:assertionTimeout];
  if (v8)
  {
    v9 = objc_alloc_init(MZUPPMetrics);
    [(MZUPPAsynchronousTask *)v8 setMetrics:v9];

    [(MZUPPAsynchronousTask *)v8 setReportMetrics:metricsCopy];
  }

  return v8;
}

- (void)beginTaskOperation
{
  v6.receiver = self;
  v6.super_class = MZUPPAsynchronousTask;
  [(MZAsynchronousTask *)&v6 beginTaskOperation];
  +[NSDate timeIntervalSinceReferenceDate];
  v4 = v3;
  metrics = [(MZUPPAsynchronousTask *)self metrics];
  [metrics setSyncTaskStartTime:v4];
}

- (void)finishTaskOperationWithResult:(id)result error:(id)error
{
  errorCopy = error;
  v23.receiver = self;
  v23.super_class = MZUPPAsynchronousTask;
  resultCopy = result;
  [(MZAsynchronousTask *)&v23 finishTaskOperationWithResult:resultCopy error:errorCopy];
  bOOLValue = [resultCopy BOOLValue];

  metrics = [(MZUPPAsynchronousTask *)self metrics];
  [metrics setSuccess:bOOLValue];

  if (errorCopy)
  {
    domain = [errorCopy domain];
    metrics2 = [(MZUPPAsynchronousTask *)self metrics];
    [metrics2 setErrorDomain:domain];

    code = [errorCopy code];
    metrics3 = [(MZUPPAsynchronousTask *)self metrics];
    [metrics3 setErrorCode:code];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v15 = v14;
  metrics4 = [(MZUPPAsynchronousTask *)self metrics];
  [metrics4 setSyncTaskEndTime:v15];

  metrics5 = [(MZUPPAsynchronousTask *)self metrics];
  metricsDictionary = [metrics5 metricsDictionary];

  v19 = _MTLogCategoryUPPSync();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    reportMetrics = [(MZUPPAsynchronousTask *)self reportMetrics];
    v21 = @"not ";
    if (reportMetrics)
    {
      v21 = &stru_1004F3018;
    }

    *buf = 138412546;
    v25 = v21;
    v26 = 2112;
    v27 = metricsDictionary;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Will %@report UPP metrics %@", buf, 0x16u);
  }

  if ([(MZUPPAsynchronousTask *)self reportMetrics])
  {
    v22 = objc_alloc_init(IMAMSMetricsEvent);
    [v22 setEventType:@"uppsync"];
    [v22 im_addPropertiesWithDictionary:metricsDictionary];
    [IMMetrics recordEvent:v22 topic:@"xp_amp_podcasts_log"];
  }
}

@end