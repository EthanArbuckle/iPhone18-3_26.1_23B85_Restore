@interface AVMetricEvent
- (AVMetricEvent)initWithCoder:(id)coder;
- (AVMetricEvent)initWithDate:(id)date mediaTime:(id *)time sessionID:(id)d;
- (id)debugDescriptionForAttr;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AVMetricEvent

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVMetricEvent;
  [(AVMetricEvent *)&v3 dealloc];
}

- (id)debugDescriptionForAttr
{
  date = self->_date;
  *&time.value = *&self->_mediaTime.value;
  sessionID = self->_sessionID;
  time.epoch = self->_mediaTime.epoch;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"sessionID:%@ date:%@ mediaTime:%f", sessionID, date, CMTimeGetSeconds(&time)];
}

- (AVMetricEvent)initWithDate:(id)date mediaTime:(id *)time sessionID:(id)d
{
  v11.receiver = self;
  v11.super_class = AVMetricEvent;
  v8 = [(AVMetricEvent *)&v11 init];
  if (v8)
  {
    v8->_date = date;
    var3 = time->var3;
    *&v8->_mediaTime.value = *&time->var0;
    v8->_mediaTime.epoch = var3;
    v8->_sessionID = d;
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"supports only keyed archivers", v6, v7, v8, v9, v10, mediaTime.value), 0}];
    objc_exception_throw(v13);
  }

  [coder encodeObject:self->_date forKey:@"date"];
  v11 = *MEMORY[0x1E695E480];
  mediaTime = self->_mediaTime;
  v12 = CMTimeCopyAsDictionary(&mediaTime, v11);
  [coder encodeObject:v12 forKey:@"mediaTime"];

  [coder encodeObject:self->_sessionID forKey:@"sessionID"];
}

- (AVMetricEvent)initWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = AVMetricEvent;
  v4 = [(AVMetricEvent *)&v10 init];
  if (v4)
  {
    v4->_date = [coder decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    v5 = objc_opt_class();
    v6 = [coder decodeDictionaryWithKeysOfClass:v5 objectsOfClass:objc_opt_class() forKey:@"mediaTime"];
    CMTimeMakeFromDictionary(&v9, v6);
    epoch = v9.epoch;
    *&v4->_mediaTime.value = *&v9.value;
    v4->_mediaTime.epoch = epoch;
    v4->_sessionID = [coder decodeObjectOfClass:objc_opt_class() forKey:@"sessionID"];
  }

  return v4;
}

@end