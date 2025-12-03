@interface SHSignature
+ (BOOL)splitSignatureFromData:(id)data intoSpectralPeaks:(id *)peaks andMusicalFeatures:(id *)features error:(id *)error;
+ (SHSignature)signatureWithDataRepresentation:(NSData *)dataRepresentation error:(NSError *)error;
+ (int64_t)signatureTypeFromData:(id)data;
- (NSData)dataRepresentation;
- (NSTimeInterval)duration;
- (SHSignature)init;
- (SHSignature)initWithCoder:(id)coder;
- (SHSignature)initWithDataRepresentation:(NSData *)dataRepresentation error:(NSError *)error;
- (SHSignature)initWithID:(id)d dataRepresentation:(id)representation startTime:(id)time error:(id *)error;
- (SHSignature)initWithID:(id)d spectralPeaksData:(id)data musicalFeaturesData:(id)featuresData startTime:(id)time error:(id *)error;
- (SHSignatureMetrics)metrics;
- (double)durationForSignatureData:(id)data;
- (double)musicalFeaturesDuration;
- (double)spectralPeaksDuration;
- (id)_descriptionWithInternalState:(BOOL)state;
- (id)_startDateBasedUponAudioTime:(id)time;
- (id)copyWithZone:(_NSZone *)zone;
- (void)commonSetupWithID:(id)d spectralPeaksData:(id)data musicalFeaturesData:(id)featuresData startTime:(id)time;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SHSignature

+ (int64_t)signatureTypeFromData:(id)data
{
  v11 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v3 = [SHSigUtilities signatureFileTypeForData:data error:&v8];
  v4 = v8;
  if (!v3)
  {
    v5 = sh_log_object();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = v4;
      _os_log_impl(&dword_230F52000, v5, OS_LOG_TYPE_ERROR, "Could not determine signature file type %@", buf, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

+ (BOOL)splitSignatureFromData:(id)data intoSpectralPeaks:(id *)peaks andMusicalFeatures:(id *)features error:(id *)error
{
  dataCopy = data;
  if ([dataCopy length])
  {
    v16 = 0;
    v11 = [SHSigUtilities signatureFileTypeForData:dataCopy error:&v16];
    v12 = v16;
    if (v11 <= 1)
    {
      if (v11)
      {
        if (v11 == 1)
        {
          if (peaks)
          {
            v13 = dataCopy;
            *peaks = dataCopy;
          }

LABEL_14:
          v6 = 1;
        }
      }

      else
      {
        [SHError annotateClientError:error code:200 underlyingError:v12];
        v6 = 0;
      }

LABEL_15:

      goto LABEL_16;
    }

    if (v11 != 2)
    {
      if (v11 == 3)
      {
        v6 = [SHCoalescedSignature separate:dataCopy intoPeakFeatures:peaks andMusicalFeatures:features error:error];
      }

      goto LABEL_15;
    }

    if (features)
    {
      v14 = dataCopy;
      *features = dataCopy;
    }

    goto LABEL_14;
  }

  v6 = 1;
LABEL_16:

  return v6;
}

+ (SHSignature)signatureWithDataRepresentation:(NSData *)dataRepresentation error:(NSError *)error
{
  v5 = dataRepresentation;
  v6 = [[SHSignature alloc] initWithDataRepresentation:v5 error:error];

  [SHError remapErrorToClientErrorPointer:error];

  return v6;
}

- (SHSignature)initWithDataRepresentation:(NSData *)dataRepresentation error:(NSError *)error
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = dataRepresentation;
  if ([SHSignatureDataRepresentationValidator signatureDataIsValid:v6 error:error])
  {
    v7 = [objc_alloc(MEMORY[0x277CB8428]) initWithHostTime:mach_absolute_time()];
    v20.receiver = self;
    v20.super_class = SHSignature;
    self = [(SHSignature *)&v20 init];
    if (self)
    {
      v18 = 0;
      v19 = 0;
      v17 = 0;
      v8 = [SHSignature splitSignatureFromData:v6 intoSpectralPeaks:&v19 andMusicalFeatures:&v18 error:&v17];
      v9 = v19;
      v10 = v18;
      v11 = v17;
      if (!v8)
      {
        v14 = sh_log_object();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v22 = v11;
          _os_log_impl(&dword_230F52000, v14, OS_LOG_TYPE_ERROR, "Could not separate signatures: %@", buf, 0xCu);
        }

        selfCopy = 0;
        goto LABEL_10;
      }

      uUID = [MEMORY[0x277CCAD78] UUID];
      [(SHSignature *)self commonSetupWithID:uUID spectralPeaksData:v9 musicalFeaturesData:v10 startTime:v7];
    }

    selfCopy = self;
LABEL_10:

    goto LABEL_11;
  }

  [SHError remapErrorToClientErrorPointer:error];
  selfCopy = 0;
LABEL_11:

  v15 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (SHSignature)initWithID:(id)d dataRepresentation:(id)representation startTime:(id)time error:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  dCopy = d;
  timeCopy = time;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  v12 = [SHSignature splitSignatureFromData:representation intoSpectralPeaks:&v22 andMusicalFeatures:&v21 error:&v20];
  v13 = v22;
  v14 = v21;
  v15 = v20;
  if (v12)
  {
    self = [(SHSignature *)self initWithID:dCopy spectralPeaksData:v13 musicalFeaturesData:v14 startTime:timeCopy error:error];
    selfCopy = self;
  }

  else
  {
    v17 = sh_log_object();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v24 = v15;
      _os_log_impl(&dword_230F52000, v17, OS_LOG_TYPE_ERROR, "Could not separate signatures: %@", buf, 0xCu);
    }

    selfCopy = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (SHSignature)initWithID:(id)d spectralPeaksData:(id)data musicalFeaturesData:(id)featuresData startTime:(id)time error:(id *)error
{
  dCopy = d;
  dataCopy = data;
  featuresDataCopy = featuresData;
  timeCopy = time;
  v18.receiver = self;
  v18.super_class = SHSignature;
  v15 = [(SHSignature *)&v18 init];
  v16 = v15;
  if (v15)
  {
    [(SHSignature *)v15 commonSetupWithID:dCopy spectralPeaksData:dataCopy musicalFeaturesData:featuresDataCopy startTime:timeCopy];
  }

  return v16;
}

- (void)commonSetupWithID:(id)d spectralPeaksData:(id)data musicalFeaturesData:(id)featuresData startTime:(id)time
{
  dCopy = d;
  dataCopy = data;
  featuresDataCopy = featuresData;
  timeCopy = time;
  ID = self->__ID;
  self->__ID = dCopy;
  v23 = dCopy;

  time = self->_time;
  self->_time = timeCopy;
  v16 = timeCopy;

  spectralPeaksData = self->_spectralPeaksData;
  self->_spectralPeaksData = dataCopy;
  v18 = dataCopy;

  musicalFeaturesData = self->_musicalFeaturesData;
  self->_musicalFeaturesData = featuresDataCopy;
  v20 = featuresDataCopy;

  v21 = [(SHSignature *)self _startDateBasedUponAudioTime:v16];
  audioStartDate = self->_audioStartDate;
  self->_audioStartDate = v21;
}

- (NSData)dataRepresentation
{
  v20 = *MEMORY[0x277D85DE8];
  spectralPeaksData = [(SHSignature *)self spectralPeaksData];
  v4 = [spectralPeaksData length];

  musicalFeaturesData = [(SHSignature *)self musicalFeaturesData];
  v6 = [musicalFeaturesData length];

  if (!(v4 | v6))
  {
    data = [MEMORY[0x277CBEA90] data];
LABEL_11:
    v13 = data;
    goto LABEL_16;
  }

  if (!v4 || !v6)
  {
    if (v4)
    {
      [(SHSignature *)self spectralPeaksData];
    }

    else
    {
      [(SHSignature *)self musicalFeaturesData];
    }
    data = ;
    goto LABEL_11;
  }

  spectralPeaksData2 = [(SHSignature *)self spectralPeaksData];
  musicalFeaturesData2 = [(SHSignature *)self musicalFeaturesData];
  v17 = 0;
  v10 = [SHCoalescedSignature coalesePeakFeatures:spectralPeaksData2 musicalFeatures:musicalFeaturesData2 error:&v17];
  v11 = v17;

  if (v10)
  {
    data2 = v10;
  }

  else
  {
    v14 = sh_log_object();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = v11;
      _os_log_impl(&dword_230F52000, v14, OS_LOG_TYPE_ERROR, "Could not coalesce signature with error %@", buf, 0xCu);
    }

    data2 = [MEMORY[0x277CBEA90] data];
  }

  v13 = data2;

LABEL_16:
  v15 = *MEMORY[0x277D85DE8];

  return v13;
}

- (SHSignature)init
{
  v3 = [objc_alloc(MEMORY[0x277CB8428]) initWithHostTime:mach_absolute_time()];
  uUID = [MEMORY[0x277CCAD78] UUID];
  v5 = [(SHSignature *)self initWithID:uUID spectralPeaksData:0 musicalFeaturesData:0 startTime:v3 error:0];

  return v5;
}

- (id)_startDateBasedUponAudioTime:(id)time
{
  timeCopy = time;
  if ([timeCopy isHostTimeValid])
  {
    [MEMORY[0x277CB8428] secondsForHostTime:mach_absolute_time()];
    v6 = v5;
    [MEMORY[0x277CB8428] secondsForHostTime:{objc_msgSend(timeCopy, "hostTime")}];
    v8 = v6 - v7;
    v9 = MEMORY[0x277CBEAA8];
  }

  else
  {
    v9 = MEMORY[0x277CBEAA8];
    [(SHSignature *)self duration];
  }

  v10 = [v9 dateWithTimeIntervalSinceNow:-v8];

  return v10;
}

- (NSTimeInterval)duration
{
  [(SHSignature *)self spectralPeaksDuration];
  if (v3 <= 0.0)
  {

    [(SHSignature *)self musicalFeaturesDuration];
  }

  else
  {

    [(SHSignature *)self spectralPeaksDuration];
  }

  return result;
}

- (double)spectralPeaksDuration
{
  spectralPeaksData = [(SHSignature *)self spectralPeaksData];
  [(SHSignature *)self durationForSignatureData:spectralPeaksData];
  v5 = v4;

  return v5;
}

- (double)musicalFeaturesDuration
{
  musicalFeaturesData = [(SHSignature *)self musicalFeaturesData];
  [(SHSignature *)self durationForSignatureData:musicalFeaturesData];
  v5 = v4;

  return v5;
}

- (double)durationForSignatureData:(id)data
{
  v13 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if ([dataCopy length])
  {
    v10 = 0;
    [SHSigUtilities signatureDurationForData:dataCopy error:&v10];
    v5 = v4;
    v6 = v10;
    if (v6)
    {
      v7 = sh_log_object();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v12 = v6;
        _os_log_impl(&dword_230F52000, v7, OS_LOG_TYPE_ERROR, "Error getting signature duration, returning 0, %@", buf, 0xCu);
      }

      v5 = 0.0;
    }
  }

  else
  {
    v5 = 0.0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

- (SHSignatureMetrics)metrics
{
  metrics = self->_metrics;
  if (!metrics)
  {
    v4 = [SHSignatureMetrics alloc];
    audioStartDate = [(SHSignature *)self audioStartDate];
    v6 = [(SHSignatureMetrics *)v4 initWithSessionStartDate:audioStartDate signatureRecordingOffset:0.0];
    v7 = self->_metrics;
    self->_metrics = v6;

    metrics = self->_metrics;
  }

  return metrics;
}

- (SHSignature)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SHSignatureCodingKeyData"];
  v6 = [coderCopy decodeInt64ForKey:@"SHSignatureCodingHostTime"];
  v7 = [coderCopy decodeInt64ForKey:@"SHSignatureCodingSampleTime"];
  [coderCopy decodeDoubleForKey:@"SHSignatureCodingTimeSampleRate"];
  v9 = v8;
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SHSignatureCodingKeyID"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SHSignatureCodingMetrics"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SHSignatureCodingSignatureStartDate"];

  v13 = [MEMORY[0x277CB8428] timeWithHostTime:v6 sampleTime:v7 atRate:v9];
  v14 = [(SHSignature *)self initWithID:v10 dataRepresentation:v5 startTime:v13 error:0];

  [(SHSignature *)v14 setMetrics:v11];
  [(SHSignature *)v14 setAudioStartDate:v12];

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  dataRepresentation = [(SHSignature *)self dataRepresentation];
  [coderCopy encodeObject:dataRepresentation forKey:@"SHSignatureCodingKeyData"];

  time = [(SHSignature *)self time];
  [coderCopy encodeInt64:objc_msgSend(time forKey:{"hostTime"), @"SHSignatureCodingHostTime"}];

  time2 = [(SHSignature *)self time];
  [coderCopy encodeInt64:objc_msgSend(time2 forKey:{"sampleTime"), @"SHSignatureCodingSampleTime"}];

  time3 = [(SHSignature *)self time];
  [time3 sampleRate];
  [coderCopy encodeDouble:@"SHSignatureCodingTimeSampleRate" forKey:?];

  v9 = [(SHSignature *)self _ID];
  [coderCopy encodeObject:v9 forKey:@"SHSignatureCodingKeyID"];

  metrics = [(SHSignature *)self metrics];
  [coderCopy encodeObject:metrics forKey:@"SHSignatureCodingMetrics"];

  audioStartDate = [(SHSignature *)self audioStartDate];
  [coderCopy encodeObject:audioStartDate forKey:@"SHSignatureCodingSignatureStartDate"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = MEMORY[0x277CB8428];
  time = [(SHSignature *)self time];
  sampleTime = [time sampleTime];
  time2 = [(SHSignature *)self time];
  [time2 sampleRate];
  v9 = [v5 timeWithSampleTime:sampleTime atRate:?];

  v10 = [SHSignature allocWithZone:zone];
  v11 = [(SHSignature *)self _ID];
  v12 = [v11 copyWithZone:zone];
  dataRepresentation = [(SHSignature *)self dataRepresentation];
  v14 = [dataRepresentation copyWithZone:zone];
  v15 = [(SHSignature *)v10 initWithID:v12 dataRepresentation:v14 startTime:v9 error:0];

  metrics = [(SHSignature *)self metrics];
  v17 = [metrics copyWithZone:zone];
  [(SHSignature *)v15 setMetrics:v17];

  audioStartDate = [(SHSignature *)self audioStartDate];
  v19 = [audioStartDate copyWithZone:zone];
  [(SHSignature *)v15 setAudioStartDate:v19];

  return v15;
}

- (id)_descriptionWithInternalState:(BOOL)state
{
  stateCopy = state;
  v36 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCAB68];
  [(SHSignature *)self duration];
  v7 = [v5 stringWithFormat:@"<SHSignature: %p duration='%.3f s'", self, v6];
  if (stateCopy)
  {
    [(SHSignature *)self spectralPeaksDuration];
    v9 = v8;
    [(SHSignature *)self musicalFeaturesDuration];
    [v7 appendFormat:@" spectralPeaksDuration='%.3f s' musicalFeaturesDuration='%.3f s'", v9, v10];
    dataRepresentation = [(SHSignature *)self dataRepresentation];
    [v7 appendFormat:@" dataRepresentation='%lu bytes'", objc_msgSend(dataRepresentation, "length")];

    spectralPeaksData = [(SHSignature *)self spectralPeaksData];
    v13 = [spectralPeaksData length];
    musicalFeaturesData = [(SHSignature *)self musicalFeaturesData];
    [v7 appendFormat:@" spectralPeaksData='%lu bytes' musicalFeaturesData='%lu bytes'", v13, objc_msgSend(musicalFeaturesData, "length")];

    dataRepresentation2 = [(SHSignature *)self dataRepresentation];
    v31 = 0;
    v16 = [SHSigUtilities signatureInfoForData:dataRepresentation2 error:&v31];
    v17 = v31;

    if (v17)
    {
      v18 = sh_log_object();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        dataRepresentation3 = [(SHSignature *)self dataRepresentation];
        *buf = 138412546;
        v33 = dataRepresentation3;
        v34 = 2112;
        v35 = v17;
        _os_log_impl(&dword_230F52000, v18, OS_LOG_TYPE_ERROR, "Could not retrieve signature info for data %@ with error: %@", buf, 0x16u);
      }
    }

    v20 = [v16 valueForKey:0x2845C8610];
    unsignedLongValue = [v20 unsignedLongValue];

    v22 = [v16 valueForKey:0x2845C8630];
    v23 = [v16 valueForKey:0x2845C8650];
    v24 = [v16 valueForKey:0x2845C8670];
    unsignedLongValue2 = [v24 unsignedLongValue];

    v26 = [v16 valueForKey:0x2845C8690];
    unsignedLongValue3 = [v26 unsignedLongValue];

    [v7 appendFormat:@" sampleRate='%lu Hz' softwareVersion='%@' fileVersion='%@' numberOfFeatures='%lu' numberOfBands='%lu'", unsignedLongValue, v22, v23, unsignedLongValue2, unsignedLongValue3];
  }

  else
  {
    dataRepresentation4 = [(SHSignature *)self dataRepresentation];
    [v7 appendFormat:@" dataRepresentation='%lu bytes'", objc_msgSend(dataRepresentation4, "length")];
  }

  [v7 appendString:@">"];
  v29 = *MEMORY[0x277D85DE8];

  return v7;
}

@end