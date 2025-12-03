@interface AWAttentionEvent
- (AWAttentionEvent)initWithCoder:(id)coder;
- (AWAttentionEvent)initWithTimestamp:(double)timestamp tagIndex:(unint64_t)index eventMask:(unint64_t)mask;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)updateWithConfig:(id)config;
- (void)validateMask;
@end

@implementation AWAttentionEvent

- (void)updateWithConfig:(id)config
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

- (AWAttentionEvent)initWithTimestamp:(double)timestamp tagIndex:(unint64_t)index eventMask:(unint64_t)mask
{
  v11.receiver = self;
  v11.super_class = AWAttentionEvent;
  v8 = [(AWAttentionEvent *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_timestamp = timestamp;
    v8->_tagIndex = index;
    v8->_eventMask = mask;
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

- (AWAttentionEvent)initWithCoder:(id)coder
{
  v20 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v15 = 0;
  v14.receiver = self;
  v14.super_class = AWAttentionEvent;
  v5 = [(AWAttentionEvent *)&v14 init];
  if (v5 && ((v5->_eventMask = decodeUInt64(coderCopy, &v15, @"eventMask"), v5->_timestamp = decodeDouble(coderCopy, &v15, @"timestamp"), v5->_tagIndex = decodeUInt64(coderCopy, &v15, @"tagIndex"), v5->_eventMask == 1) || (v15 & 1) != 0))
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

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  eventMask = self->_eventMask;
  coderCopy = coder;
  v7 = [v4 numberWithUnsignedLongLong:eventMask];
  [coderCopy encodeObject:v7 forKey:@"eventMask"];

  [coderCopy encodeDouble:@"timestamp" forKey:self->_timestamp];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_tagIndex];
  [coderCopy encodeObject:v8 forKey:@"tagIndex"];
}

@end