@interface AXEventData
+ (AXEventData)dataWithBytes:(char *)a3 length:(int64_t)a4;
+ (AXEventData)dataWithSender:(int64_t)a3;
+ (AXEventData)dataWithSender:(int64_t)a3 page:(int64_t)a4 usage:(int64_t)a5 modifierFlags:(int64_t)a6 eventValue1:(float)a7 eventValue2:(float)a8;
- (AXEventData)init;
- (id)description;
@end

@implementation AXEventData

+ (AXEventData)dataWithSender:(int64_t)a3
{
  v4 = objc_alloc_init(AXEventData);
  v4->_storage.eventSenderIdentifier = a3;

  return v4;
}

+ (AXEventData)dataWithSender:(int64_t)a3 page:(int64_t)a4 usage:(int64_t)a5 modifierFlags:(int64_t)a6 eventValue1:(float)a7 eventValue2:(float)a8
{
  v14 = objc_alloc_init(AXEventData);
  v14->_storage.eventSenderIdentifier = a3;
  v14->_storage.page = a4;
  v14->_storage.usage = a5;
  v14->_storage.modifierFlags = a6;
  v14->_storage.eventValue1 = a7;
  v14->_storage.eventValue2 = a8;

  return v14;
}

+ (AXEventData)dataWithBytes:(char *)a3 length:(int64_t)a4
{
  if (a4 == 40)
  {
    if (a3)
    {
      v5 = objc_alloc_init(AXEventData);
      v6 = *(a3 + 4);
      v7 = *(a3 + 1);
      *&v5->_storage.eventSenderIdentifier = *a3;
      *&v5->_storage.usage = v7;
      *&v5->_storage.eventValue1 = v6;
      goto LABEL_8;
    }
  }

  else
  {
    v9 = AXLogEventTap();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [AXEventData dataWithBytes:a4 length:v9];
    }
  }

  v5 = 0;
LABEL_8:

  return v5;
}

- (AXEventData)init
{
  v3.receiver = self;
  v3.super_class = AXEventData;
  result = [(AXEventData *)&v3 init];
  if (result)
  {
    result->_storage.eventSenderIdentifier = 0;
  }

  return result;
}

- (id)description
{
  v2 = [(AXEventData *)self eventSenderIdentifier];
  if (v2 > 8)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_1E71EC9A0[v2];
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"AXEventData. Sender:%@", v3];
}

+ (void)dataWithBytes:(uint64_t)a1 length:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithLong:a1];
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = &unk_1EFE96BE0;
  _os_log_error_impl(&dword_18B15E000, a2, OS_LOG_TYPE_ERROR, "Expected length:(%@) to be size of AXEventDataStorage: (%@)", &v4, 0x16u);
}

@end