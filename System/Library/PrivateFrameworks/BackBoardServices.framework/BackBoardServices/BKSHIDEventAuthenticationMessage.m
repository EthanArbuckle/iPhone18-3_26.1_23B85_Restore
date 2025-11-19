@interface BKSHIDEventAuthenticationMessage
+ (BKSHIDEventAuthenticationMessage)new;
+ (id)protobufSchema;
- (BKSHIDEventAuthenticationMessage)init;
- (BKSHIDEventAuthenticationMessage)initWithBSXPCCoder:(id)a3;
- (BKSHIDEventAuthenticationMessage)initWithCoder:(id)a3;
- (BKSHIDEventAuthenticationMessage)initWithXPCDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_calculateSignatureWithHMACContext:(uint64_t)a1;
- (id)_dataProtobufEncoded;
- (id)_init;
- (id)_protobufDecodedMessageFromData:(uint64_t)a1;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithXPCDictionary:(id)a3;
@end

@implementation BKSHIDEventAuthenticationMessage

+ (id)protobufSchema
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__BKSHIDEventAuthenticationMessage_protobufSchema__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (protobufSchema_onceToken_9349 != -1)
  {
    dispatch_once(&protobufSchema_onceToken_9349, block);
  }

  v2 = protobufSchema_schema_9350;

  return v2;
}

uint64_t __50__BKSHIDEventAuthenticationMessage_protobufSchema__block_invoke(uint64_t a1)
{
  protobufSchema_schema_9350 = [MEMORY[0x1E698E750] buildSchemaForClass:*(a1 + 32) builder:&__block_literal_global_9352];

  return MEMORY[0x1EEE66BB8]();
}

void __50__BKSHIDEventAuthenticationMessage_protobufSchema__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 addField:"_signature"];
  [v2 addField:"_hitTestInformationFromStartEvent"];
  [v2 addField:"_hitTestInformationFromEndEvent"];
  [v2 addField:"_originIdentifier"];
  [v2 addField:"_timestamp"];
  [v2 addField:"_context"];
  [v2 addField:"_secureNameStatus"];
  [v2 addField:"_eventType"];
  [v2 addField:"_targetSlotID"];
  [v2 addField:"_targetContextID"];
  [v2 addField:"_versionedPID"];
  [v2 addField:"_registrantEntitled"];
}

- (id)_init
{
  v22 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_class();
    if (v2 != objc_opt_class())
    {
      v3 = objc_opt_class();
      if (v3 != objc_opt_class())
      {
        v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BKSHIDEventAuthenticationMessage cannot be subclassed"];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v6 = NSStringFromSelector(sel__init);
          v7 = objc_opt_class();
          v8 = NSStringFromClass(v7);
          *buf = 138544642;
          v11 = v6;
          v12 = 2114;
          v13 = v8;
          v14 = 2048;
          v15 = v1;
          v16 = 2114;
          v17 = @"BKSHIDEventAuthenticationMessage.m";
          v18 = 1024;
          v19 = 122;
          v20 = 2114;
          v21 = v5;
          _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        [v5 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x1863964C4);
      }
    }

    v9.receiver = v1;
    v9.super_class = BKSHIDEventAuthenticationMessage;
    result = objc_msgSendSuper2(&v9, sel_init);
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

+ (BKSHIDEventAuthenticationMessage)new
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot allocate one of these"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    v14 = a1;
    v15 = 2114;
    v16 = @"BKSHIDEventAuthenticationMessage.m";
    v17 = 1024;
    v18 = 116;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [(BKSHIDEventAuthenticationMessage *)self _dataProtobufEncoded];
  [v4 encodeObject:v5 forKey:@"backboarddSelfData"];
}

- (id)_dataProtobufEncoded
{
  v24 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v11 = 0;
    v2 = [MEMORY[0x1E698E750] encodeObject:a1 error:&v11];
    v3 = v11;
    v4 = [v2 copy];

    if (!v4)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"auth message encode error: %@", v3];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v8 = NSStringFromSelector(sel__dataProtobufEncoded);
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        *buf = 138544642;
        v13 = v8;
        v14 = 2114;
        v15 = v10;
        v16 = 2048;
        v17 = a1;
        v18 = 2114;
        v19 = @"BKSHIDEventAuthenticationMessage.m";
        v20 = 1024;
        v21 = 351;
        v22 = 2114;
        v23 = v7;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v7 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x186396BA4);
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (BKSHIDEventAuthenticationMessage)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"backboarddSelfData"];

  v6 = [(BKSHIDEventAuthenticationMessage *)self _protobufDecodedMessageFromData:v5];

  return v6;
}

- (id)_protobufDecodedMessageFromData:(uint64_t)a1
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3)
    {
      v10 = 0;
      v5 = [MEMORY[0x1E698E750] decodeObjectOfClass:objc_opt_class() fromData:v3 error:&v10];
      v6 = v10;
      if (v5)
      {
LABEL_10:

        goto LABEL_11;
      }

      v7 = BKLogEventDelivery();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v12 = v6;
        _os_log_error_impl(&dword_186345000, v7, OS_LOG_TYPE_ERROR, "auth message protobuf decode failure: %{public}@", buf, 0xCu);
      }
    }

    else
    {
      v6 = BKLogEventDelivery();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_186345000, v6, OS_LOG_TYPE_ERROR, "auth message data decode failure", buf, 2u);
      }
    }

    v5 = 0;
    goto LABEL_10;
  }

  v5 = 0;
LABEL_11:

  v8 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)encodeWithXPCDictionary:(id)a3
{
  v4 = a3;
  v5 = [(BKSHIDEventAuthenticationMessage *)self _dataProtobufEncoded];
  BSSerializeDataToXPCDictionaryWithKey();
}

- (BKSHIDEventAuthenticationMessage)initWithXPCDictionary:(id)a3
{
  v4 = BSDeserializeDataFromXPCDictionaryWithKey();
  v5 = [(BKSHIDEventAuthenticationMessage *)self _protobufDecodedMessageFromData:v4];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BKSHIDEventAuthenticationMessage *)self _dataProtobufEncoded];
  [v4 encodeObject:v5 forKey:@"backboarddSelfData"];
}

- (BKSHIDEventAuthenticationMessage)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"backboarddSelfData"];

  v6 = [(BKSHIDEventAuthenticationMessage *)self _protobufDecodedMessageFromData:v5];

  return v6;
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v18 = a3;
  originIdentifier = self->_originIdentifier;
  if (originIdentifier == 0xC181BADB23D8497BLL)
  {
    v5 = @"originIdentifier (backboardd)";
    v6 = v18;
    originIdentifier = 0xC181BADB23D8497BLL;
  }

  else
  {
    v5 = @"originIdentifier";
    v6 = v18;
  }

  v7 = [v6 appendUInt64:originIdentifier withName:v5 format:1];
  v8 = [v18 appendUInt64:self->_context withName:@"context" format:1];
  versionedPID = self->_versionedPID;
  v10 = NSStringFromBSVersionedPID();
  [v18 appendString:v10 withName:@"pid"];

  v11 = NSStringFromBKSHIDEventSecureNameStatus(self->_secureNameStatus);
  [v18 appendString:v11 withName:@"secureNameStatus"];

  v12 = [v18 appendBool:self->_registrantEntitled withName:@"registrantEntitled"];
  eventType = self->_eventType;
  [v18 appendString:IOHIDEventTypeGetName() withName:@"eventType"];
  v14 = [v18 appendUInt64:self->_targetSlotID withName:@"targetSlotID" format:1];
  v15 = [v18 appendUInt64:self->_targetContextID withName:@"targetContextID" format:1];
  v16 = [v18 appendObject:self->_hitTestInformationFromStartEvent withName:@"hitTestInformationFromStartEvent" skipIfNil:1];
  v17 = [v18 appendObject:self->_hitTestInformationFromEndEvent withName:@"hitTestInformationFromEndEvent" skipIfNil:1];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v9 = (objc_opt_isKindOfClass() & 1) != 0 && self->_eventType == v4[4] && self->_targetSlotID == v4[5] && self->_targetContextID == v4[6] && (hitTestInformationFromStartEvent = self->_hitTestInformationFromStartEvent, v6 = *(v4 + 4), BSEqualObjects()) && (hitTestInformationFromEndEvent = self->_hitTestInformationFromEndEvent, v8 = *(v4 + 5), BSEqualObjects()) && self->_timestamp == *(v4 + 6) && self->_context == *(v4 + 8) && self->_secureNameStatus == *(v4 + 9) && self->_registrantEntitled == *(v4 + 80) && self->_versionedPID == *(v4 + 1) && self->_originIdentifier == *(v4 + 7);

  return v9;
}

- (unint64_t)hash
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_timestamp];
  v3 = [v2 hash];

  return v3;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __47__BKSHIDEventAuthenticationMessage_description__block_invoke;
  v10 = &unk_1E6F47C78;
  v11 = self;
  v12 = v3;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

- (BKSHIDEventAuthenticationMessage)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot allocate one of these"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = self;
    v14 = 2114;
    v15 = @"BKSHIDEventAuthenticationMessage.m";
    v16 = 1024;
    v17 = 111;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
  JUMPOUT(0x1863974ACLL);
}

- (id)_calculateSignatureWithHMACContext:(uint64_t)a1
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = a1;
    CCHmacUpdate(ctx, (a1 + 48), 8uLL);
    CCHmacUpdate(ctx, v3 + 8, 8uLL);
    CCHmacUpdate(ctx, v3 + 2, 4uLL);
    CCHmacUpdate(ctx, v3 + 20, 4uLL);
    CCHmacUpdate(ctx, v3 + 3, 4uLL);
    [v3[4] _updateCCHmacContext:ctx];
    [v3[5] _updateCCHmacContext:ctx];
    CCHmacUpdate(ctx, v3 + 1, 8uLL);
    CCHmacUpdate(ctx, v3 + 9, 8uLL);
    CCHmacUpdate(ctx, v3 + 10, 1uLL);
    CCHmacFinal(ctx, macOut);
    a1 = [MEMORY[0x1E695DEF0] dataWithBytes:macOut length:32];
  }

  v4 = *MEMORY[0x1E69E9840];

  return a1;
}

@end