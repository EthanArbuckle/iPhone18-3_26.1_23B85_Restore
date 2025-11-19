@interface AWAttentionEvent
- (AWAttentionEvent)initWithCoder:(id)a3;
- (AWAttentionEvent)initWithTimestamp:(double)a3 tagIndex:(unint64_t)a4 eventMask:(unint64_t)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)updateWithConfig:(id)a3;
- (void)validateMask;
@end

@implementation AWAttentionEvent

- (void)updateWithConfig:(id)a3
{
  v6 = +[AWAttentionAwarenessClientConfig sharedClientConfig];
  v4 = [v6 tagForIndex:self->_tagIndex];
  tag = self->_tag;
  self->_tag = v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  timestamp = self->_timestamp;
  v7 = getEventMaskDescription(self->_eventMask);
  v8 = tagDescription(self->_tagIndex, self->_tag);
  v9 = [v3 stringWithFormat:@"<%@: %p> (timestamp: %13.5f mask %@ %@)", v5, self, *&timestamp, v7, v8];

  return v9;
}

- (AWAttentionEvent)initWithTimestamp:(double)a3 tagIndex:(unint64_t)a4 eventMask:(unint64_t)a5
{
  v11.receiver = self;
  v11.super_class = AWAttentionEvent;
  v8 = [(AWAttentionEvent *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_timestamp = a3;
    v8->_tagIndex = a4;
    v8->_eventMask = a5;
    [(AWAttentionEvent *)v8 validateMask];
  }

  return v9;
}

- (void)validateMask
{
  eventMask = self->_eventMask;
  v3 = eventMask == 32 || eventMask == 1;
  if (v3 || eventMask == 128)
  {
    __assert_rtn("[AWAttentionEvent validateMask]", "SimpleFrameworkTypes.m", 726, "_eventMask != AWAttentionEventMaskAttentionLost && _eventMask != AWAttentionEventMaskFaceDetect && _eventMask != AWAttentionEventMaskRemote");
  }
}

- (AWAttentionEvent)initWithCoder:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15 = 0;
  v14.receiver = self;
  v14.super_class = AWAttentionEvent;
  v5 = [(AWAttentionEvent *)&v14 init];
  if (v5 && ((v5->_eventMask = decodeUInt64(v4, &v15, @"eventMask"), v5->_timestamp = decodeDouble(v4, &v15, @"timestamp"), v5->_tagIndex = decodeUInt64(v4, &v15, @"tagIndex"), v5->_eventMask == 1) || (v15 & 1) != 0))
  {
    if (currentLogLevel >= 3)
    {
      v6 = _AALog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v10 = absTimeNS();
        if (v10 == -1)
        {
          v11 = INFINITY;
        }

        else
        {
          v11 = v10 / 1000000000.0;
        }

        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        *buf = 134218242;
        v17 = v11;
        v18 = 2112;
        v19 = v13;
        _os_log_error_impl(&dword_1BB2EF000, v6, OS_LOG_TYPE_ERROR, "%13.5f: failed to decode %@", buf, 0x16u);
      }
    }

    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  eventMask = self->_eventMask;
  v6 = a3;
  v7 = [v4 numberWithUnsignedLongLong:eventMask];
  [v6 encodeObject:v7 forKey:@"eventMask"];

  [v6 encodeDouble:@"timestamp" forKey:self->_timestamp];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_tagIndex];
  [v6 encodeObject:v8 forKey:@"tagIndex"];
}

@end