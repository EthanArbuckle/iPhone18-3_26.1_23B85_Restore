@interface AirPodsAudioSystemController
- (id)createNewTestSequenceWithOutput:(id)output andStimulusFile:(id)file;
- (id)cropAudioData:(id)data lengthFromFront:(unsigned int)front lengthFromEnd:(unsigned int)end;
- (id)errorForTestStatus:(int)status;
- (id)pathToSoundFile:(id)file;
- (void)cancel;
- (void)dealloc;
- (void)downloadFilesWithResponder:(id)responder;
- (void)freeFilter;
- (void)handleChamberStatus:(int)status;
- (void)initFilter;
- (void)overrideOriginalHeadphoneExposureNotification;
- (void)performAnalysisOnAVResult:(id)result fromOutput:(id)output withSourceSignalData:(id)data intoDKResult:(id)kResult error:(id)error;
- (void)processCrackleData:(float *)data audioRawDataSize:(int)size saveResult:(id *)result;
- (void)processFrequencyAndRearVentOcculusionWithPlayResult:(id)result sourceSignalData:(id)data dkResult:(id)dkResult;
- (void)restoreOriginalHeadphoneExposureNotification;
- (void)setupWithInputs:(id)inputs responder:(id)responder;
- (void)start;
- (void)stopAlerts;
- (void)teardown;
@end

@implementation AirPodsAudioSystemController

- (void)setupWithInputs:(id)inputs responder:(id)responder
{
  responderCopy = responder;
  [(AirPodsAudioSystemController *)self setAirpodsInputs:inputs];
  airpodsInputs = [(AirPodsAudioSystemController *)self airpodsInputs];
  unpairAirPodsOnFinish = [airpodsInputs unpairAirPodsOnFinish];
  if (responderCopy && unpairAirPodsOnFinish)
  {
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Requesting unpair of current AirPods device on test completion", buf, 2u);
      }

      [responderCopy unpairSessionAccessoryOnTestCompletion];
    }
  }

  else
  {
  }

  v11 = objc_alloc_init(ADASManager);
  [(AirPodsAudioSystemController *)self setAudioDataAnalysisSettingsManager:v11];

  [(AirPodsAudioSystemController *)self overrideOriginalHeadphoneExposureNotification];
  [(AirPodsAudioSystemController *)self initFilter];
  v12 = [DAChamberDetector alloc];
  airpodsInputs2 = [(AirPodsAudioSystemController *)self airpodsInputs];
  chamberInputs = [airpodsInputs2 chamberInputs];
  v15 = [(DAChamberDetector *)v12 initWithInputs:chamberInputs];
  [(AirPodsAudioSystemController *)self setChamberDetector:v15];

  chamberDetector = [(AirPodsAudioSystemController *)self chamberDetector];
  [chamberDetector setDelegate:self];

  v17 = dispatch_queue_create("AirPodsAudioSystemControllerEventQueue", &_dispatch_queue_attr_concurrent);
  [(AirPodsAudioSystemController *)self setEventQueue:v17];

  airpodsInputs3 = [(AirPodsAudioSystemController *)self airpodsInputs];
  v19.receiver = self;
  v19.super_class = AirPodsAudioSystemController;
  [(AudioSystemCommon *)&v19 setupWithInputs:airpodsInputs3 responder:responderCopy];
}

- (void)start
{
  v3 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting test....", buf, 2u);
  }

  v4 = dispatch_semaphore_create(0);
  [(AirPodsAudioSystemController *)self setChamberReadinessSemaphore:v4];

  v5 = dispatch_semaphore_create(0);
  [(AirPodsAudioSystemController *)self setTestCompletionSemaphore:v5];

  chamberDetector = [(AirPodsAudioSystemController *)self chamberDetector];
  [chamberDetector start];

  chamberReadinessSemaphore = [(AirPodsAudioSystemController *)self chamberReadinessSemaphore];
  airpodsInputs = [(AirPodsAudioSystemController *)self airpodsInputs];
  chamberInputs = [airpodsInputs chamberInputs];
  v10 = dispatch_time(0, 1000000000 * [chamberInputs detectChamberReadyWaitTime]);
  v11 = dispatch_semaphore_wait(chamberReadinessSemaphore, v10);

  if (v11)
  {
    v12 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Audio test has timed out while waiting for chamber readiness.", buf, 2u);
    }

    [(AirPodsAudioSystemController *)self endTesting:4294966294 immediately:1];
  }

  else
  {
    [(AirPodsAudioSystemController *)self setIsRunning:1];
    v15.receiver = self;
    v15.super_class = AirPodsAudioSystemController;
    [(AudioSystemCommon *)&v15 start];
    eventQueue = [(AirPodsAudioSystemController *)self eventQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100005C90;
    block[3] = &unk_10001C5A0;
    block[4] = self;
    dispatch_async(eventQueue, block);
  }
}

- (void)cancel
{
  [(AirPodsAudioSystemController *)self setChamberReadinessSemaphore:0];
  [(AirPodsAudioSystemController *)self setTestCompletionSemaphore:0];
  chamberDetector = [(AirPodsAudioSystemController *)self chamberDetector];
  [chamberDetector stop];

  [(AirPodsAudioSystemController *)self setIsRunning:0];
  [(AirPodsAudioSystemController *)self stopAlerts];
  v4.receiver = self;
  v4.super_class = AirPodsAudioSystemController;
  [(AudioSystemCommon *)&v4 cancel];
}

- (void)teardown
{
  [(AirPodsAudioSystemController *)self setChamberReadinessSemaphore:0];
  [(AirPodsAudioSystemController *)self setTestCompletionSemaphore:0];
  chamberDetector = [(AirPodsAudioSystemController *)self chamberDetector];
  [chamberDetector stop];

  [(AirPodsAudioSystemController *)self setIsRunning:0];
  [(AirPodsAudioSystemController *)self restoreOriginalHeadphoneExposureNotification];
  [(AirPodsAudioSystemController *)self stopAlerts];
  v4.receiver = self;
  v4.super_class = AirPodsAudioSystemController;
  [(AudioSystemCommon *)&v4 teardown];
  AAT_cleanUp();
  [(AirPodsAudioSystemController *)self freeFilter];
}

- (id)errorForTestStatus:(int)status
{
  if (status > -1003)
  {
    if (status == -1002)
    {
      statusCopy = -1002;
      v4 = @"Audio test timed out while waiting for chamber readiness";
      goto LABEL_11;
    }

    if (!status)
    {
      v5 = 0;
      goto LABEL_12;
    }

LABEL_8:
    statusCopy = status;
    v4 = @"Unknown test status error";
    goto LABEL_11;
  }

  if (status == -1004)
  {
    statusCopy = -1004;
    v4 = @"Audio test timed out while waiting for completion";
    goto LABEL_11;
  }

  if (status != -1003)
  {
    goto LABEL_8;
  }

  statusCopy = -1003;
  v4 = @"Chamber was opened prematurely during the test";
LABEL_11:
  v8 = NSLocalizedDescriptionKey;
  v9 = v4;
  v6 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v5 = [NSError errorWithDomain:@"DAAudioQualityErrorDomain" code:statusCopy userInfo:v6];

LABEL_12:

  return v5;
}

- (void)stopAlerts
{
  airpodsInputs = [(AirPodsAudioSystemController *)self airpodsInputs];
  chamberInputs = [airpodsInputs chamberInputs];
  testCompleteVibrationAlertEnabled = [chamberInputs testCompleteVibrationAlertEnabled];

  if (testCompleteVibrationAlertEnabled)
  {
    AudioServicesStopSystemSound();
  }

  airpodsInputs2 = [(AirPodsAudioSystemController *)self airpodsInputs];
  chamberInputs2 = [airpodsInputs2 chamberInputs];
  testCompleteChimeAlertEnabled = [chamberInputs2 testCompleteChimeAlertEnabled];

  if (testCompleteChimeAlertEnabled)
  {

    AudioServicesStopSystemSound();
  }
}

- (void)dealloc
{
  [(AirPodsAudioSystemController *)self stopAlerts];
  v3.receiver = self;
  v3.super_class = AirPodsAudioSystemController;
  [(AirPodsAudioSystemController *)&v3 dealloc];
}

- (void)handleChamberStatus:(int)status
{
  v5 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = status;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received chamber status: %u", v9, 8u);
  }

  if (status == 3)
  {
    if (![(AirPodsAudioSystemController *)self isRunning])
    {
      testEndedSemaphore = [(AirPodsAudioSystemController *)self testEndedSemaphore];

      if (testEndedSemaphore)
      {
        testEndedSemaphore2 = [(AirPodsAudioSystemController *)self testEndedSemaphore];
        goto LABEL_10;
      }
    }

    [(AirPodsAudioSystemController *)self endTesting:4294966293 immediately:1];
  }

  else if (status == 1 && ![(AirPodsAudioSystemController *)self isRunning])
  {
    testEndedSemaphore2 = [(AirPodsAudioSystemController *)self chamberReadinessSemaphore];
LABEL_10:
    v8 = testEndedSemaphore2;
    dispatch_semaphore_signal(testEndedSemaphore2);
  }
}

- (void)downloadFilesWithResponder:(id)responder
{
  responderCopy = responder;
  airpodsInputs = [(AirPodsAudioSystemController *)self airpodsInputs];
  useBundledAudioStimulus = [airpodsInputs useBundledAudioStimulus];

  if (useBundledAudioStimulus)
  {
    v7 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Skiping file download - useBundledAudioStimulus is enabled", v8, 2u);
    }
  }

  else
  {
    v9.receiver = self;
    v9.super_class = AirPodsAudioSystemController;
    [(AudioSystemCommon *)&v9 downloadFilesWithResponder:responderCopy];
  }
}

- (id)pathToSoundFile:(id)file
{
  fileCopy = file;
  airpodsInputs = [(AirPodsAudioSystemController *)self airpodsInputs];
  useBundledAudioStimulus = [airpodsInputs useBundledAudioStimulus];

  v7 = DiagnosticLogHandleForCategory();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (useBundledAudioStimulus)
  {
    if (v8)
    {
      *buf = 138412290;
      v16 = fileCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Using bundled stimulus for audio file %@", buf, 0xCu);
    }

    v9 = [fileCopy componentsSeparatedByString:@"."];
    firstObject = [v9 firstObject];

    v11 = [NSBundle bundleForClass:objc_opt_class()];
    v12 = [v11 URLForResource:firstObject withExtension:@".wav"];
  }

  else
  {
    if (v8)
    {
      *buf = 138412290;
      v16 = fileCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Using downloaded stimulus for audio file %@", buf, 0xCu);
    }

    v14.receiver = self;
    v14.super_class = AirPodsAudioSystemController;
    v12 = [(AudioSystemCommon *)&v14 pathToSoundFile:fileCopy];
  }

  return v12;
}

- (void)performAnalysisOnAVResult:(id)result fromOutput:(id)output withSourceSignalData:(id)data intoDKResult:(id)kResult error:(id)error
{
  resultCopy = result;
  outputCopy = output;
  dataCopy = data;
  kResultCopy = kResult;
  errorCopy = error;
  v17 = outputCopy;
  v18 = kResultCopy;
  [v18 setAudioTestType:{objc_msgSend(v17, "audioTestType")}];
  audioTestType = [v17 audioTestType];
  if (audioTestType == 1)
  {
    [(AirPodsAudioSystemController *)self processFrequencyAndRearVentOcculusionWithPlayResult:resultCopy sourceSignalData:dataCopy dkResult:v18];
LABEL_8:
    v23 = v18;
    goto LABEL_9;
  }

  if (audioTestType)
  {
    v24 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      audioTestType2 = [v17 audioTestType];
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Unrecognized AirPods audio test type %ld", buf, 0xCu);
    }

    v28 = NSLocalizedDescriptionKey;
    v29 = @"Unrecognized AirPods audio test type";
    v25 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v26 = [NSError errorWithDomain:@"DAAudioQualityErrorDomain" code:-912 userInfo:v25];

    [(AudioSystemCommon *)self failedToExecuteWithError:v26];
    errorCopy = v26;
    goto LABEL_8;
  }

  data = [resultCopy data];
  bytes = [data bytes];
  data2 = [resultCopy data];
  v27 = v18;
  -[AirPodsAudioSystemController processCrackleData:audioRawDataSize:saveResult:](self, "processCrackleData:audioRawDataSize:saveResult:", bytes, [data2 length] >> 2, &v27);
  v23 = v27;

LABEL_9:
}

- (id)createNewTestSequenceWithOutput:(id)output andStimulusFile:(id)file
{
  v12.receiver = self;
  v12.super_class = AirPodsAudioSystemController;
  outputCopy = output;
  v7 = [(AudioSystemCommon *)&v12 createNewTestSequenceWithOutput:outputCopy andStimulusFile:file];
  numberOfChannels = [outputCopy numberOfChannels];

  [v7 setNumberOfChannels:numberOfChannels];
  airpodsInputs = [(AirPodsAudioSystemController *)self airpodsInputs];
  micBufferNumbers = [airpodsInputs micBufferNumbers];
  [v7 setMicBufferNumbers:micBufferNumbers];

  [v7 setRequiresBluetoothOutput:1];

  return v7;
}

- (void)processCrackleData:(float *)data audioRawDataSize:(int)size saveResult:(id *)result
{
  v7 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Dumping input data", buf, 2u);
  }

  for (i = 0; i != 5; ++i)
  {
    v9 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = data[i];
      *buf = 134217984;
      v30 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%.21g", buf, 0xCu);
    }
  }

  v11 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "End dumping input data", buf, 2u);
  }

  *buf = 0;
  v28 = 0;
  airpodsInputs = [(AirPodsAudioSystemController *)self airpodsInputs];
  crackleSamplingRate = [airpodsInputs crackleSamplingRate];
  intValue = [crackleSamplingRate intValue];
  airpodsInputs2 = [(AirPodsAudioSystemController *)self airpodsInputs];
  crackleBaseFrequency = [airpodsInputs2 crackleBaseFrequency];
  intValue2 = [crackleBaseFrequency intValue];
  airpodsInputs3 = [(AirPodsAudioSystemController *)self airpodsInputs];
  crackleNeighborDistance = [airpodsInputs3 crackleNeighborDistance];
  AAT_processCrackledData(data, size, intValue, intValue2, [crackleNeighborDistance intValue], &self->_filterSetup, -[AirPodsAudioSystemController filterDelay](self, "filterDelay"), buf, &v28 + 1, &v28);

  LODWORD(v18) = *buf;
  v19 = [NSNumber numberWithFloat:v18];
  [*result setXCorrPeak:v19];

  LODWORD(v20) = HIDWORD(v28);
  v21 = [NSNumber numberWithFloat:v20];
  [*result setXCorrPNR:v21];

  LODWORD(v22) = v28;
  v23 = [NSNumber numberWithFloat:v22];
  [*result setXCorrCenter:v23];
}

- (void)processFrequencyAndRearVentOcculusionWithPlayResult:(id)result sourceSignalData:(id)data dkResult:(id)dkResult
{
  resultCopy = result;
  dataCopy = data;
  dkResultCopy = dkResult;
  v8 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Performing rear-vent occlusion/frequency analysis", buf, 2u);
  }

  v9 = objc_alloc_init(NSMutableArray);
  airpodsInputs = [(AirPodsAudioSystemController *)self airpodsInputs];
  frequencyBins = [airpodsInputs frequencyBins];
  v12 = malloc_type_calloc([frequencyBins count], 4uLL, 0x100004052888210uLL);

  airpodsInputs2 = [(AirPodsAudioSystemController *)self airpodsInputs];
  frequencyBins2 = [airpodsInputs2 frequencyBins];
  v15 = [frequencyBins2 count];

  if (v15)
  {
    v16 = 0;
    do
    {
      airpodsInputs3 = [(AirPodsAudioSystemController *)self airpodsInputs];
      frequencyBins3 = [airpodsInputs3 frequencyBins];
      v19 = [frequencyBins3 objectAtIndexedSubscript:v16];
      [v19 floatValue];
      v12[v16] = v20;

      ++v16;
      airpodsInputs4 = [(AirPodsAudioSystemController *)self airpodsInputs];
      frequencyBins4 = [airpodsInputs4 frequencyBins];
      v23 = [frequencyBins4 count];
    }

    while (v23 > v16);
  }

  airpodsInputs5 = [(AirPodsAudioSystemController *)self airpodsInputs];
  frequencyBins5 = [airpodsInputs5 frequencyBins];
  v26 = malloc_type_calloc([frequencyBins5 count] >> 1, 4uLL, 0x100004052888210uLL);

  *buf = v26;
  airpodsInputs6 = [(AirPodsAudioSystemController *)self airpodsInputs];
  stimulusFrontCroppingLength = [airpodsInputs6 stimulusFrontCroppingLength];
  unsignedIntValue = [stimulusFrontCroppingLength unsignedIntValue];
  airpodsInputs7 = [(AirPodsAudioSystemController *)self airpodsInputs];
  stimulusCroppingLength = [airpodsInputs7 stimulusCroppingLength];
  v32 = -[AirPodsAudioSystemController cropAudioData:lengthFromFront:lengthFromEnd:](self, "cropAudioData:lengthFromFront:lengthFromEnd:", dataCopy, unsignedIntValue, [stimulusCroppingLength unsignedIntValue]);

  bytes = [v32 bytes];
  v57 = v32;
  v55 = ([v32 length] >> 2);
  data = [resultCopy data];
  airpodsInputs8 = [(AirPodsAudioSystemController *)self airpodsInputs];
  dataFrontCroppingLength = [airpodsInputs8 dataFrontCroppingLength];
  unsignedIntValue2 = [dataFrontCroppingLength unsignedIntValue];
  airpodsInputs9 = [(AirPodsAudioSystemController *)self airpodsInputs];
  dataCroppingLength = [airpodsInputs9 dataCroppingLength];
  v39 = -[AirPodsAudioSystemController cropAudioData:lengthFromFront:lengthFromEnd:](self, "cropAudioData:lengthFromFront:lengthFromEnd:", data, unsignedIntValue2, [dataCroppingLength unsignedIntValue]);

  bytes2 = [v39 bytes];
  LODWORD(data) = [v39 length] >> 2;
  AAT_initWithLength(v55);
  airpodsInputs10 = [(AirPodsAudioSystemController *)self airpodsInputs];
  frequencyBins6 = [airpodsInputs10 frequencyBins];
  LODWORD(airpodsInputs9) = [frequencyBins6 count];
  [resultCopy sampleRate];
  AAT_processFrequencyResponseGxx(bytes, v55, bytes2, data, v12, airpodsInputs9, v43, buf);

  airpodsInputs11 = [(AirPodsAudioSystemController *)self airpodsInputs];
  frequencyBins7 = [airpodsInputs11 frequencyBins];
  v46 = [frequencyBins7 count];

  if (v46 >= 2)
  {
    v48 = 0;
    do
    {
      LODWORD(v47) = *(*buf + 4 * v48);
      v49 = [NSNumber numberWithFloat:v47];
      [v9 addObject:v49];

      ++v48;
      airpodsInputs12 = [(AirPodsAudioSystemController *)self airpodsInputs];
      frequencyBins8 = [airpodsInputs12 frequencyBins];
      v52 = [frequencyBins8 count];
    }

    while (v48 < v52 >> 1);
  }

  [dkResultCopy setEnergyValues:v9];
  free(v12);
  free(*buf);
  if (![v9 count])
  {
    v62 = NSLocalizedDescriptionKey;
    v63 = @"Failed to generate Bin Energy Values.";
    v53 = [NSDictionary dictionaryWithObjects:&v63 forKeys:&v62 count:1];
    v54 = [NSError errorWithDomain:@"DAAudioQualityErrorDomain" code:-65 userInfo:v53];

    [(AudioSystemCommon *)self failedToExecuteWithError:v54];
  }
}

- (id)cropAudioData:(id)data lengthFromFront:(unsigned int)front lengthFromEnd:(unsigned int)end
{
  v6 = end + front;
  dataCopy = data;
  v8 = [dataCopy subdataWithRange:{4 * front, objc_msgSend(dataCopy, "length") - 4 * v6}];

  return v8;
}

- (void)initFilter
{
  airpodsInputs = [(AirPodsAudioSystemController *)self airpodsInputs];
  crackleFilterCoeffs = [airpodsInputs crackleFilterCoeffs];
  v22 = &v22;
  v4 = (&v22 - ((8 * [crackleFilterCoeffs count] + 15) & 0xFFFFFFFFFFFFFFF0));
  airpodsInputs2 = [(AirPodsAudioSystemController *)self airpodsInputs];
  crackleFilterCoeffs2 = [airpodsInputs2 crackleFilterCoeffs];
  v7 = [crackleFilterCoeffs2 count];

  if (v7)
  {
    v9 = 0;
    *&v8 = 67109376;
    v24 = v8;
    do
    {
      airpodsInputs3 = [(AirPodsAudioSystemController *)self airpodsInputs];
      crackleFilterCoeffs3 = [airpodsInputs3 crackleFilterCoeffs];
      v12 = [crackleFilterCoeffs3 objectAtIndexedSubscript:v9];
      [v12 doubleValue];
      v14 = v13;
      v4[v9] = v13;

      v15 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v24;
        v26 = v9;
        v27 = 2048;
        v28 = v14;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Crackle Filter used i=%d with value=%f", buf, 0x12u);
      }

      ++v9;
      airpodsInputs4 = [(AirPodsAudioSystemController *)self airpodsInputs];
      crackleFilterCoeffs4 = [airpodsInputs4 crackleFilterCoeffs];
      v18 = [crackleFilterCoeffs4 count];
    }

    while (v18 > v9);
  }

  airpodsInputs5 = [(AirPodsAudioSystemController *)self airpodsInputs];
  crackleNumberOfStages = [airpodsInputs5 crackleNumberOfStages];
  intValue = [crackleNumberOfStages intValue];

  [(AirPodsAudioSystemController *)self setFilterSetup:vDSP_biquad_CreateSetup(v4, intValue)];
  [(AirPodsAudioSystemController *)self setFilterDelay:malloc_type_calloc(3 * intValue, 4uLL, 0x100004052888210uLL)];
}

- (void)freeFilter
{
  if ([(AirPodsAudioSystemController *)self filterDelay])
  {
    free([(AirPodsAudioSystemController *)self filterDelay]);
  }

  filterSetup = [(AirPodsAudioSystemController *)self filterSetup];

  vDSP_biquad_DestroySetup(filterSetup);
}

- (void)overrideOriginalHeadphoneExposureNotification
{
  audioDataAnalysisSettingsManager = [(AirPodsAudioSystemController *)self audioDataAnalysisSettingsManager];
  v4 = ADAFPreferenceKeyHAENotificationFeatureEnabled;
  v5 = [audioDataAnalysisSettingsManager getPreferenceFor:ADAFPreferenceKeyHAENotificationFeatureEnabled];
  -[AirPodsAudioSystemController setHeadphoneExposureNotificationsEnabled:](self, "setHeadphoneExposureNotificationsEnabled:", [v5 BOOLValue]);

  if ([(AirPodsAudioSystemController *)self headphoneExposureNotificationsEnabled])
  {
    v6 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Headphone exposure notifications are enabled. Disabling...", v10, 2u);
    }

    [(AirPodsAudioSystemController *)self setHeadphoneExposureNotificationsChanged:1];
    audioDataAnalysisSettingsManager2 = [(AirPodsAudioSystemController *)self audioDataAnalysisSettingsManager];
    v8 = [audioDataAnalysisSettingsManager2 setPreferenceFor:v4 value:&__kCFBooleanFalse];

    if (v8)
    {
      v9 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10000FBCC(v8, v9);
      }
    }
  }
}

- (void)restoreOriginalHeadphoneExposureNotification
{
  if ([(AirPodsAudioSystemController *)self headphoneExposureNotificationsChanged])
  {
    v3 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Restoring original headphone exposure notification state", v9, 2u);
    }

    audioDataAnalysisSettingsManager = [(AirPodsAudioSystemController *)self audioDataAnalysisSettingsManager];
    v5 = ADAFPreferenceKeyHAENotificationFeatureEnabled;
    v6 = [NSNumber numberWithBool:[(AirPodsAudioSystemController *)self headphoneExposureNotificationsEnabled]];
    v7 = [audioDataAnalysisSettingsManager setPreferenceFor:v5 value:v6];

    if (v7)
    {
      v8 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10000FC44(v7, v8);
      }
    }
  }
}

@end