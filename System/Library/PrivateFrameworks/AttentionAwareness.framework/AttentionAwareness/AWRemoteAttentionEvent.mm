@interface AWRemoteAttentionEvent
- (AWRemoteAttentionEvent)initWithCoder:(id)coder;
- (AWRemoteAttentionEvent)initWithTimestamp:(double)timestamp tagIndex:(unint64_t)index remoteMetadata:(AWRemoteMetadata *)metadata;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)validateMask;
@end

@implementation AWRemoteAttentionEvent

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [(AWAttentionEvent *)self timestamp];
  v7 = v6;
  usagePage = self->_usagePage;
  usage = self->_usage;
  senderID = self->_senderID;
  buttonPressed = self->_buttonPressed;
  tagIndex = [(AWAttentionEvent *)self tagIndex];
  v13 = [(AWAttentionEvent *)self tag];
  v14 = tagDescription(tagIndex, v13);
  v15 = [v3 stringWithFormat:@"<%@: %p> (timestamp: %13.5f usagePage %ld usage %ld senderID: %llu buttonPressed: %d %@)", v5, self, v7, usagePage, usage, senderID, buttonPressed, v14];

  return v15;
}

- (AWRemoteAttentionEvent)initWithTimestamp:(double)timestamp tagIndex:(unint64_t)index remoteMetadata:(AWRemoteMetadata *)metadata
{
  v8.receiver = self;
  v8.super_class = AWRemoteAttentionEvent;
  result = [(AWAttentionEvent *)&v8 initWithTimestamp:index tagIndex:32 eventMask:timestamp];
  if (metadata)
  {
    if (result)
    {
      result->_usagePage = metadata->var0;
      var2 = metadata->var2;
      result->_usage = metadata->var1;
      result->_senderID = var2;
      result->_buttonPressed = metadata->var3;
    }
  }

  return result;
}

- (void)validateMask
{
  if ([(AWAttentionEvent *)self eventMask]!= 32)
  {
    __assert_rtn("[AWRemoteAttentionEvent validateMask]", "SimpleFrameworkTypes.m", 1059, "self.eventMask == AWAttentionEventMaskRemote");
  }
}

- (AWRemoteAttentionEvent)initWithCoder:(id)coder
{
  v22 = *MEMORY[0x1E69E9840];
  v19 = 0;
  coderCopy = coder;
  v5 = decodeDouble(coderCopy, &v19, @"timestamp");
  v6 = decodeUInt64(coderCopy, &v19, @"usagePage");
  v7 = decodeUInt64(coderCopy, &v19, @"usage");
  v8 = decodeUInt64(coderCopy, &v19, @"senderID");
  v9 = decodeUInt64(coderCopy, &v19, @"buttonPressed");
  v10 = decodeUInt64(coderCopy, &v19, @"tagIndex");

  if (v19 == 1)
  {
    if (currentLogLevel >= 3)
    {
      v11 = _AALog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v15 = absTimeNS();
        if (v15 == -1)
        {
          v16 = INFINITY;
        }

        else
        {
          v16 = v15 / 1000000000.0;
        }

        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        *buf = 134218242;
        *&buf[4] = v16;
        *&buf[12] = 2112;
        *&buf[14] = v18;
        _os_log_error_impl(&dword_1BB2EF000, v11, OS_LOG_TYPE_ERROR, "%13.5f: failed to decode %@", buf, 0x16u);
      }
    }

    v12 = 0;
  }

  else
  {
    *buf = v6;
    *&buf[8] = v7;
    *&buf[16] = v8;
    v21 = v9 != 0;
    v12 = [[AWRemoteAttentionEvent alloc] initWithTimestamp:v10 tagIndex:buf remoteMetadata:v5];
  }

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(AWAttentionEvent *)self timestamp];
  [coderCopy encodeDouble:@"timestamp" forKey:?];
  v5 = [MEMORY[0x1E696AD98] numberWithLong:self->_usagePage];
  [coderCopy encodeObject:v5 forKey:@"usagePage"];

  v6 = [MEMORY[0x1E696AD98] numberWithLong:self->_usage];
  [coderCopy encodeObject:v6 forKey:@"usage"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_senderID];
  [coderCopy encodeObject:v7 forKey:@"senderID"];

  [coderCopy encodeBool:self->_buttonPressed forKey:@"buttonPressed"];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[AWAttentionEvent tagIndex](self, "tagIndex")}];
  [coderCopy encodeObject:v8 forKey:@"tagIndex"];
}

@end