@interface AWAttentionLostEvent
- (AWAttentionLostEvent)initWithCoder:(id)coder;
- (AWAttentionLostEvent)initWithTimestamp:(double)timestamp tagIndex:(unint64_t)index attentionLostTimeout:(double)timeout;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)updateWithConfig:(id)config;
- (void)validateMask;
@end

@implementation AWAttentionLostEvent

- (void)validateMask
{
  if ([(AWAttentionEvent *)self eventMask]!= 1)
  {
    __assert_rtn("[AWAttentionLostEvent validateMask]", "SimpleFrameworkTypes.m", 799, "self.eventMask == AWAttentionEventMaskAttentionLost");
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [(AWAttentionEvent *)self timestamp];
  v7 = v6;
  attentionLostTimeout = self->_attentionLostTimeout;
  tagIndex = [(AWAttentionEvent *)self tagIndex];
  v10 = [(AWAttentionEvent *)self tag];
  v11 = tagDescription(tagIndex, v10);
  v12 = [v3 stringWithFormat:@"<%@: %p> (timestamp: %13.5f attentionLostTimeout %13.5f %@)", v5, self, v7, *&attentionLostTimeout, v11];

  return v12;
}

- (void)updateWithConfig:(id)config
{
  v9.receiver = self;
  v9.super_class = AWAttentionLostEvent;
  configCopy = config;
  [(AWAttentionEvent *)&v9 updateWithConfig:configCopy];
  attentionLostTimeoutDictionary = [configCopy attentionLostTimeoutDictionary];

  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_attentionLostTimeout];
  v7 = [attentionLostTimeoutDictionary objectForKeyedSubscript:v6];
  associatedObject = self->_associatedObject;
  self->_associatedObject = v7;
}

- (AWAttentionLostEvent)initWithTimestamp:(double)timestamp tagIndex:(unint64_t)index attentionLostTimeout:(double)timeout
{
  v7.receiver = self;
  v7.super_class = AWAttentionLostEvent;
  result = [(AWAttentionEvent *)&v7 initWithTimestamp:index tagIndex:1 eventMask:timestamp];
  if (result)
  {
    result->_attentionLostTimeout = timeout;
  }

  return result;
}

- (AWAttentionLostEvent)initWithCoder:(id)coder
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0;
  coderCopy = coder;
  v5 = decodeDouble(coderCopy, &v16, @"timestamp");
  v6 = decodeDouble(coderCopy, &v16, @"attentionLostTimeout");
  v7 = decodeUInt64(coderCopy, &v16, @"tagIndex");

  if (v16 == 1)
  {
    if (currentLogLevel >= 3)
    {
      v8 = _AALog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v12 = absTimeNS();
        if (v12 == -1)
        {
          v13 = INFINITY;
        }

        else
        {
          v13 = v12 / 1000000000.0;
        }

        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        *buf = 134218242;
        v18 = v13;
        v19 = 2112;
        v20 = v15;
        _os_log_error_impl(&dword_1BB2EF000, v8, OS_LOG_TYPE_ERROR, "%13.5f: failed to decode %@", buf, 0x16u);
      }
    }

    v9 = 0;
  }

  else
  {
    v9 = [[AWAttentionLostEvent alloc] initWithTimestamp:v7 tagIndex:v5 attentionLostTimeout:v6];
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(AWAttentionEvent *)self timestamp];
  [coderCopy encodeDouble:@"timestamp" forKey:?];
  [coderCopy encodeDouble:@"attentionLostTimeout" forKey:self->_attentionLostTimeout];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[AWAttentionEvent tagIndex](self, "tagIndex")}];
  [coderCopy encodeObject:v5 forKey:@"tagIndex"];
}

@end