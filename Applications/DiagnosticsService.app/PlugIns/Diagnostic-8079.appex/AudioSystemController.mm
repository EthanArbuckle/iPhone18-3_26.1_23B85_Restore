@interface AudioSystemController
- (void)performAnalysisOnAVResult:(id)a3 fromOutput:(id)a4 withSourceSignalData:(id)a5 intoDKResult:(id)a6 error:(id)a7;
- (void)setupWithInputs:(id)a3 responder:(id)a4;
- (void)testFinishedSuccessfully;
- (void)testSequence:(id)a3 completionSemaphore:(id)a4;
@end

@implementation AudioSystemController

- (void)setupWithInputs:(id)a3 responder:(id)a4
{
  v5.receiver = self;
  v5.super_class = AudioSystemController;
  [(AudioSystemCommon *)&v5 setupWithInputs:a3 responder:a4];
  [(AudioSystemController *)self setExclavesStatus:0];
}

- (void)testSequence:(id)a3 completionSemaphore:(id)a4
{
  v7.receiver = self;
  v7.super_class = AudioSystemController;
  [(AudioSystemCommon *)&v7 testSequence:a3 completionSemaphore:a4];
  v5 = dispatch_time(0, 500000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008E60;
  block[3] = &unk_1000145E8;
  block[4] = self;
  dispatch_after(v5, &_dispatch_main_q, block);
}

- (void)performAnalysisOnAVResult:(id)a3 fromOutput:(id)a4 withSourceSignalData:(id)a5 intoDKResult:(id)a6 error:(id)a7
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v11;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Calculating peak dB values for result %@", buf, 0xCu);
  }

  v16 = [(AudioSystemCommon *)self inputs];
  v17 = [v16 isUsingDBValuesFromSystem];

  if (!v17)
  {
    v19 = [v11 data];
    v23 = v14;
    v18 = [AudioCrossCorrelation calculatePeakDBValueWithSourceSignalData:v12 resultSignalData:v19 error:&v23];
    v20 = v23;

    v14 = v20;
    if (v18)
    {
      goto LABEL_5;
    }

LABEL_7:
    v24 = NSLocalizedDescriptionKey;
    v25 = @"Failed to generate DB Value.";
    v21 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v22 = [NSError errorWithDomain:@"DAAudioQualityErrorDomain" code:-65 userInfo:v21];

    [(AudioSystemCommon *)self failedToExecuteWithError:v22];
    goto LABEL_8;
  }

  [v11 correlationValue];
  v18 = [NSNumber numberWithDouble:?];
  if (!v18)
  {
    goto LABEL_7;
  }

LABEL_5:
  [v13 setDbValue:v18];
LABEL_8:
}

- (void)testFinishedSuccessfully
{
  v3 = [(AudioSystemController *)self exclavesStatus];
  v4 = [(AudioSystemController *)self result];
  v5 = [v4 statusCode];
  v6 = [DAExclavesSupport testResultOverrideForExclavesStatus:v3 originalResult:v5];
  v7 = [(AudioSystemController *)self result];
  [v7 setStatusCode:v6];

  v8 = [(AudioSystemController *)self exclavesStatus];

  if (v8)
  {
    v9 = objc_alloc_init(NSMutableDictionary);
    v10 = [(AudioSystemController *)self result];
    v11 = [v10 data];
    [v9 addEntriesFromDictionary:v11];

    v12 = [(AudioSystemController *)self exclavesStatus];
    [v9 addEntriesFromDictionary:v12];

    v13 = [v9 copy];
    v14 = [(AudioSystemController *)self result];
    [v14 setData:v13];
  }

  [(AudioSystemController *)self setFinished:1];
}

@end