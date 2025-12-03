@interface AudioSystemController
- (void)performAnalysisOnAVResult:(id)result fromOutput:(id)output withSourceSignalData:(id)data intoDKResult:(id)kResult error:(id)error;
- (void)setupWithInputs:(id)inputs responder:(id)responder;
- (void)testFinishedSuccessfully;
- (void)testSequence:(id)sequence completionSemaphore:(id)semaphore;
@end

@implementation AudioSystemController

- (void)setupWithInputs:(id)inputs responder:(id)responder
{
  v5.receiver = self;
  v5.super_class = AudioSystemController;
  [(AudioSystemCommon *)&v5 setupWithInputs:inputs responder:responder];
  [(AudioSystemController *)self setExclavesStatus:0];
}

- (void)testSequence:(id)sequence completionSemaphore:(id)semaphore
{
  v7.receiver = self;
  v7.super_class = AudioSystemController;
  [(AudioSystemCommon *)&v7 testSequence:sequence completionSemaphore:semaphore];
  v5 = dispatch_time(0, 500000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008E60;
  block[3] = &unk_1000145E8;
  block[4] = self;
  dispatch_after(v5, &_dispatch_main_q, block);
}

- (void)performAnalysisOnAVResult:(id)result fromOutput:(id)output withSourceSignalData:(id)data intoDKResult:(id)kResult error:(id)error
{
  resultCopy = result;
  dataCopy = data;
  kResultCopy = kResult;
  errorCopy = error;
  v15 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = resultCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Calculating peak dB values for result %@", buf, 0xCu);
  }

  inputs = [(AudioSystemCommon *)self inputs];
  isUsingDBValuesFromSystem = [inputs isUsingDBValuesFromSystem];

  if (!isUsingDBValuesFromSystem)
  {
    data = [resultCopy data];
    v23 = errorCopy;
    v18 = [AudioCrossCorrelation calculatePeakDBValueWithSourceSignalData:dataCopy resultSignalData:data error:&v23];
    v20 = v23;

    errorCopy = v20;
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

  [resultCopy correlationValue];
  v18 = [NSNumber numberWithDouble:?];
  if (!v18)
  {
    goto LABEL_7;
  }

LABEL_5:
  [kResultCopy setDbValue:v18];
LABEL_8:
}

- (void)testFinishedSuccessfully
{
  exclavesStatus = [(AudioSystemController *)self exclavesStatus];
  result = [(AudioSystemController *)self result];
  statusCode = [result statusCode];
  v6 = [DAExclavesSupport testResultOverrideForExclavesStatus:exclavesStatus originalResult:statusCode];
  result2 = [(AudioSystemController *)self result];
  [result2 setStatusCode:v6];

  exclavesStatus2 = [(AudioSystemController *)self exclavesStatus];

  if (exclavesStatus2)
  {
    v9 = objc_alloc_init(NSMutableDictionary);
    result3 = [(AudioSystemController *)self result];
    data = [result3 data];
    [v9 addEntriesFromDictionary:data];

    exclavesStatus3 = [(AudioSystemController *)self exclavesStatus];
    [v9 addEntriesFromDictionary:exclavesStatus3];

    v13 = [v9 copy];
    result4 = [(AudioSystemController *)self result];
    [result4 setData:v13];
  }

  [(AudioSystemController *)self setFinished:1];
}

@end