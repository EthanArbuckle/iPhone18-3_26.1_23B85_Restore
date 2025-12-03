@interface AXEventData
+ (AXEventData)dataWithBytes:(char *)bytes length:(int64_t)length;
+ (AXEventData)dataWithSender:(int64_t)sender;
+ (AXEventData)dataWithSender:(int64_t)sender page:(int64_t)page usage:(int64_t)usage modifierFlags:(int64_t)flags eventValue1:(float)value1 eventValue2:(float)value2;
- (AXEventData)init;
- (id)description;
@end

@implementation AXEventData

+ (AXEventData)dataWithSender:(int64_t)sender
{
  v4 = objc_alloc_init(AXEventData);
  v4->_storage.eventSenderIdentifier = sender;

  return v4;
}

+ (AXEventData)dataWithSender:(int64_t)sender page:(int64_t)page usage:(int64_t)usage modifierFlags:(int64_t)flags eventValue1:(float)value1 eventValue2:(float)value2
{
  v14 = objc_alloc_init(AXEventData);
  v14->_storage.eventSenderIdentifier = sender;
  v14->_storage.page = page;
  v14->_storage.usage = usage;
  v14->_storage.modifierFlags = flags;
  v14->_storage.eventValue1 = value1;
  v14->_storage.eventValue2 = value2;

  return v14;
}

+ (AXEventData)dataWithBytes:(char *)bytes length:(int64_t)length
{
  if (length == 40)
  {
    if (bytes)
    {
      v5 = objc_alloc_init(AXEventData);
      v6 = *(bytes + 4);
      v7 = *(bytes + 1);
      *&v5->_storage.eventSenderIdentifier = *bytes;
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
      [AXEventData dataWithBytes:length length:v9];
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
  eventSenderIdentifier = [(AXEventData *)self eventSenderIdentifier];
  if (eventSenderIdentifier > 8)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_1E71EC9A0[eventSenderIdentifier];
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