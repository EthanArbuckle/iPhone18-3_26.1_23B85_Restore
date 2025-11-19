@interface SRSpeechMetrics
+ (void)initialize;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (SRSpeechMetrics)init;
- (SRSpeechMetrics)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5;
- (SRSpeechMetrics)initWithCoder:(id)a3;
- (SRSpeechMetrics)initWithSessionIdentifier:(id)a3 sessionFlags:(unint64_t)a4 timestamp:(double)a5 audioLevel:(id)a6 speechRecognition:(id)a7 soundClassification:(id)a8 speechExpression:(id)a9;
- (SRSpeechMetrics)initWithSessionIdentifier:(id)a3 sessionFlags:(unint64_t)a4 timestamp:(double)a5 timeSinceAudioStart:(double)a6 audioLevel:(id)a7 speechRecognition:(id)a8 soundClassification:(id)a9 speechExpression:(id)a10;
- (id)binarySampleRepresentation;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SRSpeechMetrics

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    qword_1EE02AB58 = os_log_create("com.apple.SensorKit", "SRSpeechMetrics");
  }
}

- (SRSpeechMetrics)init
{
  [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];

  return 0;
}

- (SRSpeechMetrics)initWithSessionIdentifier:(id)a3 sessionFlags:(unint64_t)a4 timestamp:(double)a5 audioLevel:(id)a6 speechRecognition:(id)a7 soundClassification:(id)a8 speechExpression:(id)a9
{
  v61 = *MEMORY[0x1E69E9840];
  if (qword_1EE02AB60 != -1)
  {
    dispatch_once(&qword_1EE02AB60, &__block_literal_global_10);
  }

  os_unfair_lock_lock(&_MergedGlobals_8);
  v43 = a3;
  v16 = [qword_1EE02AB70 objectForKeyedSubscript:a3];
  if (!v16)
  {
    v16 = [objc_msgSend(MEMORY[0x1E696AFB0] "UUID")];
    [qword_1EE02AB70 setObject:v16 forKeyedSubscript:a3];
    v17 = [MEMORY[0x1E696AD98] numberWithDouble:a5];
    [qword_1EE02AB68 setObject:v17 forKeyedSubscript:v16];
    os_unfair_lock_assert_owner(&_MergedGlobals_8);
    v37 = a4;
    v38 = a6;
    v39 = a7;
    v40 = a8;
    v41 = a9;
    if ([qword_1EE02AB68 count] >= 0x10)
    {
      v18 = [MEMORY[0x1E695DF70] arrayWithArray:{objc_msgSend(qword_1EE02AB68, "allKeys")}];
      [v18 sortUsingComparator:&__block_literal_global_251];
      if ([v18 count] >= 0xF)
      {
        v19 = 14;
        v44 = v18;
        do
        {
          v20 = [v18 objectAtIndexedSubscript:v19];
          [qword_1EE02AB68 setObject:0 forKeyedSubscript:v20];
          v21 = [MEMORY[0x1E695DF70] array];
          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          v22 = qword_1EE02AB70;
          v23 = [qword_1EE02AB70 countByEnumeratingWithState:&v45 objects:v51 count:16];
          if (v23)
          {
            v24 = *v46;
            do
            {
              for (i = 0; i != v23; ++i)
              {
                if (*v46 != v24)
                {
                  objc_enumerationMutation(v22);
                }

                v26 = *(*(&v45 + 1) + 8 * i);
                if ([objc_msgSend(qword_1EE02AB70 objectForKeyedSubscript:{v26), "isEqual:", v20}])
                {
                  [v21 addObject:v26];
                }
              }

              v23 = [v22 countByEnumeratingWithState:&v45 objects:v51 count:16];
            }

            while (v23);
          }

          [qword_1EE02AB70 removeObjectsForKeys:v21];
          v18 = v44;
          v27 = qword_1EE02AB58;
          if (os_log_type_enabled(qword_1EE02AB58, OS_LOG_TYPE_INFO))
          {
            *buf = 138543362;
            v50 = v20;
            _os_log_impl(&dword_1C914D000, v27, OS_LOG_TYPE_INFO, "Removing session UUID %{public}@ from tracking", buf, 0xCu);
          }

          ++v19;
        }

        while (v19 < [v44 count]);
      }
    }

    v28 = qword_1EE02AB58;
    if (os_log_type_enabled(qword_1EE02AB58, OS_LOG_TYPE_INFO))
    {
      *v51 = 138412546;
      v52 = qword_1EE02AB70;
      v53 = 2112;
      v54 = qword_1EE02AB68;
      _os_log_impl(&dword_1C914D000, v28, OS_LOG_TYPE_INFO, "Detected a new audio session. Sessions in flight: %@, session times: %@", v51, 0x16u);
    }

    a8 = v40;
    a9 = v41;
    a6 = v38;
    a7 = v39;
    a4 = v37;
  }

  os_unfair_lock_unlock(&_MergedGlobals_8);
  os_unfair_lock_lock(&_MergedGlobals_8);
  [objc_msgSend(qword_1EE02AB68 objectForKeyedSubscript:{v16), "doubleValue"}];
  v30 = v29;
  [objc_msgSend(a7 "speechRecognitionMetadata")];
  v32 = a5 - v30 + v31;
  v33 = qword_1EE02AB58;
  if (os_log_type_enabled(qword_1EE02AB58, OS_LOG_TYPE_DEBUG))
  {
    [objc_msgSend(a7 "speechRecognitionMetadata")];
    *v51 = 138413314;
    v52 = v16;
    v53 = 2048;
    v54 = *&v30;
    v55 = 2048;
    v56 = a5;
    v57 = 2048;
    v58 = v36;
    v59 = 2048;
    v60 = v32;
    _os_log_debug_impl(&dword_1C914D000, v33, OS_LOG_TYPE_DEBUG, "session UUID: %@, sessionStartTime: %.09f, timestamp: %.09f, speechstart: %.09f, computed; %.09f", v51, 0x34u);
  }

  os_unfair_lock_unlock(&_MergedGlobals_8);
  result = -[SRSpeechMetrics initWithSessionIdentifier:sessionFlags:timestamp:timeSinceAudioStart:audioLevel:speechRecognition:soundClassification:speechExpression:](self, "initWithSessionIdentifier:sessionFlags:timestamp:timeSinceAudioStart:audioLevel:speechRecognition:soundClassification:speechExpression:", [MEMORY[0x1E696AEC0] stringWithFormat:@"%@;%@", v16, v43], a4, a6, a7, a8, a9, a5, v32);
  v35 = *MEMORY[0x1E69E9840];
  return result;
}

- (SRSpeechMetrics)initWithSessionIdentifier:(id)a3 sessionFlags:(unint64_t)a4 timestamp:(double)a5 timeSinceAudioStart:(double)a6 audioLevel:(id)a7 speechRecognition:(id)a8 soundClassification:(id)a9 speechExpression:(id)a10
{
  v22.receiver = self;
  v22.super_class = SRSpeechMetrics;
  v18 = [(SRSpeechMetrics *)&v22 init];
  if (v18)
  {
    v18->_sessionIdentifier = [a3 copy];
    v18->_sessionFlags = a4;
    [+[SRSensorDescription sensorDescriptionForSensor:](SRSensorDescription sensorDescriptionForSensor:{@"com.apple.SensorKit.speechMetrics.telephony", "roundingInterval"}];
    if (v19 == 0.0)
    {
      v20 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:a5];
    }

    else
    {
      v20 = [MEMORY[0x1E695DF00] sr_dateWithTimeIntervalSinceReferenceDate:a5 roundedDownToNearest:v19];
    }

    v18->_timestamp = v20;
    v18->_timeSinceAudioStart = a6;
    v18->_audioLevel = a7;
    v18->_speechRecognition = a8;
    v18->_soundClassification = a9;
    v18->_speechExpression = a10;
  }

  return v18;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SRSpeechMetrics;
  [(SRSpeechMetrics *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v14) = 1;
    return v14;
  }

  v23 = v10;
  v24 = v9;
  v25 = v6;
  v26 = v5;
  v27 = v4;
  v28 = v3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  LOBYTE(v14) = 0;
  if (!self || (isKindOfClass & 1) == 0)
  {
    return v14;
  }

  if (-[SRSpeechMetrics sessionIdentifier](self, "sessionIdentifier") || [a3 sessionIdentifier])
  {
    v14 = -[NSString isEqual:](-[SRSpeechMetrics sessionIdentifier](self, "sessionIdentifier", v10, v9, v6, v5, v27, v28, v7, v8), "isEqual:", [a3 sessionIdentifier]);
    if (!v14)
    {
      return v14;
    }
  }

  if (-[SRSpeechMetrics timestamp](self, "timestamp", v23, v24, v25, v26, v27, v28) || [a3 timestamp])
  {
    v14 = -[NSDate isEqual:](-[SRSpeechMetrics timestamp](self, "timestamp"), "isEqual:", [a3 timestamp]);
    if (!v14)
    {
      return v14;
    }
  }

  sessionFlags = self->_sessionFlags;
  if (sessionFlags != [a3 sessionFlags])
  {
    LOBYTE(v14) = 0;
    return v14;
  }

  speechRecognition = self->_speechRecognition;
  if (!speechRecognition)
  {
    if (![a3 speechRecognition])
    {
      goto LABEL_15;
    }

    speechRecognition = self->_speechRecognition;
  }

  v14 = -[SFSpeechRecognitionResult isEqual:](speechRecognition, "isEqual:", [a3 speechRecognition]);
  if (!v14)
  {
    return v14;
  }

LABEL_15:
  soundClassification = self->_soundClassification;
  if (!soundClassification)
  {
    if (![a3 soundClassification])
    {
      goto LABEL_19;
    }

    soundClassification = self->_soundClassification;
  }

  v14 = -[SNClassificationResult isEqual:](soundClassification, "isEqual:", [a3 soundClassification]);
  if (!v14)
  {
    return v14;
  }

LABEL_19:
  speechExpression = self->_speechExpression;
  if (speechExpression)
  {
    goto LABEL_22;
  }

  if ([a3 speechExpression])
  {
    speechExpression = self->_speechExpression;
LABEL_22:
    v14 = -[SRSpeechExpression isEqual:](speechExpression, "isEqual:", [a3 speechExpression]);
    if (!v14)
    {
      return v14;
    }
  }

  audioLevel = self->_audioLevel;
  if (!audioLevel)
  {
    if (![a3 audioLevel])
    {
LABEL_27:
      timeSinceAudioStart = self->_timeSinceAudioStart;
      [a3 timeSinceAudioStart];
      LOBYTE(v14) = timeSinceAudioStart == v21;
      return v14;
    }

    audioLevel = self->_audioLevel;
  }

  v14 = -[SRAudioLevel isEqual:](audioLevel, "isEqual:", [a3 audioLevel]);
  if (v14)
  {
    goto LABEL_27;
  }

  return v14;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_sessionIdentifier hash];
  v4 = [(NSDate *)self->_timestamp hash]^ v3;
  v5 = [objc_msgSend(MEMORY[0x1E696AD98] numberWithUnsignedInteger:{self->_sessionFlags), "hash"}];
  v6 = v4 ^ [(SFSpeechRecognitionResult *)self->_speechRecognition hash]^ v5;
  v7 = [(SNClassificationResult *)self->_soundClassification hash];
  v8 = v7 ^ [(SRSpeechExpression *)self->_speechExpression hash];
  v9 = v8 ^ [(SRAudioLevel *)self->_audioLevel hash];
  return v6 ^ v9 ^ [objc_msgSend(MEMORY[0x1E696AD98] numberWithDouble:{self->_timeSinceAudioStart), "hash"}];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"%@ (%p): sessionIdentifier: %@, sessionFlags: %lu, timestamp: %@, timeSinceAudioStart: %f, audioLevel: %@, speechRecognition: %@, soundClassification: %@, speechExpression: %@", NSStringFromClass(v4), self, self->_sessionIdentifier, self->_sessionFlags, self->_timestamp, *&self->_timeSinceAudioStart, self->_audioLevel, self->_speechRecognition, self->_soundClassification, self->_speechExpression];
}

- (void)encodeWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [a3 encodeObject:self->_sessionIdentifier forKey:@"sessionIdentifier"];
  [a3 encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_sessionFlags), @"sessionFlags"}];
  [(NSDate *)self->_timestamp timeIntervalSinceReferenceDate];
  [a3 encodeDouble:@"timestamp" forKey:?];
  [a3 encodeDouble:@"timeSinceAudioStart" forKey:self->_timeSinceAudioStart];
  audioLevel = self->_audioLevel;
  if (audioLevel)
  {
    [a3 encodeObject:audioLevel forKey:@"audioLevel"];
  }

  speechRecognition = self->_speechRecognition;
  if (speechRecognition)
  {
    [a3 encodeObject:speechRecognition forKey:@"speechRecogition"];
  }

  soundClassification = self->_soundClassification;
  if (soundClassification)
  {
    [a3 encodeObject:soundClassification forKey:@"soundClassification"];
  }

  if (self->_speechExpression)
  {

    [a3 encodeObject:? forKey:?];
  }
}

- (SRSpeechMetrics)initWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"sessionIdentifier"];
  v7 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"sessionFlags"];
  [a3 decodeDoubleForKey:@"timestamp"];
  v9 = v8;
  [a3 decodeDoubleForKey:@"timeSinceAudioStart"];
  v11 = v10;
  v12 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"speechRecogition"];
  v13 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"soundClassification"];
  v14 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"speechExpression"];
  v15 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"audioLevel"];
  v16 = [v7 unsignedIntegerValue];

  return [(SRSpeechMetrics *)self initWithSessionIdentifier:v6 sessionFlags:v16 timestamp:v15 timeSinceAudioStart:v12 audioLevel:v13 speechRecognition:v14 soundClassification:v9 speechExpression:v11];
}

- (SRSpeechMetrics)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5
{
  v28 = *MEMORY[0x1E69E9840];
  if (![a3 length])
  {

    v21 = qword_1EE02AB58;
    if (os_log_type_enabled(qword_1EE02AB58, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C914D000, v21, OS_LOG_TYPE_ERROR, "Failed to unarchive data because binary data length is zero", buf, 2u);
    }

    goto LABEL_13;
  }

  v25.receiver = self;
  v25.super_class = SRSpeechMetrics;
  result = [(SRSpeechMetrics *)&v25 init];
  if (result)
  {
    v9 = result;
    v24 = 0;
    v10 = MEMORY[0x1E696ACD0];
    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v10 unarchivedObjectOfClasses:objc_msgSend(v11 fromData:"setWithObjects:" error:{v12, objc_opt_class(), 0), a3, &v24}];
    if (!v13)
    {
      v22 = qword_1EE02AB58;
      if (os_log_type_enabled(qword_1EE02AB58, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v27 = v24;
        _os_log_error_impl(&dword_1C914D000, v22, OS_LOG_TYPE_ERROR, "Failed to unarchive legacy data because %{public}@", buf, 0xCu);
      }

      goto LABEL_12;
    }

    v14 = v13;
    v15 = objc_opt_class();
    if (v15 == objc_opt_class())
    {

      result = v14;
      goto LABEL_14;
    }

    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = qword_1EE02AB58;
    if (v16 != v17)
    {
      if (os_log_type_enabled(qword_1EE02AB58, OS_LOG_TYPE_FAULT))
      {
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        *buf = 138543362;
        v27 = v20;
        _os_log_fault_impl(&dword_1C914D000, v18, OS_LOG_TYPE_FAULT, "Marshalled an object of an unexpected class %{public}@", buf, 0xCu);
      }

LABEL_12:

LABEL_13:
      result = 0;
      goto LABEL_14;
    }

    if (os_log_type_enabled(qword_1EE02AB58, OS_LOG_TYPE_INFO))
    {
      *buf = 138477827;
      v27 = v14;
      _os_log_impl(&dword_1C914D000, v18, OS_LOG_TYPE_INFO, "Found legacy data %{private}@", buf, 0xCu);
    }

    result = [(SRSpeechMetrics *)v9 initWithSessionIdentifier:&stru_1F48BB5C0 sessionFlags:0 timestamp:0 audioLevel:v14 speechRecognition:0 soundClassification:0 speechExpression:SRAbsoluteTimeToCFAbsoluteTime(a5)];
  }

LABEL_14:
  v23 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)binarySampleRepresentation
{
  v10 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v2 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v7];
  v3 = v7;
  if (v7)
  {
    v4 = qword_1EE02AB58;
    if (os_log_type_enabled(qword_1EE02AB58, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v9 = v3;
      _os_log_error_impl(&dword_1C914D000, v4, OS_LOG_TYPE_ERROR, "Failed to archive data because %{public}@", buf, 0xCu);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return v2;
}

@end