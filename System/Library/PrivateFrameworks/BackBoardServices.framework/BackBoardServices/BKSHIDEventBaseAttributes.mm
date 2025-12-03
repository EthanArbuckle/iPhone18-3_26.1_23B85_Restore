@interface BKSHIDEventBaseAttributes
+ (Class)_classForAttributeType:(unsigned __int8)type;
+ (id)baseAttributesFromProvider:(id)provider;
+ (id)deserializeFromBytes:(const char *)bytes byteCount:(int64_t)count;
+ (id)protobufSchema;
- (BKSHIDEventDeferringChangeBasis)changeBasis;
- (BKSHIDEventProvenance)provenance;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)serializedData;
- (id)succinctDescription;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)setProvenance:(id)provenance;
@end

@implementation BKSHIDEventBaseAttributes

+ (id)protobufSchema
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__BKSHIDEventBaseAttributes_protobufSchema__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (protobufSchema_onceToken_184 != -1)
  {
    dispatch_once(&protobufSchema_onceToken_184, block);
  }

  v2 = protobufSchema_schema_183;

  return v2;
}

void __43__BKSHIDEventBaseAttributes_protobufSchema__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 addField:"_simpleProvenance"];
  [v2 addField:"_authenticationMessage"];
  [v2 addField:"_environment"];
  [v2 addField:"_display"];
  [v2 addField:"_token"];
  [v2 addField:"_source"];
  [v2 addField:"_options"];
}

uint64_t __43__BKSHIDEventBaseAttributes_protobufSchema__block_invoke(uint64_t a1)
{
  protobufSchema_schema_183 = [MEMORY[0x1E698E750] buildSchemaForClass:*(a1 + 32) builder:&__block_literal_global_186];

  return MEMORY[0x1EEE66BB8]();
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  authenticationMessage = self->_authenticationMessage;
  v17 = formatterCopy;
  if (authenticationMessage)
  {
    v6 = [formatterCopy appendObject:authenticationMessage withName:@"authenticationMessage"];
    formatterCopy = v17;
  }

  simpleProvenance = self->_simpleProvenance;
  if (simpleProvenance)
  {
    v8 = [v17 appendObject:simpleProvenance withName:@"simpleProvenance"];
    formatterCopy = v17;
  }

  v9 = [formatterCopy appendObject:self->_environment withName:@"environment"];
  display = self->_display;
  if (display)
  {
    v11 = [v17 appendObject:display withName:@"display"];
  }

  token = self->_token;
  if (token)
  {
    v13 = [v17 appendObject:token withName:@"token"];
  }

  v14 = NSStringFromBKSHIDEventSource(self->_source);
  v15 = [v17 appendObject:v14 withName:@"source"];

  v16 = NSStringFromBKSHIDEventAttributeOptions(self->_options);
  [v17 appendString:v16 withName:@"options"];
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(BKSHIDEventBaseAttributes *)self succinctDescriptionBuilder];
  [(BKSHIDEventBaseAttributes *)self appendDescriptionToFormatter:succinctDescriptionBuilder];

  return succinctDescriptionBuilder;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(BKSHIDEventBaseAttributes *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(BKSHIDEventBaseAttributes *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    authenticationMessage = self->_authenticationMessage;
    v7 = v5[3];
    if (!BSEqualObjects())
    {
      goto LABEL_10;
    }

    simpleProvenance = self->_simpleProvenance;
    v9 = v5[1];
    if (!BSEqualObjects())
    {
      goto LABEL_10;
    }

    environment = self->_environment;
    v11 = v5[4];
    if (BSEqualObjects() && (display = self->_display, v13 = v5[5], BSEqualObjects()) && (token = self->_token, v15 = v5[6], BSEqualObjects()) && self->_source == *(v5 + 5))
    {
      v16 = self->_options == *(v5 + 8);
    }

    else
    {
LABEL_10:
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  objc_storeStrong((v4 + 24), self->_authenticationMessage);
  objc_storeStrong((v4 + 8), self->_simpleProvenance);
  objc_storeStrong((v4 + 32), self->_environment);
  objc_storeStrong((v4 + 40), self->_display);
  objc_storeStrong((v4 + 48), self->_token);
  *(v4 + 20) = self->_source;
  *(v4 + 16) = self->_options;
  return v4;
}

- (id)serializedData
{
  v10 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v2 = [MEMORY[0x1E698E750] encodeObject:self error:&v8];
  v3 = v8;
  if (v2)
  {
    v4 = [v2 mutableCopy];
    *buf = 0;
    buf[0] = [objc_opt_class() _eventAttributeType];
    *&buf[4] = [v2 length];
    [v4 replaceBytesInRange:0 withBytes:0 length:{buf, 8}];
  }

  else
  {
    v5 = BKLogEventDelivery();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      *&buf[4] = v3;
      _os_log_error_impl(&dword_186345000, v5, OS_LOG_TYPE_ERROR, "could not encode attribute data:%{public}@", buf, 0xCu);
    }

    v4 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)setProvenance:(id)provenance
{
  v28 = *MEMORY[0x1E69E9840];
  provenanceCopy = provenance;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    authenticationMessage = self->_authenticationMessage;
    self->_authenticationMessage = 0;

    v7 = provenanceCopy;
    simpleProvenance = self->_simpleProvenance;
    self->_simpleProvenance = v7;
LABEL_8:

    v10 = *MEMORY[0x1E69E9840];

    return;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_authenticationMessage, provenance);
LABEL_7:
    simpleProvenance = self->_simpleProvenance;
    self->_simpleProvenance = 0;
    goto LABEL_8;
  }

  if (!provenanceCopy)
  {
    v9 = self->_authenticationMessage;
    self->_authenticationMessage = 0;

    goto LABEL_7;
  }

  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"setProvenance doesn't know what to do with %@", objc_opt_class()];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v12 = NSStringFromSelector(a2);
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    *buf = 138544642;
    v17 = v12;
    v18 = 2114;
    v19 = v14;
    v20 = 2048;
    selfCopy = self;
    v22 = 2114;
    v23 = @"BKSHIDEventAttributes.m";
    v24 = 1024;
    v25 = 309;
    v26 = 2114;
    v27 = v11;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v11 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (BKSHIDEventDeferringChangeBasis)changeBasis
{
  v3 = [BKSHIDEventDeferringChangeBasis alloc];
  provenance = [(BKSHIDEventBaseAttributes *)self provenance];
  v5 = [(BKSHIDEventDeferringChangeBasis *)v3 initWithEventProvenance:provenance];

  return v5;
}

- (BKSHIDEventProvenance)provenance
{
  authenticationMessage = self->_authenticationMessage;
  if (!authenticationMessage)
  {
    authenticationMessage = self->_simpleProvenance;
  }

  return authenticationMessage;
}

+ (id)deserializeFromBytes:(const char *)bytes byteCount:(int64_t)count
{
  v22 = *MEMORY[0x1E69E9840];
  if (count <= 7)
  {
    v4 = BKLogEventDelivery();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v5 = "attributes data too small";
LABEL_25:
      _os_log_error_impl(&dword_186345000, v4, OS_LOG_TYPE_ERROR, v5, buf, 2u);
      goto LABEL_6;
    }

    goto LABEL_6;
  }

  if (count - 8 < *(bytes + 1))
  {
    v4 = BKLogEventDelivery();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v5 = "attributes data corrupt (length overrun)";
      goto LABEL_25;
    }

LABEL_6:
    v7 = 0;
LABEL_7:

    goto LABEL_8;
  }

  v11 = [self _classForAttributeType:*bytes];
  if (v11)
  {
    v12 = v11;
    v4 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:bytes + 8 length:*(bytes + 1) freeWhenDone:0];
    v17 = 0;
    v13 = [MEMORY[0x1E698E750] decodeObjectOfClass:v12 fromData:v4 error:&v17];
    v14 = v17;
    if (v13)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v13;
LABEL_23:

        goto LABEL_7;
      }

      v16 = BKLogEventDelivery();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        selfCopy = self;
        v20 = 2114;
        v21 = v12;
        _os_log_error_impl(&dword_186345000, v16, OS_LOG_TYPE_ERROR, "requested attributes from %{public}@, but decoded %{public}@", buf, 0x16u);
      }
    }

    else
    {
      v15 = BKLogEventDelivery();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        selfCopy = v14;
        _os_log_error_impl(&dword_186345000, v15, OS_LOG_TYPE_ERROR, "could not decode attributes:%{public}@", buf, 0xCu);
      }
    }

    v7 = 0;
    goto LABEL_23;
  }

  v7 = 0;
LABEL_8:
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (Class)_classForAttributeType:(unsigned __int8)type
{
  typeCopy = type;
  v9 = *MEMORY[0x1E69E9840];
  if (type <= 3)
  {
    if (type == 1 || type == 2 || type == 3)
    {
      goto LABEL_14;
    }
  }

  else if (type <= 6 || type == 7)
  {
LABEL_14:
    v5 = objc_opt_class();
    goto LABEL_15;
  }

  v4 = BKLogEventDelivery();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8[0] = 67109120;
    v8[1] = typeCopy;
    _os_log_error_impl(&dword_186345000, v4, OS_LOG_TYPE_ERROR, "unsupported type for attribute decode:%d", v8, 8u);
  }

  v5 = 0;
LABEL_15:
  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)baseAttributesFromProvider:(id)provider
{
  providerCopy = provider;
  v4 = objc_alloc_init(objc_opt_class());
  environment = [providerCopy environment];
  [v4 setEnvironment:environment];

  display = [providerCopy display];
  [v4 setDisplay:display];

  token = [providerCopy token];

  [v4 setToken:token];

  return v4;
}

@end