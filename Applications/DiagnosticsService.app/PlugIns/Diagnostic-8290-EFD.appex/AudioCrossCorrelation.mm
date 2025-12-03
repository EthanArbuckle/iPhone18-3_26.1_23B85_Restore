@interface AudioCrossCorrelation
+ (BOOL)convertNSDataToWAV:(id)v atURL:(id)l error:(id)error;
+ (id)calculatePeakDBValueWithSourceSignalData:(id)data resultSignalData:(id)signalData error:(id *)error;
+ (id)convertWAVtoNSDataWithFileStringURL:(id)l withSampleRate:(id)rate error:(id *)error;
@end

@implementation AudioCrossCorrelation

+ (id)calculatePeakDBValueWithSourceSignalData:(id)data resultSignalData:(id)signalData error:(id *)error
{
  signalDataCopy = signalData;
  dataCopy = data;
  v9 = [signalDataCopy length] >> 2;
  v10 = v9 + ([dataCopy length] >> 2) - 1;
  v11 = malloc_type_malloc(4 * v10, 0x100004052888210uLL);
  bzero(v11, 4 * v10);
  v12 = malloc_type_malloc(4 * v10, 0x100004052888210uLL);
  bzero(v12, v10);
  bytes = [signalDataCopy bytes];
  v14 = [signalDataCopy length];

  memcpy(v12, bytes, v14);
  bytes2 = [dataCopy bytes];
  v16 = [dataCopy length] >> 2;
  v17 = [dataCopy length];

  vDSP_conv(v12, 1, bytes2, 1, v11, 1, v16, v17 >> 2);
  __C = 0.0;
  v20 = 0;
  vDSP_maxvi(v11, 1, &__C, &v20, v10);
  free(v11);
  free(v12);
  v18 = 0;
  if (COERCE_UNSIGNED_INT(fabs(log10f(__C) * 10.0)) <= 0x7F7FFFFF)
  {
    v18 = [NSNumber numberWithFloat:?];
  }

  if (error && !v18)
  {
    *error = [NSError errorWithDomain:@"DAAudioQualityErrorDomain" code:-62 userInfo:0];
  }

  return v18;
}

+ (id)convertWAVtoNSDataWithFileStringURL:(id)l withSampleRate:(id)rate error:(id *)error
{
  rateCopy = rate;
  lCopy = l;
  v9 = [[NSURL alloc] initWithString:lCopy];

  v10 = [[AVAudioFile alloc] initForReading:v9 error:error];
  v11 = [AVAudioPCMBuffer alloc];
  processingFormat = [v10 processingFormat];
  v13 = [v11 initWithPCMFormat:processingFormat frameCapacity:objc_msgSend(v10, "length")];

  [v10 readIntoBuffer:v13 error:error];
  v14 = *error;
  v15 = DiagnosticLogHandleForCategory();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (v14)
  {
    if (v16)
    {
      localizedDescription = [*error localizedDescription];
      v33 = 138412290;
      v34 = localizedDescription;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "WAV Audio could not be loaded into PCM buffer. Error : %@", &v33, 0xCu);
    }

    v18 = -66;
LABEL_14:
    [NSError errorWithDomain:@"DAAudioQualityErrorDomain" code:v18 userInfo:0];
    *error = v26 = 0;
    goto LABEL_15;
  }

  if (v16)
  {
    format = [v13 format];
    [format sampleRate];
    v33 = 134218242;
    v34 = v20;
    v35 = 2112;
    v36 = rateCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Source WAV file sample rate: %f. Desired sample rate: %@", &v33, 0x16u);
  }

  format2 = [v13 format];
  [format2 sampleRate];
  v22 = [NSNumber numberWithDouble:?];
  v23 = [rateCopy isEqualToNumber:v22];

  if ((v23 & 1) == 0)
  {
    v27 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      lastPathComponent = [v9 lastPathComponent];
      format3 = [v13 format];
      [format3 sampleRate];
      v33 = 138412802;
      v34 = lastPathComponent;
      v35 = 2048;
      v36 = v30;
      v37 = 2112;
      v38 = rateCopy;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "The WAV file %@ has sample rate %f, which does not match the required sample rate %@.", &v33, 0x20u);
    }

    v18 = -70;
    goto LABEL_14;
  }

  v24 = [[NSData alloc] initWithBytes:*objc_msgSend(v13 length:{"floatChannelData"), (4 * objc_msgSend(v13, "frameLength"))}];
  v25 = v24;
  if (v24 && [v24 length])
  {
    v26 = v25;
  }

  else
  {
    v32 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v33) = 0;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "WAV Audio was loaded into PCM buffer but data is empty.", &v33, 2u);
    }

    [NSError errorWithDomain:@"DAAudioQualityErrorDomain" code:-66 userInfo:0];
    *error = v26 = 0;
  }

LABEL_15:

  return v26;
}

+ (BOOL)convertNSDataToWAV:(id)v atURL:(id)l error:(id)error
{
  errorCopy = error;
  lCopy = l;
  vCopy = v;
  v10 = [[AVAudioFormat alloc] initWithCommonFormat:1 sampleRate:1 channels:0 interleaved:48000.0];
  v11 = [vCopy length] >> 2;
  v12 = [[AVAudioPCMBuffer alloc] initWithPCMFormat:v10 frameCapacity:v11];
  [v12 setFrameLength:v11];
  v13 = *([v12 mutableAudioBufferList] + 2);
  bytes = [vCopy bytes];
  v15 = [vCopy length];

  memcpy(v13, bytes, v15);
  v16 = [AVAudioFile alloc];
  settings = [v10 settings];
  v22 = errorCopy;
  v18 = [v16 initForWriting:lCopy settings:settings error:&v22];

  v19 = v22;
  if (!v19)
  {
    v21 = 0;
    [v18 writeFromBuffer:v12 error:&v21];
    v19 = v21;
  }

  return 0;
}

@end