@interface AirPodsAudioSystemController
- (id)createNewTestSequenceWithOutput:(id)a3 andStimulusFile:(id)a4;
- (id)cropAudioData:(id)a3 lengthFromFront:(unsigned int)a4 lengthFromEnd:(unsigned int)a5;
- (id)errorForTestStatus:(int)a3;
- (id)pathToSoundFile:(id)a3;
- (void)cancel;
- (void)dealloc;
- (void)downloadFilesWithResponder:(id)a3;
- (void)freeFilter;
- (void)handleChamberStatus:(int)a3;
- (void)initFilter;
- (void)overrideOriginalHeadphoneExposureNotification;
- (void)performAnalysisOnAVResult:(id)a3 fromOutput:(id)a4 withSourceSignalData:(id)a5 intoDKResult:(id)a6 error:(id)a7;
- (void)processCrackleData:(float *)a3 audioRawDataSize:(int)a4 saveResult:(id *)a5;
- (void)processFrequencyAndRearVentOcculusionWithPlayResult:(id)a3 sourceSignalData:(id)a4 dkResult:(id)a5;
- (void)restoreOriginalHeadphoneExposureNotification;
- (void)setupWithInputs:(id)a3 responder:(id)a4;
- (void)start;
- (void)stopAlerts;
- (void)teardown;
@end

@implementation AirPodsAudioSystemController

- (void)setupWithInputs:(id)a3 responder:(id)a4
{
  v6 = a4;
  [(AirPodsAudioSystemController *)self setAirpodsInputs:a3];
  v7 = [(AirPodsAudioSystemController *)self airpodsInputs];
  v8 = [v7 unpairAirPodsOnFinish];
  if (v6 && v8)
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

      [v6 unpairSessionAccessoryOnTestCompletion];
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
  v13 = [(AirPodsAudioSystemController *)self airpodsInputs];
  v14 = [v13 chamberInputs];
  v15 = [(DAChamberDetector *)v12 initWithInputs:v14];
  [(AirPodsAudioSystemController *)self setChamberDetector:v15];

  v16 = [(AirPodsAudioSystemController *)self chamberDetector];
  [v16 setDelegate:self];

  v17 = dispatch_queue_create("AirPodsAudioSystemControllerEventQueue", &_dispatch_queue_attr_concurrent);
  [(AirPodsAudioSystemController *)self setEventQueue:v17];

  v18 = [(AirPodsAudioSystemController *)self airpodsInputs];
  v19.receiver = self;
  v19.super_class = AirPodsAudioSystemController;
  [(AudioSystemCommon *)&v19 setupWithInputs:v18 responder:v6];
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

  v6 = [(AirPodsAudioSystemController *)self chamberDetector];
  [v6 start];

  v7 = [(AirPodsAudioSystemController *)self chamberReadinessSemaphore];
  v8 = [(AirPodsAudioSystemController *)self airpodsInputs];
  v9 = [v8 chamberInputs];
  v10 = dispatch_time(0, 1000000000 * [v9 detectChamberReadyWaitTime]);
  v11 = dispatch_semaphore_wait(v7, v10);

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
    v13 = [(AirPodsAudioSystemController *)self eventQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100005C90;
    block[3] = &unk_10001C5A0;
    block[4] = self;
    dispatch_async(v13, block);
  }
}

- (void)cancel
{
  [(AirPodsAudioSystemController *)self setChamberReadinessSemaphore:0];
  [(AirPodsAudioSystemController *)self setTestCompletionSemaphore:0];
  v3 = [(AirPodsAudioSystemController *)self chamberDetector];
  [v3 stop];

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
  v3 = [(AirPodsAudioSystemController *)self chamberDetector];
  [v3 stop];

  [(AirPodsAudioSystemController *)self setIsRunning:0];
  [(AirPodsAudioSystemController *)self restoreOriginalHeadphoneExposureNotification];
  [(AirPodsAudioSystemController *)self stopAlerts];
  v4.receiver = self;
  v4.super_class = AirPodsAudioSystemController;
  [(AudioSystemCommon *)&v4 teardown];
  AAT_cleanUp();
  [(AirPodsAudioSystemController *)self freeFilter];
}

- (id)errorForTestStatus:(int)a3
{
  if (a3 > -1003)
  {
    if (a3 == -1002)
    {
      v3 = -1002;
      v4 = @"Audio test timed out while waiting for chamber readiness";
      goto LABEL_11;
    }

    if (!a3)
    {
      v5 = 0;
      goto LABEL_12;
    }

LABEL_8:
    v3 = a3;
    v4 = @"Unknown test status error";
    goto LABEL_11;
  }

  if (a3 == -1004)
  {
    v3 = -1004;
    v4 = @"Audio test timed out while waiting for completion";
    goto LABEL_11;
  }

  if (a3 != -1003)
  {
    goto LABEL_8;
  }

  v3 = -1003;
  v4 = @"Chamber was opened prematurely during the test";
LABEL_11:
  v8 = NSLocalizedDescriptionKey;
  v9 = v4;
  v6 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v5 = [NSError errorWithDomain:@"DAAudioQualityErrorDomain" code:v3 userInfo:v6];

LABEL_12:

  return v5;
}

- (void)stopAlerts
{
  v3 = [(AirPodsAudioSystemController *)self airpodsInputs];
  v4 = [v3 chamberInputs];
  v5 = [v4 testCompleteVibrationAlertEnabled];

  if (v5)
  {
    AudioServicesStopSystemSound();
  }

  v6 = [(AirPodsAudioSystemController *)self airpodsInputs];
  v7 = [v6 chamberInputs];
  v8 = [v7 testCompleteChimeAlertEnabled];

  if (v8)
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

- (void)handleChamberStatus:(int)a3
{
  v5 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received chamber status: %u", v9, 8u);
  }

  if (a3 == 3)
  {
    if (![(AirPodsAudioSystemController *)self isRunning])
    {
      v7 = [(AirPodsAudioSystemController *)self testEndedSemaphore];

      if (v7)
      {
        v6 = [(AirPodsAudioSystemController *)self testEndedSemaphore];
        goto LABEL_10;
      }
    }

    [(AirPodsAudioSystemController *)self endTesting:4294966293 immediately:1];
  }

  else if (a3 == 1 && ![(AirPodsAudioSystemController *)self isRunning])
  {
    v6 = [(AirPodsAudioSystemController *)self chamberReadinessSemaphore];
LABEL_10:
    v8 = v6;
    dispatch_semaphore_signal(v6);
  }
}

- (void)downloadFilesWithResponder:(id)a3
{
  v4 = a3;
  v5 = [(AirPodsAudioSystemController *)self airpodsInputs];
  v6 = [v5 useBundledAudioStimulus];

  if (v6)
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
    [(AudioSystemCommon *)&v9 downloadFilesWithResponder:v4];
  }
}

- (id)pathToSoundFile:(id)a3
{
  v4 = a3;
  v5 = [(AirPodsAudioSystemController *)self airpodsInputs];
  v6 = [v5 useBundledAudioStimulus];

  v7 = DiagnosticLogHandleForCategory();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      *buf = 138412290;
      v16 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Using bundled stimulus for audio file %@", buf, 0xCu);
    }

    v9 = [v4 componentsSeparatedByString:@"."];
    v10 = [v9 firstObject];

    v11 = [NSBundle bundleForClass:objc_opt_class()];
    v12 = [v11 URLForResource:v10 withExtension:@".wav"];
  }

  else
  {
    if (v8)
    {
      *buf = 138412290;
      v16 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Using downloaded stimulus for audio file %@", buf, 0xCu);
    }

    v14.receiver = self;
    v14.super_class = AirPodsAudioSystemController;
    v12 = [(AudioSystemCommon *)&v14 pathToSoundFile:v4];
  }

  return v12;
}

- (void)performAnalysisOnAVResult:(id)a3 fromOutput:(id)a4 withSourceSignalData:(id)a5 intoDKResult:(id)a6 error:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = v13;
  v18 = v15;
  [v18 setAudioTestType:{objc_msgSend(v17, "audioTestType")}];
  v19 = [v17 audioTestType];
  if (v19 == 1)
  {
    [(AirPodsAudioSystemController *)self processFrequencyAndRearVentOcculusionWithPlayResult:v12 sourceSignalData:v14 dkResult:v18];
LABEL_8:
    v23 = v18;
    goto LABEL_9;
  }

  if (v19)
  {
    v24 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v31 = [v17 audioTestType];
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Unrecognized AirPods audio test type %ld", buf, 0xCu);
    }

    v28 = NSLocalizedDescriptionKey;
    v29 = @"Unrecognized AirPods audio test type";
    v25 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v26 = [NSError errorWithDomain:@"DAAudioQualityErrorDomain" code:-912 userInfo:v25];

    [(AudioSystemCommon *)self failedToExecuteWithError:v26];
    v16 = v26;
    goto LABEL_8;
  }

  v20 = [v12 data];
  v21 = [v20 bytes];
  v22 = [v12 data];
  v27 = v18;
  -[AirPodsAudioSystemController processCrackleData:audioRawDataSize:saveResult:](self, "processCrackleData:audioRawDataSize:saveResult:", v21, [v22 length] >> 2, &v27);
  v23 = v27;

LABEL_9:
}

- (id)createNewTestSequenceWithOutput:(id)a3 andStimulusFile:(id)a4
{
  v12.receiver = self;
  v12.super_class = AirPodsAudioSystemController;
  v6 = a3;
  v7 = [(AudioSystemCommon *)&v12 createNewTestSequenceWithOutput:v6 andStimulusFile:a4];
  v8 = [v6 numberOfChannels];

  [v7 setNumberOfChannels:v8];
  v9 = [(AirPodsAudioSystemController *)self airpodsInputs];
  v10 = [v9 micBufferNumbers];
  [v7 setMicBufferNumbers:v10];

  [v7 setRequiresBluetoothOutput:1];

  return v7;
}

- (void)processCrackleData:(float *)a3 audioRawDataSize:(int)a4 saveResult:(id *)a5
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
      v10 = a3[i];
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
  v27 = [(AirPodsAudioSystemController *)self airpodsInputs];
  v12 = [v27 crackleSamplingRate];
  v24 = [v12 intValue];
  v13 = [(AirPodsAudioSystemController *)self airpodsInputs];
  v14 = [v13 crackleBaseFrequency];
  v15 = [v14 intValue];
  v16 = [(AirPodsAudioSystemController *)self airpodsInputs];
  v17 = [v16 crackleNeighborDistance];
  AAT_processCrackledData(a3, a4, v24, v15, [v17 intValue], &self->_filterSetup, -[AirPodsAudioSystemController filterDelay](self, "filterDelay"), buf, &v28 + 1, &v28);

  LODWORD(v18) = *buf;
  v19 = [NSNumber numberWithFloat:v18];
  [*a5 setXCorrPeak:v19];

  LODWORD(v20) = HIDWORD(v28);
  v21 = [NSNumber numberWithFloat:v20];
  [*a5 setXCorrPNR:v21];

  LODWORD(v22) = v28;
  v23 = [NSNumber numberWithFloat:v22];
  [*a5 setXCorrCenter:v23];
}

- (void)processFrequencyAndRearVentOcculusionWithPlayResult:(id)a3 sourceSignalData:(id)a4 dkResult:(id)a5
{
  v60 = a3;
  v59 = a4;
  v58 = a5;
  v8 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Performing rear-vent occlusion/frequency analysis", buf, 2u);
  }

  v9 = objc_alloc_init(NSMutableArray);
  v10 = [(AirPodsAudioSystemController *)self airpodsInputs];
  v11 = [v10 frequencyBins];
  v12 = malloc_type_calloc([v11 count], 4uLL, 0x100004052888210uLL);

  v13 = [(AirPodsAudioSystemController *)self airpodsInputs];
  v14 = [v13 frequencyBins];
  v15 = [v14 count];

  if (v15)
  {
    v16 = 0;
    do
    {
      v17 = [(AirPodsAudioSystemController *)self airpodsInputs];
      v18 = [v17 frequencyBins];
      v19 = [v18 objectAtIndexedSubscript:v16];
      [v19 floatValue];
      v12[v16] = v20;

      ++v16;
      v21 = [(AirPodsAudioSystemController *)self airpodsInputs];
      v22 = [v21 frequencyBins];
      v23 = [v22 count];
    }

    while (v23 > v16);
  }

  v24 = [(AirPodsAudioSystemController *)self airpodsInputs];
  v25 = [v24 frequencyBins];
  v26 = malloc_type_calloc([v25 count] >> 1, 4uLL, 0x100004052888210uLL);

  *buf = v26;
  v27 = [(AirPodsAudioSystemController *)self airpodsInputs];
  v28 = [v27 stimulusFrontCroppingLength];
  v29 = [v28 unsignedIntValue];
  v30 = [(AirPodsAudioSystemController *)self airpodsInputs];
  v31 = [v30 stimulusCroppingLength];
  v32 = -[AirPodsAudioSystemController cropAudioData:lengthFromFront:lengthFromEnd:](self, "cropAudioData:lengthFromFront:lengthFromEnd:", v59, v29, [v31 unsignedIntValue]);

  v56 = [v32 bytes];
  v57 = v32;
  v55 = ([v32 length] >> 2);
  v33 = [v60 data];
  v34 = [(AirPodsAudioSystemController *)self airpodsInputs];
  v35 = [v34 dataFrontCroppingLength];
  v36 = [v35 unsignedIntValue];
  v37 = [(AirPodsAudioSystemController *)self airpodsInputs];
  v38 = [v37 dataCroppingLength];
  v39 = -[AirPodsAudioSystemController cropAudioData:lengthFromFront:lengthFromEnd:](self, "cropAudioData:lengthFromFront:lengthFromEnd:", v33, v36, [v38 unsignedIntValue]);

  v40 = [v39 bytes];
  LODWORD(v33) = [v39 length] >> 2;
  AAT_initWithLength(v55);
  v41 = [(AirPodsAudioSystemController *)self airpodsInputs];
  v42 = [v41 frequencyBins];
  LODWORD(v37) = [v42 count];
  [v60 sampleRate];
  AAT_processFrequencyResponseGxx(v56, v55, v40, v33, v12, v37, v43, buf);

  v44 = [(AirPodsAudioSystemController *)self airpodsInputs];
  v45 = [v44 frequencyBins];
  v46 = [v45 count];

  if (v46 >= 2)
  {
    v48 = 0;
    do
    {
      LODWORD(v47) = *(*buf + 4 * v48);
      v49 = [NSNumber numberWithFloat:v47];
      [v9 addObject:v49];

      ++v48;
      v50 = [(AirPodsAudioSystemController *)self airpodsInputs];
      v51 = [v50 frequencyBins];
      v52 = [v51 count];
    }

    while (v48 < v52 >> 1);
  }

  [v58 setEnergyValues:v9];
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

- (id)cropAudioData:(id)a3 lengthFromFront:(unsigned int)a4 lengthFromEnd:(unsigned int)a5
{
  v6 = a5 + a4;
  v7 = a3;
  v8 = [v7 subdataWithRange:{4 * a4, objc_msgSend(v7, "length") - 4 * v6}];

  return v8;
}

- (void)initFilter
{
  v23 = [(AirPodsAudioSystemController *)self airpodsInputs];
  v3 = [v23 crackleFilterCoeffs];
  v22 = &v22;
  v4 = (&v22 - ((8 * [v3 count] + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = [(AirPodsAudioSystemController *)self airpodsInputs];
  v6 = [v5 crackleFilterCoeffs];
  v7 = [v6 count];

  if (v7)
  {
    v9 = 0;
    *&v8 = 67109376;
    v24 = v8;
    do
    {
      v10 = [(AirPodsAudioSystemController *)self airpodsInputs];
      v11 = [v10 crackleFilterCoeffs];
      v12 = [v11 objectAtIndexedSubscript:v9];
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
      v16 = [(AirPodsAudioSystemController *)self airpodsInputs];
      v17 = [v16 crackleFilterCoeffs];
      v18 = [v17 count];
    }

    while (v18 > v9);
  }

  v19 = [(AirPodsAudioSystemController *)self airpodsInputs];
  v20 = [v19 crackleNumberOfStages];
  v21 = [v20 intValue];

  [(AirPodsAudioSystemController *)self setFilterSetup:vDSP_biquad_CreateSetup(v4, v21)];
  [(AirPodsAudioSystemController *)self setFilterDelay:malloc_type_calloc(3 * v21, 4uLL, 0x100004052888210uLL)];
}

- (void)freeFilter
{
  if ([(AirPodsAudioSystemController *)self filterDelay])
  {
    free([(AirPodsAudioSystemController *)self filterDelay]);
  }

  v3 = [(AirPodsAudioSystemController *)self filterSetup];

  vDSP_biquad_DestroySetup(v3);
}

- (void)overrideOriginalHeadphoneExposureNotification
{
  v3 = [(AirPodsAudioSystemController *)self audioDataAnalysisSettingsManager];
  v4 = ADAFPreferenceKeyHAENotificationFeatureEnabled;
  v5 = [v3 getPreferenceFor:ADAFPreferenceKeyHAENotificationFeatureEnabled];
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
    v7 = [(AirPodsAudioSystemController *)self audioDataAnalysisSettingsManager];
    v8 = [v7 setPreferenceFor:v4 value:&__kCFBooleanFalse];

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

    v4 = [(AirPodsAudioSystemController *)self audioDataAnalysisSettingsManager];
    v5 = ADAFPreferenceKeyHAENotificationFeatureEnabled;
    v6 = [NSNumber numberWithBool:[(AirPodsAudioSystemController *)self headphoneExposureNotificationsEnabled]];
    v7 = [v4 setPreferenceFor:v5 value:v6];

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