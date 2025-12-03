@interface AWAttentionAwarenessConfiguration
+ (AWNotification_s)notifySupportedEventsChangedWithQueue:(id)queue block:(id)block;
+ (id)supportedEventsString;
+ (unint64_t)supportedEvents;
+ (void)cancelNotification:(AWNotification_s *)notification;
- (AWAttentionAwarenessConfiguration)init;
- (AWAttentionAwarenessConfiguration)initWithCoder:(id)coder;
- (BOOL)validateWithError:(id *)error;
- (NSDictionary)attentionLostTimeoutDictionary;
- (NSSet)attentionLostTimeouts;
- (id)allowedHIDEventsForRemoteEvent;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setAllowedHIDEventsForRemoteEvent:(id)event;
- (void)setAttentionLostTimeout:(double)timeout;
- (void)setAttentionLostTimeoutDictionary:(id)dictionary;
- (void)setAttentionLostTimeouts:(id)timeouts;
- (void)setEventMask:(unint64_t)mask;
- (void)setIdentifier:(id)identifier;
- (void)setSamplingInterval:(double)interval;
- (void)setTag:(id)tag;
@end

@implementation AWAttentionAwarenessConfiguration

- (AWAttentionAwarenessConfiguration)init
{
  v9.receiver = self;
  v9.super_class = AWAttentionAwarenessConfiguration;
  v2 = [(AWAttentionAwarenessConfiguration *)&v9 init];
  if (v2)
  {
    v3 = MEMORY[0x1E696AEC0];
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    processName = [processInfo processName];
    v6 = [v3 stringWithFormat:@"%@-%d", processName, atomic_fetch_add(init_configCount, 1u)];
    identifier = v2->_identifier;
    v2->_identifier = v6;

    v2->_activateAttentionDetection = 1;
  }

  return v2;
}

- (void)dealloc
{
  if (self->_tag)
  {
    v3 = +[AWAttentionAwarenessClientConfig sharedClientConfig];
    [v3 decrementTagIndexRefCount:self->_tagIndex];
  }

  v4.receiver = self;
  v4.super_class = AWAttentionAwarenessConfiguration;
  [(AWAttentionAwarenessConfiguration *)&v4 dealloc];
}

- (id)description
{
  v55 = *MEMORY[0x1E69E9840];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v3 = self->_attentionLostTimeouts;
  v4 = [(NSSet *)v3 countByEnumeratingWithState:&v50 objects:v54 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v51;
    v8 = 1;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v51 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v50 + 1) + 8 * i);
        if (v8)
        {
          v11 = MEMORY[0x1E696AD60];
          [v10 doubleValue];
          v13 = [v11 stringWithFormat:@"%13.5f", v12];

          v6 = v13;
        }

        else
        {
          [v10 doubleValue];
          [v6 appendFormat:@", %13.5f", v14];
        }

        v8 = 0;
      }

      v5 = [(NSSet *)v3 countByEnumeratingWithState:&v50 objects:v54 count:16];
      v8 = 0;
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v49 = MEMORY[0x1E696AEC0];
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  identifier = self->_identifier;
  v48 = v16;
  samplingInterval = self->_samplingInterval;
  samplingDelay = self->_samplingDelay;
  if (self->_sampleWhileAbsent)
  {
    v19 = "true";
  }

  else
  {
    v19 = "false";
  }

  if (self->_retroactiveTimeoutMode)
  {
    v20 = "true";
  }

  else
  {
    v20 = "false";
  }

  v45 = v20;
  v46 = v19;
  if (self->_pollingFilter)
  {
    v21 = "true";
  }

  else
  {
    v21 = "false";
  }

  if (self->_continuousFaceDetectMode)
  {
    v22 = "true";
  }

  else
  {
    v22 = "false";
  }

  v43 = v22;
  v44 = v21;
  if (self->_activateAttentionDetection)
  {
    v23 = "true";
  }

  else
  {
    v23 = "false";
  }

  if (self->_activateEyeRelief)
  {
    v24 = "true";
  }

  else
  {
    v24 = "false";
  }

  v41 = v24;
  v42 = v23;
  if (self->_activateMotionDetect)
  {
    v25 = "true";
  }

  else
  {
    v25 = "false";
  }

  if (self->_unityStream)
  {
    v26 = "true";
  }

  else
  {
    v26 = "false";
  }

  v39 = v26;
  v40 = v25;
  if (self->_nonSampledAttentionLostTimeoutEnable)
  {
    v27 = "true";
  }

  else
  {
    v27 = "false";
  }

  nonSampledAttentionLostTimeout = self->_nonSampledAttentionLostTimeout;
  v29 = getNotificationMaskDescription(self->_notificationMask);
  v30 = getEventMaskDescription(self->_eventMask);
  v31 = getEventMaskDescription(self->_attentionLostEventMask);
  keyboardDisplayUUIDs = self->_keyboardDisplayUUIDs;
  buttonDisplayUUIDs = self->_buttonDisplayUUIDs;
  digitizerDisplayUUIDs = self->_digitizerDisplayUUIDs;
  v35 = tagDescription(self->_tagIndex, self->_tag);
  v36 = [v49 stringWithFormat:@"<%@: %p> (identifier: %@ samplingInterval: %13.5f, samplingDelay: %13.5f, sampleWhileAbsent: %s, retroactiveTimeoutMode: %s, pollingFilter: %s, continuousFaceDetectMode: %s, activateAttentionDetection: %s, activateEyeRelief: %s, activateMotionDetection: %s, unityStream: %s, attentionLostTimeouts: %@ nonSampledAttentionLostTimeoutEnable: %s nonSampledAttentionLostTimeout: %13.5f notificationMask %@ mask %@ attentionLostEventMask %@ digitizerDisplayUUIDs %@ buttonDisplayUUIDs %@ keyboardDisplayUUIDs %@ %@)", v48, self, identifier, *&samplingInterval, *&samplingDelay, v46, v45, v44, v43, v42, v41, v40, v39, v6, v27, *&nonSampledAttentionLostTimeout, v29, v30, v31, digitizerDisplayUUIDs, buttonDisplayUUIDs, keyboardDisplayUUIDs, v35];

  v37 = *MEMORY[0x1E69E9840];

  return v36;
}

- (NSDictionary)attentionLostTimeoutDictionary
{
  v2 = [(NSDictionary *)self->_attentionLostTimeoutDictionary copy];

  return v2;
}

- (NSSet)attentionLostTimeouts
{
  v2 = [(NSSet *)self->_attentionLostTimeouts copy];

  return v2;
}

- (void)setAllowedHIDEventsForRemoteEvent:(id)event
{
  v4 = [event copy];
  allowedHIDEventsForRemoteEvent = self->_allowedHIDEventsForRemoteEvent;
  self->_allowedHIDEventsForRemoteEvent = v4;

  MEMORY[0x1EEE66BB8](v4, allowedHIDEventsForRemoteEvent);
}

- (id)allowedHIDEventsForRemoteEvent
{
  v2 = [(NSSet *)self->_allowedHIDEventsForRemoteEvent copy];

  return v2;
}

- (void)setAttentionLostTimeoutDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy copy];
  attentionLostTimeoutDictionary = self->_attentionLostTimeoutDictionary;
  self->_attentionLostTimeoutDictionary = v5;

  v7 = MEMORY[0x1E695DFD8];
  allKeys = [dictionaryCopy allKeys];

  v8 = [v7 setWithArray:allKeys];
  attentionLostTimeouts = self->_attentionLostTimeouts;
  self->_attentionLostTimeouts = v8;
}

- (void)setAttentionLostTimeout:(double)timeout
{
  v4 = MEMORY[0x1E695DFD8];
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:timeout];
  v5 = [v4 setWithObject:v6];
  [(AWAttentionAwarenessConfiguration *)self setAttentionLostTimeouts:v5];
}

- (void)setAttentionLostTimeouts:(id)timeouts
{
  v4 = [timeouts copy];
  attentionLostTimeouts = self->_attentionLostTimeouts;
  self->_attentionLostTimeouts = v4;

  attentionLostTimeoutDictionary = self->_attentionLostTimeoutDictionary;
  self->_attentionLostTimeoutDictionary = 0;
}

- (void)setSamplingInterval:(double)interval
{
  self->_samplingInterval = interval;
  if (!self->_samplingDelayExplicitlySet)
  {
    self->_samplingDelay = interval;
  }
}

- (void)setEventMask:(unint64_t)mask
{
  self->_eventMask = mask;
  if (!self->_attentionLostEventMaskExplicitlySet)
  {
    self->_attentionLostEventMask = mask;
  }
}

- (void)setTag:(id)tag
{
  tagCopy = tag;
  v4 = (tagCopy | self->_tag);
  if (v4)
  {
    v5 = +[AWAttentionAwarenessClientConfig sharedClientConfig];
    v6 = v5;
    if (self->_tag)
    {
      [v5 decrementTagIndexRefCount:self->_tagIndex];
    }

    if (tagCopy)
    {
      v7 = [tagCopy copyWithZone:MEMORY[0x1BFB0CAB0]()];
      tag = self->_tag;
      self->_tag = v7;

      v9 = [v6 addTag:self->_tag];
      goto LABEL_9;
    }

    v4 = self->_tag;
  }

  else
  {
    v6 = 0;
  }

  self->_tag = 0;

  v9 = 0;
LABEL_9:
  self->_tagIndex = v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[AWAttentionAwarenessConfiguration allocWithZone:](AWAttentionAwarenessConfiguration init];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  identifier = v5->_identifier;
  v5->_identifier = v6;

  v8 = [(NSCopying *)self->_tag copyWithZone:zone];
  tag = v5->_tag;
  v5->_tag = v8;

  v5->_notificationMask = self->_notificationMask;
  v5->_eventMask = self->_eventMask;
  v5->_attentionLostEventMask = self->_attentionLostEventMask;
  v5->_samplingInterval = self->_samplingInterval;
  v5->_samplingDelay = self->_samplingDelay;
  v5->_sampleWhileAbsent = self->_sampleWhileAbsent;
  v5->_retroactiveTimeoutMode = self->_retroactiveTimeoutMode;
  v5->_pollingFilter = self->_pollingFilter;
  v5->_continuousFaceDetectMode = self->_continuousFaceDetectMode;
  v5->_activateEyeRelief = self->_activateEyeRelief;
  v5->_activateAttentionDetection = self->_activateAttentionDetection;
  v5->_activateMotionDetect = self->_activateMotionDetect;
  v5->_unityStream = self->_unityStream;
  v10 = [(NSSet *)self->_attentionLostTimeouts copyWithZone:zone];
  attentionLostTimeouts = v5->_attentionLostTimeouts;
  v5->_attentionLostTimeouts = v10;

  v12 = [(NSDictionary *)self->_attentionLostTimeoutDictionary copyWithZone:zone];
  attentionLostTimeoutDictionary = v5->_attentionLostTimeoutDictionary;
  v5->_attentionLostTimeoutDictionary = v12;

  v5->_tagIndex = self->_tagIndex;
  v14 = [(NSSet *)self->_allowedHIDEventsForRemoteEvent copyWithZone:zone];
  allowedHIDEventsForRemoteEvent = v5->_allowedHIDEventsForRemoteEvent;
  v5->_allowedHIDEventsForRemoteEvent = v14;

  v16 = [(NSSet *)self->_digitizerDisplayUUIDs copyWithZone:zone];
  digitizerDisplayUUIDs = v5->_digitizerDisplayUUIDs;
  v5->_digitizerDisplayUUIDs = v16;

  v18 = [(NSSet *)self->_keyboardDisplayUUIDs copyWithZone:zone];
  keyboardDisplayUUIDs = v5->_keyboardDisplayUUIDs;
  v5->_keyboardDisplayUUIDs = v18;

  v20 = [(NSSet *)self->_buttonDisplayUUIDs copyWithZone:zone];
  buttonDisplayUUIDs = v5->_buttonDisplayUUIDs;
  v5->_buttonDisplayUUIDs = v20;

  v5->_nonSampledAttentionLostTimeout = self->_nonSampledAttentionLostTimeout;
  v5->_nonSampledAttentionLostTimeoutEnable = self->_nonSampledAttentionLostTimeoutEnable;
  v22 = +[AWAttentionAwarenessClientConfig sharedClientConfig];
  [v22 incrementTagIndexRefCount:self->_tagIndex];

  return v5;
}

- (void)setIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D940];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [v5 raise:v6 format:{@"attempt to set null identifier on %@", v8}];
  }

  identifier = self->_identifier;
  self->_identifier = identifierCopy;
}

- (BOOL)validateWithError:(id *)error
{
  v46 = *MEMORY[0x1E69E9840];
  if (self->_identifier && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (currentLogLevel >= 3)
    {
      v5 = _AALog();
      if (os_log_type_enabled(&v5->super, OS_LOG_TYPE_ERROR))
      {
        v32 = absTimeNS();
        if (v32 == -1)
        {
          v33 = INFINITY;
        }

        else
        {
          v33 = v32 / 1000000000.0;
        }

        *buf = 134217984;
        v45 = v33;
        v34 = "%13.5f: Invalid Config: identifier must be a valid string";
        goto LABEL_69;
      }

LABEL_11:
    }
  }

  else if (self->_samplingInterval >= 0.0 && self->_samplingDelay >= 0.0)
  {
    if (self->_attentionLostTimeouts)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (currentLogLevel < 3)
        {
          goto LABEL_12;
        }

        v5 = _AALog();
        if (!os_log_type_enabled(&v5->super, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_11;
        }

        v15 = absTimeNS();
        if (v15 == -1)
        {
          v16 = INFINITY;
        }

        else
        {
          v16 = v15 / 1000000000.0;
        }

        *buf = 134217984;
        v45 = v16;
        v34 = "%13.5f: Invalid Config: attention lost timeouts must be a set of non-negative values";
        goto LABEL_69;
      }
    }

    if (self->_unityStream && !self->_continuousFaceDetectMode)
    {
      if (currentLogLevel < 3)
      {
        goto LABEL_12;
      }

      v5 = _AALog();
      if (!os_log_type_enabled(&v5->super, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }

      v20 = absTimeNS();
      if (v20 == -1)
      {
        v21 = INFINITY;
      }

      else
      {
        v21 = v20 / 1000000000.0;
      }

      *buf = 134217984;
      v45 = v21;
      v34 = "%13.5f: Invalid Config: Unity stream clients must set the continuousFaceDetectMode flag";
      goto LABEL_69;
    }

    if (self->_activateEyeRelief)
    {
      if (self->_activateMotionDetect)
      {
        if (currentLogLevel < 3)
        {
          goto LABEL_12;
        }

        v5 = _AALog();
        if (!os_log_type_enabled(&v5->super, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_11;
        }

        v13 = absTimeNS();
        if (v13 == -1)
        {
          v14 = INFINITY;
        }

        else
        {
          v14 = v13 / 1000000000.0;
        }

        *buf = 134217984;
        v45 = v14;
        v34 = "%13.5f: Invalid Config: EyeRelief and motion detection cannot be started at the same time";
        goto LABEL_69;
      }

      if (!self->_continuousFaceDetectMode)
      {
        if (currentLogLevel < 3)
        {
          goto LABEL_12;
        }

        v5 = _AALog();
        if (!os_log_type_enabled(&v5->super, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_11;
        }

        v22 = absTimeNS();
        if (v22 == -1)
        {
          v23 = INFINITY;
        }

        else
        {
          v23 = v22 / 1000000000.0;
        }

        *buf = 134217984;
        v45 = v23;
        v34 = "%13.5f: Invalid Config: EyeRelief can only be run in streaming mode";
        goto LABEL_69;
      }
    }

    else
    {
      activateMotionDetect = self->_activateMotionDetect;
      if (self->_continuousFaceDetectMode)
      {
        if (self->_activateMotionDetect)
        {
          if (currentLogLevel < 3)
          {
            goto LABEL_12;
          }

          v5 = _AALog();
          if (!os_log_type_enabled(&v5->super, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_11;
          }

          v18 = absTimeNS();
          if (v18 == -1)
          {
            v19 = INFINITY;
          }

          else
          {
            v19 = v18 / 1000000000.0;
          }

          *buf = 134217984;
          v45 = v19;
          v34 = "%13.5f: Invalid Config: Motion detection cannot be started in streaming mode";
          goto LABEL_69;
        }
      }

      else if (self->_activateMotionDetect)
      {
        self->_activateAttentionDetection = 0;
      }
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v5 = self->_attentionLostTimeouts;
    v24 = [(NSSet *)v5 countByEnumeratingWithState:&v37 objects:v43 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v38;
      v27 = 0.0;
LABEL_49:
      v28 = 0;
      while (1)
      {
        if (*v38 != v26)
        {
          objc_enumerationMutation(v5);
        }

        v29 = *(*(&v37 + 1) + 8 * v28);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_11;
        }

        [v29 doubleValue];
        if (v30 < 0.0)
        {
          goto LABEL_11;
        }

        [v29 doubleValue];
        if (v27 < v31)
        {
          v27 = v31;
        }

        if (v25 == ++v28)
        {
          v25 = [(NSSet *)v5 countByEnumeratingWithState:&v37 objects:v43 count:16];
          if (v25)
          {
            goto LABEL_49;
          }

          goto LABEL_60;
        }
      }
    }

    v27 = 0.0;
LABEL_60:

    if (!self->_nonSampledAttentionLostTimeoutEnable || self->_nonSampledAttentionLostTimeout > v27)
    {
      result = 1;
      goto LABEL_15;
    }

    if (currentLogLevel >= 3)
    {
      v5 = _AALog();
      if (!os_log_type_enabled(&v5->super, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }

      v35 = absTimeNS();
      if (v35 == -1)
      {
        v36 = INFINITY;
      }

      else
      {
        v36 = v35 / 1000000000.0;
      }

      *buf = 134217984;
      v45 = v36;
      v34 = "%13.5f: Invalid Config: nonSampledTimeout lower than attentionLostTimeouts";
      goto LABEL_69;
    }
  }

  else if (currentLogLevel >= 3)
  {
    v5 = _AALog();
    if (os_log_type_enabled(&v5->super, OS_LOG_TYPE_ERROR))
    {
      v6 = absTimeNS();
      if (v6 == -1)
      {
        v7 = INFINITY;
      }

      else
      {
        v7 = v6 / 1000000000.0;
      }

      *buf = 134217984;
      v45 = v7;
      v34 = "%13.5f: Invalid Config: sampling interval and sampling delay must be non-negative";
LABEL_69:
      _os_log_error_impl(&dword_1BB2EF000, &v5->super, OS_LOG_TYPE_ERROR, v34, buf, 0xCu);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

LABEL_12:
  if (error)
  {
    v8 = MEMORY[0x1E696ABC0];
    v9 = *MEMORY[0x1E696A798];
    v41 = *MEMORY[0x1E696A578];
    v42 = @" Invalid config";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    *error = [v8 errorWithDomain:v9 code:22 userInfo:v10];
  }

  result = 0;
LABEL_15:
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

- (AWAttentionAwarenessConfiguration)initWithCoder:(id)coder
{
  v97 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v77 = 0;
  v76.receiver = self;
  v76.super_class = AWAttentionAwarenessConfiguration;
  v5 = [(AWAttentionAwarenessConfiguration *)&v76 init];
  if (!v5)
  {
    goto LABEL_53;
  }

  v6 = decodeString(coderCopy, &v77, @"identifier");
  identifier = v5->_identifier;
  v5->_identifier = v6;

  v5->_tagIndex = decodeUInt64(coderCopy, &v77, @"tagIndex");
  v5->_notificationMask = decodeUInt64(coderCopy, &v77, @"notificationMask");
  v5->_eventMask = decodeUInt64(coderCopy, &v77, @"eventMask");
  v5->_attentionLostEventMask = decodeUInt64(coderCopy, &v77, @"attentionLostEventMask");
  v5->_samplingInterval = decodeDouble(coderCopy, &v77, @"samplingInterval");
  v5->_samplingDelay = decodeDouble(coderCopy, &v77, @"samplingDelay");
  v5->_sampleWhileAbsent = decodeUInt64(coderCopy, &v77, @"sampleWhileAbsent") != 0;
  v5->_retroactiveTimeoutMode = decodeUInt64(coderCopy, &v77, @"retroactiveTimeoutMode") != 0;
  v5->_pollingFilter = decodeUInt64(coderCopy, &v77, @"pollingFilter") != 0;
  v5->_continuousFaceDetectMode = decodeUInt64(coderCopy, &v77, @"continuousFaceDetectMode") != 0;
  v5->_activateEyeRelief = decodeUInt64(coderCopy, &v77, @"activateEyeRelief") != 0;
  v5->_activateAttentionDetection = decodeUInt64(coderCopy, &v77, @"activateAttentionDetection") != 0;
  v5->_activateMotionDetect = decodeUInt64(coderCopy, &v77, @"activateMotionDetect") != 0;
  v5->_unityStream = decodeUInt64(coderCopy, &v77, @"unityStream") != 0;
  v8 = coderCopy;
  v9 = @"attentionLostTimeouts";
  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  v13 = [v8 decodeObjectOfClasses:v12 forKey:@"attentionLostTimeouts"];
  v14 = 0x1EDC16000;
  if (!v13)
  {
    if ([v8 containsValueForKey:@"attentionLostTimeouts"])
    {
      v21 = 0;
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_16:
    if (*(v14 + 2416) >= 3)
    {
      v22 = v14;
      v23 = _AALog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v63 = absTimeNS();
        if (v63 == -1)
        {
          v64 = INFINITY;
        }

        else
        {
          v64 = v63 / 1000000000.0;
        }

        *v94 = 134218242;
        *&v94[4] = v64;
        *&v94[12] = 2112;
        *&v94[14] = @"attentionLostTimeouts";
        _os_log_error_impl(&dword_1BB2EF000, v23, OS_LOG_TYPE_ERROR, "%13.5f: failed to decode %@", v94, 0x16u);
      }

      v14 = v22;
    }

    v21 = 0;
    v77 = 1;
    goto LABEL_20;
  }

  v75 = v12;
  v88 = 0u;
  v89 = 0u;
  v87 = 0u;
  v86 = 0u;
  v15 = v13;
  v16 = [v15 countByEnumeratingWithState:&v86 objects:v90 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v87;
    while (2)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v87 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v86 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {

          v14 = 0x1EDC16000uLL;
          v12 = v75;
          goto LABEL_16;
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v86 objects:v90 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  v21 = v15;
  v14 = 0x1EDC16000;
  v12 = v75;
LABEL_20:

  attentionLostTimeouts = v5->_attentionLostTimeouts;
  v5->_attentionLostTimeouts = v21;

  v25 = objc_opt_class();
  v26 = objc_opt_class();
  v27 = v8;
  v28 = @"allowedHIDEventsForRemoteEvent";
  v29 = MEMORY[0x1E695DFD8];
  v30 = objc_opt_class();
  v31 = [v29 setWithObjects:{v30, objc_opt_class(), v25, v26, 0}];
  v32 = [v27 decodeObjectOfClasses:v31 forKey:@"allowedHIDEventsForRemoteEvent"];
  if (!v32)
  {
    if ([v27 containsValueForKey:@"allowedHIDEventsForRemoteEvent"])
    {
      v48 = 0;
      goto LABEL_48;
    }

    goto LABEL_44;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_44:
    if (*(v14 + 2416) >= 3)
    {
      v49 = _AALog();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        v61 = absTimeNS();
        if (v61 == -1)
        {
          v62 = INFINITY;
        }

        else
        {
          v62 = v61 / 1000000000.0;
        }

        *buf = 134218242;
        v83 = v62;
        v84 = 2112;
        v85 = @"allowedHIDEventsForRemoteEvent";
        _os_log_error_impl(&dword_1BB2EF000, v49, OS_LOG_TYPE_ERROR, "%13.5f: failed to decode %@", buf, 0x16u);
      }
    }

    v48 = 0;
    v77 = 1;
    goto LABEL_48;
  }

  v95 = 0u;
  v96 = 0u;
  memset(v94, 0, sizeof(v94));
  v33 = v32;
  v34 = [v33 countByEnumeratingWithState:v94 objects:v90 count:16];
  if (v34)
  {
    v35 = **&v94[16];
    v74 = v33;
    v69 = **&v94[16];
    while (2)
    {
      v36 = 0;
      v70 = v34;
      do
      {
        if (**&v94[16] != v35)
        {
          v37 = v36;
          objc_enumerationMutation(v33);
          v36 = v37;
        }

        v71 = v36;
        v38 = *(*&v94[8] + 8 * v36);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
LABEL_43:

          goto LABEL_44;
        }

        v39 = v38;
        v78 = 0u;
        v79 = 0u;
        v80 = 0u;
        v81 = 0u;
        v40 = v39;
        v41 = [v40 countByEnumeratingWithState:&v78 objects:&v86 count:16];
        if (v41)
        {
          v42 = v41;
          v43 = *v79;
          v72 = v32;
          v73 = v31;
          while (2)
          {
            for (j = 0; j != v42; ++j)
            {
              if (*v79 != v43)
              {
                objc_enumerationMutation(v40);
              }

              v45 = *(*(&v78 + 1) + 8 * j);
              if (objc_opt_isKindOfClass())
              {
                v46 = [v40 objectForKeyedSubscript:v45];
                isKindOfClass = objc_opt_isKindOfClass();

                if (isKindOfClass)
                {
                  continue;
                }
              }

              v14 = 0x1EDC16000uLL;
              v32 = v72;
              v31 = v73;
              v33 = v74;
              goto LABEL_43;
            }

            v42 = [v40 countByEnumeratingWithState:&v78 objects:&v86 count:16];
            v14 = 0x1EDC16000;
            v32 = v72;
            v31 = v73;
            if (v42)
            {
              continue;
            }

            break;
          }
        }

        v36 = v71 + 1;
        v33 = v74;
        v35 = v69;
      }

      while (v71 + 1 != v70);
      v34 = [v74 countByEnumeratingWithState:v94 objects:v90 count:16];
      if (v34)
      {
        continue;
      }

      break;
    }
  }

  v48 = v33;
LABEL_48:

  allowedHIDEventsForRemoteEvent = v5->_allowedHIDEventsForRemoteEvent;
  v5->_allowedHIDEventsForRemoteEvent = v48;

  v51 = decodeStringSet(v27, &v77, @"digitizerDisplayUUIDs");
  digitizerDisplayUUIDs = v5->_digitizerDisplayUUIDs;
  v5->_digitizerDisplayUUIDs = v51;

  v53 = decodeStringSet(v27, &v77, @"keyboardDisplayUUIDs");
  keyboardDisplayUUIDs = v5->_keyboardDisplayUUIDs;
  v5->_keyboardDisplayUUIDs = v53;

  v55 = decodeStringSet(v27, &v77, @"buttonDisplayUUIDs");
  buttonDisplayUUIDs = v5->_buttonDisplayUUIDs;
  v5->_buttonDisplayUUIDs = v55;

  v5->_nonSampledAttentionLostTimeoutEnable = decodeUInt64(v27, &v77, @"nonSampledAttentionLostTimeoutEnable") != 0;
  v5->_nonSampledAttentionLostTimeout = decodeDouble(v27, &v77, @"nonSampledAttentionLostTimeout");
  if ((v77 & 1) == 0)
  {
LABEL_53:
    v58 = v5;
    goto LABEL_54;
  }

  if (*(v14 + 2416) >= 3)
  {
    v57 = _AALog();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      v65 = absTimeNS();
      if (v65 == -1)
      {
        v66 = INFINITY;
      }

      else
      {
        v66 = v65 / 1000000000.0;
      }

      v67 = objc_opt_class();
      v68 = NSStringFromClass(v67);
      *v90 = 134218242;
      v91 = v66;
      v92 = 2112;
      v93 = v68;
      _os_log_error_impl(&dword_1BB2EF000, v57, OS_LOG_TYPE_ERROR, "%13.5f: failed to decode %@", v90, 0x16u);
    }
  }

  v58 = 0;
LABEL_54:

  v59 = *MEMORY[0x1E69E9840];
  return v58;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_tagIndex];
  [coderCopy encodeObject:v5 forKey:@"tagIndex"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_notificationMask];
  [coderCopy encodeObject:v6 forKey:@"notificationMask"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_eventMask];
  [coderCopy encodeObject:v7 forKey:@"eventMask"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_attentionLostEventMask];
  [coderCopy encodeObject:v8 forKey:@"attentionLostEventMask"];

  [coderCopy encodeDouble:@"samplingInterval" forKey:self->_samplingInterval];
  [coderCopy encodeDouble:@"samplingDelay" forKey:self->_samplingDelay];
  [coderCopy encodeBool:self->_sampleWhileAbsent forKey:@"sampleWhileAbsent"];
  [coderCopy encodeBool:self->_retroactiveTimeoutMode forKey:@"retroactiveTimeoutMode"];
  [coderCopy encodeBool:self->_pollingFilter forKey:@"pollingFilter"];
  [coderCopy encodeBool:self->_continuousFaceDetectMode forKey:@"continuousFaceDetectMode"];
  [coderCopy encodeBool:self->_activateEyeRelief forKey:@"activateEyeRelief"];
  [coderCopy encodeBool:self->_activateAttentionDetection forKey:@"activateAttentionDetection"];
  [coderCopy encodeBool:self->_activateMotionDetect forKey:@"activateMotionDetect"];
  [coderCopy encodeBool:self->_unityStream forKey:@"unityStream"];
  [coderCopy encodeObject:self->_attentionLostTimeouts forKey:@"attentionLostTimeouts"];
  [coderCopy encodeObject:self->_allowedHIDEventsForRemoteEvent forKey:@"allowedHIDEventsForRemoteEvent"];
  [coderCopy encodeObject:self->_digitizerDisplayUUIDs forKey:@"digitizerDisplayUUIDs"];
  [coderCopy encodeObject:self->_keyboardDisplayUUIDs forKey:@"keyboardDisplayUUIDs"];
  [coderCopy encodeObject:self->_buttonDisplayUUIDs forKey:@"buttonDisplayUUIDs"];
  [coderCopy encodeDouble:@"nonSampledAttentionLostTimeout" forKey:self->_nonSampledAttentionLostTimeout];
  LOBYTE(v9) = self->_nonSampledAttentionLostTimeoutEnable;
  [coderCopy encodeDouble:@"nonSampledAttentionLostTimeoutEnable" forKey:v9];
}

+ (void)cancelNotification:(AWNotification_s *)notification
{
  v4 = +[AWAttentionAwarenessClientConfig sharedClientConfig];
  [v4 cancelNotification:notification];
}

+ (AWNotification_s)notifySupportedEventsChangedWithQueue:(id)queue block:(id)block
{
  blockCopy = block;
  queueCopy = queue;
  v7 = +[AWAttentionAwarenessClientConfig sharedClientConfig];
  v8 = [v7 notifySupportedEventsChangedWithQueue:queueCopy block:blockCopy];

  return v8;
}

+ (id)supportedEventsString
{
  supportedEvents = [self supportedEvents];

  return getEventMaskDescription(supportedEvents);
}

+ (unint64_t)supportedEvents
{
  v2 = +[AWAttentionAwarenessClientConfig sharedClientConfig];
  supportedEvents = [v2 supportedEvents];

  return supportedEvents;
}

@end