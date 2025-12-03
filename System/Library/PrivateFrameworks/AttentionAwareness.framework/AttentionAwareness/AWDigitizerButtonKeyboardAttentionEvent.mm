@interface AWDigitizerButtonKeyboardAttentionEvent
- (AWDigitizerButtonKeyboardAttentionEvent)initWithCoder:(id)coder;
- (AWDigitizerButtonKeyboardAttentionEvent)initWithTimestamp:(double)timestamp tagIndex:(unint64_t)index eventMask:(unint64_t)mask digitizerButtonKeyboardMetadata:(AWDigitizerButtonKeyboardMetadata *)metadata;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)validateMask;
@end

@implementation AWDigitizerButtonKeyboardAttentionEvent

- (void)validateMask
{
  if ([(AWAttentionEvent *)self eventMask]!= 8 && [(AWAttentionEvent *)self eventMask]!= 2 && [(AWAttentionEvent *)self eventMask]!= 4)
  {
    __assert_rtn("[AWDigitizerButtonKeyboardAttentionEvent validateMask]", "SimpleFrameworkTypes.m", 1306, "self.eventMask == AWAttentionEventMaskDigitizer || self.eventMask == AWAttentionEventMaskButton || self.eventMask == AWAttentionEventMaskKeyboard");
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [(AWAttentionEvent *)self timestamp];
  v7 = v6;
  senderID = self->_senderID;
  displayUUID = self->_displayUUID;
  tagIndex = [(AWAttentionEvent *)self tagIndex];
  v11 = [(AWAttentionEvent *)self tag];
  v12 = tagDescription(tagIndex, v11);
  v13 = [v3 stringWithFormat:@"<%@: %p> (timestamp: %13.5f sender %llu displayUUID %@ %@)", v5, self, v7, senderID, displayUUID, v12];

  return v13;
}

- (AWDigitizerButtonKeyboardAttentionEvent)initWithTimestamp:(double)timestamp tagIndex:(unint64_t)index eventMask:(unint64_t)mask digitizerButtonKeyboardMetadata:(AWDigitizerButtonKeyboardMetadata *)metadata
{
  v11.receiver = self;
  v11.super_class = AWDigitizerButtonKeyboardAttentionEvent;
  v7 = [(AWAttentionEvent *)&v11 initWithTimestamp:index tagIndex:mask eventMask:timestamp];
  v8 = v7;
  if (metadata && v7)
  {
    var1 = metadata->var1;
    v7->_senderID = metadata->var0;
    objc_storeStrong(&v7->_displayUUID, var1);
  }

  return v8;
}

- (AWDigitizerButtonKeyboardAttentionEvent)initWithCoder:(id)coder
{
  v20 = *MEMORY[0x1E69E9840];
  v18 = 0;
  coderCopy = coder;
  v5 = decodeDouble(coderCopy, &v18, @"timestamp");
  v6 = decodeUInt64(coderCopy, &v18, @"senderID");
  v7 = decodeString(coderCopy, &v18, @"displayUUID");
  v8 = decodeUInt64(coderCopy, &v18, @"tagIndex");
  v9 = decodeUInt64(coderCopy, &v18, @"eventMask");

  if (v18 == 1)
  {
    if (currentLogLevel >= 3)
    {
      v10 = _AALog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v14 = absTimeNS();
        if (v14 == -1)
        {
          v15 = INFINITY;
        }

        else
        {
          v15 = v14 / 1000000000.0;
        }

        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        *buf = 134218242;
        *&buf[4] = v15;
        *&buf[12] = 2112;
        *&buf[14] = v17;
        _os_log_error_impl(&dword_1BB2EF000, v10, OS_LOG_TYPE_ERROR, "%13.5f: failed to decode %@", buf, 0x16u);
      }
    }

    v11 = 0;
  }

  else
  {
    *buf = v6;
    *&buf[8] = v7;
    v11 = [[AWDigitizerButtonKeyboardAttentionEvent alloc] initWithTimestamp:v8 tagIndex:v9 eventMask:buf digitizerButtonKeyboardMetadata:v5];
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  coderCopy = coder;
  v6 = [v4 numberWithUnsignedLongLong:{-[AWAttentionEvent eventMask](self, "eventMask")}];
  [coderCopy encodeObject:v6 forKey:@"eventMask"];

  [(AWAttentionEvent *)self timestamp];
  [coderCopy encodeDouble:@"timestamp" forKey:?];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_senderID];
  [coderCopy encodeObject:v7 forKey:@"senderID"];

  [coderCopy encodeObject:self->_displayUUID forKey:@"displayUUID"];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[AWAttentionEvent tagIndex](self, "tagIndex")}];
  [coderCopy encodeObject:v8 forKey:@"tagIndex"];
}

@end