@interface SHSignature
+ (BOOL)splitSignatureFromData:(id)a3 intoSpectralPeaks:(id *)a4 andMusicalFeatures:(id *)a5 error:(id *)a6;
+ (SHSignature)signatureWithDataRepresentation:(NSData *)dataRepresentation error:(NSError *)error;
+ (int64_t)signatureTypeFromData:(id)a3;
- (NSData)dataRepresentation;
- (NSTimeInterval)duration;
- (SHSignature)init;
- (SHSignature)initWithCoder:(id)a3;
- (SHSignature)initWithDataRepresentation:(NSData *)dataRepresentation error:(NSError *)error;
- (SHSignature)initWithID:(id)a3 dataRepresentation:(id)a4 startTime:(id)a5 error:(id *)a6;
- (SHSignature)initWithID:(id)a3 spectralPeaksData:(id)a4 musicalFeaturesData:(id)a5 startTime:(id)a6 error:(id *)a7;
- (SHSignatureMetrics)metrics;
- (double)durationForSignatureData:(id)a3;
- (double)musicalFeaturesDuration;
- (double)spectralPeaksDuration;
- (id)_descriptionWithInternalState:(BOOL)a3;
- (id)_startDateBasedUponAudioTime:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)commonSetupWithID:(id)a3 spectralPeaksData:(id)a4 musicalFeaturesData:(id)a5 startTime:(id)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SHSignature

+ (int64_t)signatureTypeFromData:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v3 = [SHSigUtilities signatureFileTypeForData:a3 error:&v8];
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

+ (BOOL)splitSignatureFromData:(id)a3 intoSpectralPeaks:(id *)a4 andMusicalFeatures:(id *)a5 error:(id *)a6
{
  v10 = a3;
  if ([v10 length])
  {
    v16 = 0;
    v11 = [SHSigUtilities signatureFileTypeForData:v10 error:&v16];
    v12 = v16;
    if (v11 <= 1)
    {
      if (v11)
      {
        if (v11 == 1)
        {
          if (a4)
          {
            v13 = v10;
            *a4 = v10;
          }

LABEL_14:
          v6 = 1;
        }
      }

      else
      {
        [SHError annotateClientError:a6 code:200 underlyingError:v12];
        v6 = 0;
      }

LABEL_15:

      goto LABEL_16;
    }

    if (v11 != 2)
    {
      if (v11 == 3)
      {
        v6 = [SHCoalescedSignature separate:v10 intoPeakFeatures:a4 andMusicalFeatures:a5 error:a6];
      }

      goto LABEL_15;
    }

    if (a5)
    {
      v14 = v10;
      *a5 = v10;
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

        v13 = 0;
        goto LABEL_10;
      }

      v12 = [MEMORY[0x277CCAD78] UUID];
      [(SHSignature *)self commonSetupWithID:v12 spectralPeaksData:v9 musicalFeaturesData:v10 startTime:v7];
    }

    v13 = self;
LABEL_10:

    goto LABEL_11;
  }

  [SHError remapErrorToClientErrorPointer:error];
  v13 = 0;
LABEL_11:

  v15 = *MEMORY[0x277D85DE8];
  return v13;
}

- (SHSignature)initWithID:(id)a3 dataRepresentation:(id)a4 startTime:(id)a5 error:(id *)a6
{
  v25 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  v12 = [SHSignature splitSignatureFromData:a4 intoSpectralPeaks:&v22 andMusicalFeatures:&v21 error:&v20];
  v13 = v22;
  v14 = v21;
  v15 = v20;
  if (v12)
  {
    self = [(SHSignature *)self initWithID:v10 spectralPeaksData:v13 musicalFeaturesData:v14 startTime:v11 error:a6];
    v16 = self;
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

    v16 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v16;
}

- (SHSignature)initWithID:(id)a3 spectralPeaksData:(id)a4 musicalFeaturesData:(id)a5 startTime:(id)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = SHSignature;
  v15 = [(SHSignature *)&v18 init];
  v16 = v15;
  if (v15)
  {
    [(SHSignature *)v15 commonSetupWithID:v11 spectralPeaksData:v12 musicalFeaturesData:v13 startTime:v14];
  }

  return v16;
}

- (void)commonSetupWithID:(id)a3 spectralPeaksData:(id)a4 musicalFeaturesData:(id)a5 startTime:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  ID = self->__ID;
  self->__ID = v10;
  v23 = v10;

  time = self->_time;
  self->_time = v13;
  v16 = v13;

  spectralPeaksData = self->_spectralPeaksData;
  self->_spectralPeaksData = v11;
  v18 = v11;

  musicalFeaturesData = self->_musicalFeaturesData;
  self->_musicalFeaturesData = v12;
  v20 = v12;

  v21 = [(SHSignature *)self _startDateBasedUponAudioTime:v16];
  audioStartDate = self->_audioStartDate;
  self->_audioStartDate = v21;
}

- (NSData)dataRepresentation
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(SHSignature *)self spectralPeaksData];
  v4 = [v3 length];

  v5 = [(SHSignature *)self musicalFeaturesData];
  v6 = [v5 length];

  if (!(v4 | v6))
  {
    v7 = [MEMORY[0x277CBEA90] data];
LABEL_11:
    v13 = v7;
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
    v7 = ;
    goto LABEL_11;
  }

  v8 = [(SHSignature *)self spectralPeaksData];
  v9 = [(SHSignature *)self musicalFeaturesData];
  v17 = 0;
  v10 = [SHCoalescedSignature coalesePeakFeatures:v8 musicalFeatures:v9 error:&v17];
  v11 = v17;

  if (v10)
  {
    v12 = v10;
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

    v12 = [MEMORY[0x277CBEA90] data];
  }

  v13 = v12;

LABEL_16:
  v15 = *MEMORY[0x277D85DE8];

  return v13;
}

- (SHSignature)init
{
  v3 = [objc_alloc(MEMORY[0x277CB8428]) initWithHostTime:mach_absolute_time()];
  v4 = [MEMORY[0x277CCAD78] UUID];
  v5 = [(SHSignature *)self initWithID:v4 spectralPeaksData:0 musicalFeaturesData:0 startTime:v3 error:0];

  return v5;
}

- (id)_startDateBasedUponAudioTime:(id)a3
{
  v4 = a3;
  if ([v4 isHostTimeValid])
  {
    [MEMORY[0x277CB8428] secondsForHostTime:mach_absolute_time()];
    v6 = v5;
    [MEMORY[0x277CB8428] secondsForHostTime:{objc_msgSend(v4, "hostTime")}];
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
  v3 = [(SHSignature *)self spectralPeaksData];
  [(SHSignature *)self durationForSignatureData:v3];
  v5 = v4;

  return v5;
}

- (double)musicalFeaturesDuration
{
  v3 = [(SHSignature *)self musicalFeaturesData];
  [(SHSignature *)self durationForSignatureData:v3];
  v5 = v4;

  return v5;
}

- (double)durationForSignatureData:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 length])
  {
    v10 = 0;
    [SHSigUtilities signatureDurationForData:v3 error:&v10];
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
    v5 = [(SHSignature *)self audioStartDate];
    v6 = [(SHSignatureMetrics *)v4 initWithSessionStartDate:v5 signatureRecordingOffset:0.0];
    v7 = self->_metrics;
    self->_metrics = v6;

    metrics = self->_metrics;
  }

  return metrics;
}

- (SHSignature)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SHSignatureCodingKeyData"];
  v6 = [v4 decodeInt64ForKey:@"SHSignatureCodingHostTime"];
  v7 = [v4 decodeInt64ForKey:@"SHSignatureCodingSampleTime"];
  [v4 decodeDoubleForKey:@"SHSignatureCodingTimeSampleRate"];
  v9 = v8;
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SHSignatureCodingKeyID"];
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SHSignatureCodingMetrics"];
  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SHSignatureCodingSignatureStartDate"];

  v13 = [MEMORY[0x277CB8428] timeWithHostTime:v6 sampleTime:v7 atRate:v9];
  v14 = [(SHSignature *)self initWithID:v10 dataRepresentation:v5 startTime:v13 error:0];

  [(SHSignature *)v14 setMetrics:v11];
  [(SHSignature *)v14 setAudioStartDate:v12];

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SHSignature *)self dataRepresentation];
  [v4 encodeObject:v5 forKey:@"SHSignatureCodingKeyData"];

  v6 = [(SHSignature *)self time];
  [v4 encodeInt64:objc_msgSend(v6 forKey:{"hostTime"), @"SHSignatureCodingHostTime"}];

  v7 = [(SHSignature *)self time];
  [v4 encodeInt64:objc_msgSend(v7 forKey:{"sampleTime"), @"SHSignatureCodingSampleTime"}];

  v8 = [(SHSignature *)self time];
  [v8 sampleRate];
  [v4 encodeDouble:@"SHSignatureCodingTimeSampleRate" forKey:?];

  v9 = [(SHSignature *)self _ID];
  [v4 encodeObject:v9 forKey:@"SHSignatureCodingKeyID"];

  v10 = [(SHSignature *)self metrics];
  [v4 encodeObject:v10 forKey:@"SHSignatureCodingMetrics"];

  v11 = [(SHSignature *)self audioStartDate];
  [v4 encodeObject:v11 forKey:@"SHSignatureCodingSignatureStartDate"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = MEMORY[0x277CB8428];
  v6 = [(SHSignature *)self time];
  v7 = [v6 sampleTime];
  v8 = [(SHSignature *)self time];
  [v8 sampleRate];
  v9 = [v5 timeWithSampleTime:v7 atRate:?];

  v10 = [SHSignature allocWithZone:a3];
  v11 = [(SHSignature *)self _ID];
  v12 = [v11 copyWithZone:a3];
  v13 = [(SHSignature *)self dataRepresentation];
  v14 = [v13 copyWithZone:a3];
  v15 = [(SHSignature *)v10 initWithID:v12 dataRepresentation:v14 startTime:v9 error:0];

  v16 = [(SHSignature *)self metrics];
  v17 = [v16 copyWithZone:a3];
  [(SHSignature *)v15 setMetrics:v17];

  v18 = [(SHSignature *)self audioStartDate];
  v19 = [v18 copyWithZone:a3];
  [(SHSignature *)v15 setAudioStartDate:v19];

  return v15;
}

- (id)_descriptionWithInternalState:(BOOL)a3
{
  v3 = a3;
  v36 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCAB68];
  [(SHSignature *)self duration];
  v7 = [v5 stringWithFormat:@"<SHSignature: %p duration='%.3f s'", self, v6];
  if (v3)
  {
    [(SHSignature *)self spectralPeaksDuration];
    v9 = v8;
    [(SHSignature *)self musicalFeaturesDuration];
    [v7 appendFormat:@" spectralPeaksDuration='%.3f s' musicalFeaturesDuration='%.3f s'", v9, v10];
    v11 = [(SHSignature *)self dataRepresentation];
    [v7 appendFormat:@" dataRepresentation='%lu bytes'", objc_msgSend(v11, "length")];

    v12 = [(SHSignature *)self spectralPeaksData];
    v13 = [v12 length];
    v14 = [(SHSignature *)self musicalFeaturesData];
    [v7 appendFormat:@" spectralPeaksData='%lu bytes' musicalFeaturesData='%lu bytes'", v13, objc_msgSend(v14, "length")];

    v15 = [(SHSignature *)self dataRepresentation];
    v31 = 0;
    v16 = [SHSigUtilities signatureInfoForData:v15 error:&v31];
    v17 = v31;

    if (v17)
    {
      v18 = sh_log_object();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = [(SHSignature *)self dataRepresentation];
        *buf = 138412546;
        v33 = v19;
        v34 = 2112;
        v35 = v17;
        _os_log_impl(&dword_230F52000, v18, OS_LOG_TYPE_ERROR, "Could not retrieve signature info for data %@ with error: %@", buf, 0x16u);
      }
    }

    v20 = [v16 valueForKey:0x2845C8610];
    v21 = [v20 unsignedLongValue];

    v22 = [v16 valueForKey:0x2845C8630];
    v23 = [v16 valueForKey:0x2845C8650];
    v24 = [v16 valueForKey:0x2845C8670];
    v25 = [v24 unsignedLongValue];

    v26 = [v16 valueForKey:0x2845C8690];
    v27 = [v26 unsignedLongValue];

    [v7 appendFormat:@" sampleRate='%lu Hz' softwareVersion='%@' fileVersion='%@' numberOfFeatures='%lu' numberOfBands='%lu'", v21, v22, v23, v25, v27];
  }

  else
  {
    v28 = [(SHSignature *)self dataRepresentation];
    [v7 appendFormat:@" dataRepresentation='%lu bytes'", objc_msgSend(v28, "length")];
  }

  [v7 appendString:@">"];
  v29 = *MEMORY[0x277D85DE8];

  return v7;
}

@end