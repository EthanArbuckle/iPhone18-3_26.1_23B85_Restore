@interface AWDigitizerButtonKeyboardAttentionEvent
- (AWDigitizerButtonKeyboardAttentionEvent)initWithCoder:(id)a3;
- (AWDigitizerButtonKeyboardAttentionEvent)initWithTimestamp:(double)a3 tagIndex:(unint64_t)a4 eventMask:(unint64_t)a5 digitizerButtonKeyboardMetadata:(AWDigitizerButtonKeyboardMetadata *)a6;
- (id)description;
- (void)encodeWithCoder:(id)a3;
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
  v10 = [(AWAttentionEvent *)self tagIndex];
  v11 = [(AWAttentionEvent *)self tag];
  v12 = tagDescription(v10, v11);
  v13 = [v3 stringWithFormat:@"<%@: %p> (timestamp: %13.5f sender %llu displayUUID %@ %@)", v5, self, v7, senderID, displayUUID, v12];

  return v13;
}

- (AWDigitizerButtonKeyboardAttentionEvent)initWithTimestamp:(double)a3 tagIndex:(unint64_t)a4 eventMask:(unint64_t)a5 digitizerButtonKeyboardMetadata:(AWDigitizerButtonKeyboardMetadata *)a6
{
  v11.receiver = self;
  v11.super_class = AWDigitizerButtonKeyboardAttentionEvent;
  v7 = [(AWAttentionEvent *)&v11 initWithTimestamp:a4 tagIndex:a5 eventMask:a3];
  v8 = v7;
  if (a6 && v7)
  {
    var1 = a6->var1;
    v7->_senderID = a6->var0;
    objc_storeStrong(&v7->_displayUUID, var1);
  }

  return v8;
}

- (AWDigitizerButtonKeyboardAttentionEvent)initWithCoder:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v4 = a3;
  v5 = decodeDouble(v4, &v18, @"timestamp");
  v6 = decodeUInt64(v4, &v18, @"senderID");
  v7 = decodeString(v4, &v18, @"displayUUID");
  v8 = decodeUInt64(v4, &v18, @"tagIndex");
  v9 = decodeUInt64(v4, &v18, @"eventMask");

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

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  v6 = [v4 numberWithUnsignedLongLong:{-[AWAttentionEvent eventMask](self, "eventMask")}];
  [v5 encodeObject:v6 forKey:@"eventMask"];

  [(AWAttentionEvent *)self timestamp];
  [v5 encodeDouble:@"timestamp" forKey:?];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_senderID];
  [v5 encodeObject:v7 forKey:@"senderID"];

  [v5 encodeObject:self->_displayUUID forKey:@"displayUUID"];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[AWAttentionEvent tagIndex](self, "tagIndex")}];
  [v5 encodeObject:v8 forKey:@"tagIndex"];
}

@end