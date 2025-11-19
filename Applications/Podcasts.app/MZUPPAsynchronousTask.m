@interface MZUPPAsynchronousTask
- (MZUPPAsynchronousTask)initWithHandlerQueue:(id)a3 taskTimeout:(double)a4 assertionTimeout:(double)a5 debugDescription:(id)a6 reportMetrics:(BOOL)a7;
- (void)beginTaskOperation;
- (void)finishTaskOperationWithResult:(id)a3 error:(id)a4;
@end

@implementation MZUPPAsynchronousTask

- (MZUPPAsynchronousTask)initWithHandlerQueue:(id)a3 taskTimeout:(double)a4 assertionTimeout:(double)a5 debugDescription:(id)a6 reportMetrics:(BOOL)a7
{
  v7 = a7;
  v11.receiver = self;
  v11.super_class = MZUPPAsynchronousTask;
  v8 = [(MZAsynchronousTask *)&v11 initWithHandlerQueue:a3 taskTimeout:a6 assertionTimeout:a4 debugDescription:a5];
  if (v8)
  {
    v9 = objc_alloc_init(MZUPPMetrics);
    [(MZUPPAsynchronousTask *)v8 setMetrics:v9];

    [(MZUPPAsynchronousTask *)v8 setReportMetrics:v7];
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
  v5 = [(MZUPPAsynchronousTask *)self metrics];
  [v5 setSyncTaskStartTime:v4];
}

- (void)finishTaskOperationWithResult:(id)a3 error:(id)a4
{
  v6 = a4;
  v23.receiver = self;
  v23.super_class = MZUPPAsynchronousTask;
  v7 = a3;
  [(MZAsynchronousTask *)&v23 finishTaskOperationWithResult:v7 error:v6];
  v8 = [v7 BOOLValue];

  v9 = [(MZUPPAsynchronousTask *)self metrics];
  [v9 setSuccess:v8];

  if (v6)
  {
    v10 = [v6 domain];
    v11 = [(MZUPPAsynchronousTask *)self metrics];
    [v11 setErrorDomain:v10];

    v12 = [v6 code];
    v13 = [(MZUPPAsynchronousTask *)self metrics];
    [v13 setErrorCode:v12];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v15 = v14;
  v16 = [(MZUPPAsynchronousTask *)self metrics];
  [v16 setSyncTaskEndTime:v15];

  v17 = [(MZUPPAsynchronousTask *)self metrics];
  v18 = [v17 metricsDictionary];

  v19 = _MTLogCategoryUPPSync();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [(MZUPPAsynchronousTask *)self reportMetrics];
    v21 = @"not ";
    if (v20)
    {
      v21 = &stru_1004F3018;
    }

    *buf = 138412546;
    v25 = v21;
    v26 = 2112;
    v27 = v18;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Will %@report UPP metrics %@", buf, 0x16u);
  }

  if ([(MZUPPAsynchronousTask *)self reportMetrics])
  {
    v22 = objc_alloc_init(IMAMSMetricsEvent);
    [v22 setEventType:@"uppsync"];
    [v22 im_addPropertiesWithDictionary:v18];
    [IMMetrics recordEvent:v22 topic:@"xp_amp_podcasts_log"];
  }
}

@end