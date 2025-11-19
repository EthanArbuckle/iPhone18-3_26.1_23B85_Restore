@interface BKSHIDEventDeliveryChain
+ (id)new;
+ (id)protobufSchema;
- (BKSHIDEventDeliveryChain)init;
- (BKSHIDEventDeliveryChain)initWithCoder:(id)a3;
- (BKSHIDEventDeliveryChain)initWithIdentity:(id)a3 compatibilityDisplay:(id)a4 selectionPath:(id)a5 path:(id)a6 modalities:(id)a7 containsSubset:(BOOL)a8 containsEndOfChain:(BOOL)a9;
- (BOOL)isEqual:(id)a3;
- (id)_dataProtobufEncoded;
- (id)_protobufDecodedFromData:(id)a3;
- (id)didFinishProtobufDecodingWithError:(id *)a3;
- (id)initForProtobufDecoding;
- (id)subsetForPID:(int)a3;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BKSHIDEventDeliveryChain

- (void)appendDescriptionToFormatter:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__BKSHIDEventDeliveryChain_appendDescriptionToFormatter___block_invoke;
  v8[3] = &unk_1E6F47C78;
  v9 = v4;
  v10 = self;
  [v4 appendProem:0 block:v8];
  v5 = [v4 appendBool:self->_containsEndOfChain withName:@"containsEndOfChain"];
  if (self->_containsSubset)
  {
    v6 = [v4 appendBool:1 withName:@"containsSubset"];
  }

  v7 = [v4 appendObject:self->_deferringPath withName:0];
}

void __57__BKSHIDEventDeliveryChain_appendDescriptionToFormatter___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 8) withName:0];
  v3 = *(a1 + 40);
  v4 = *(v3 + 32);
  if (v4)
  {
    v5 = [*(a1 + 32) appendObject:v4 withName:@"selectionPath"];
    v3 = *(a1 + 40);
  }

  v6 = *(v3 + 16);
  if (v6)
  {
    v7 = [*(v3 + 8) display];
    v8 = [v6 isEqual:v7];

    v3 = *(a1 + 40);
    if ((v8 & 1) == 0)
    {
      v9 = [*(a1 + 32) appendObject:*(v3 + 16) withName:@"compatibilityDisplay"];
      v3 = *(a1 + 40);
    }
  }

  v10 = *(v3 + 48);
  if (v10)
  {
    v11 = [*(a1 + 32) appendObject:v10 withName:@"modalities"];
  }
}

- (id)didFinishProtobufDecodingWithError:(id *)a3
{
  if (self->_identity)
  {
    v3 = self;
  }

  else
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:5 userInfo:&unk_1EF56BF40];
    v6 = v5;
    v3 = 0;
    *a3 = v5;
  }

  return v3;
}

- (id)initForProtobufDecoding
{
  v3.receiver = self;
  v3.super_class = BKSHIDEventDeliveryChain;
  return [(BKSHIDEventDeliveryChain *)&v3 init];
}

- (id)subsetForPID:(int)a3
{
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v20 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  deferringPath = self->_deferringPath;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __41__BKSHIDEventDeliveryChain_subsetForPID___block_invoke;
  v13[3] = &unk_1E6F46E98;
  v14 = a3;
  v13[4] = v19;
  v13[5] = &v15;
  v5 = [(NSArray *)deferringPath bs_filter:v13];
  v6 = *(v16 + 24);
  if (self->_containsEndOfChain)
  {
    v7 = [(NSArray *)self->_deferringPath lastObject];
    v8 = [v5 lastObject];
    v9 = [v7 isEqual:v8];
  }

  else
  {
    v9 = 0;
  }

  LOBYTE(v12) = v9;
  v10 = [[BKSHIDEventDeliveryChain alloc] initWithIdentity:self->_identity compatibilityDisplay:self->_compatibilityDisplay selectionPath:self->_selectionPath path:v5 modalities:0 containsSubset:v6 containsEndOfChain:v12];

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(v19, 8);

  return v10;
}

uint64_t __41__BKSHIDEventDeliveryChain_subsetForPID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 pid];
  v4 = *(*(a1 + 32) + 8);
  if (v3 == *(a1 + 48))
  {
    result = 1;
    *(v4 + 24) = 1;
  }

  else if (*(v4 + 24) == 1)
  {
    *(v4 + 24) = 0;
    return 1;
  }

  else
  {
    result = 0;
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BKSHIDEventDeliveryChain *)self _dataProtobufEncoded];
  [v4 encodeObject:v5 forKey:@"backboarddSelfData"];
}

- (BKSHIDEventDeliveryChain)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"backboarddSelfData"];

  v6 = [(BKSHIDEventDeliveryChain *)self _protobufDecodedFromData:v5];

  return v6;
}

- (id)_dataProtobufEncoded
{
  v26 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v4 = [MEMORY[0x1E698E750] encodeObject:self error:&v13];
  v5 = v13;
  v6 = [v4 copy];

  if (!v6)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"delivery chain encode error: %@", v5];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = NSStringFromSelector(a2);
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *buf = 138544642;
      v15 = v10;
      v16 = 2114;
      v17 = v12;
      v18 = 2048;
      v19 = self;
      v20 = 2114;
      v21 = @"BKSHIDEventDeliveryChain.m";
      v22 = 1024;
      v23 = 109;
      v24 = 2114;
      v25 = v9;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v9 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186385948);
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)_protobufDecodedFromData:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v9 = 0;
    v4 = [MEMORY[0x1E698E750] decodeObjectOfClass:objc_opt_class() fromData:v3 error:&v9];
    v5 = v9;
    if (v4)
    {
      goto LABEL_9;
    }

    v6 = BKLogEventDelivery();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v11 = v5;
      _os_log_error_impl(&dword_186345000, v6, OS_LOG_TYPE_ERROR, "delivery chain protobuf decode failure: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v5 = BKLogEventDelivery();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_186345000, v5, OS_LOG_TYPE_ERROR, "auth message data decode failure", buf, 2u);
    }
  }

  v4 = 0;
LABEL_9:

  v7 = *MEMORY[0x1E69E9840];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = v4;
    if (v5)
    {
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    v9 = v7;

    if (!v9)
    {
      goto LABEL_16;
    }

    identity = self->_identity;
    v11 = v9->_identity;
    if (!BSEqualObjects())
    {
      goto LABEL_16;
    }

    compatibilityDisplay = self->_compatibilityDisplay;
    v13 = v9->_compatibilityDisplay;
    if (!BSEqualObjects())
    {
      goto LABEL_16;
    }

    selectionPath = self->_selectionPath;
    v15 = v9->_selectionPath;
    if (BSEqualObjects() && (modalities = self->_modalities, v17 = v9->_modalities, BSEqualObjects()) && (deferringPath = self->_deferringPath, v19 = v9->_deferringPath, BSEqualObjects()) && self->_containsEndOfChain == v9->_containsEndOfChain)
    {
      v8 = self->_containsSubset == v9->_containsSubset;
    }

    else
    {
LABEL_16:
      v8 = 0;
    }
  }

  return v8;
}

- (BKSHIDEventDeliveryChain)initWithIdentity:(id)a3 compatibilityDisplay:(id)a4 selectionPath:(id)a5 path:(id)a6 modalities:(id)a7 containsSubset:(BOOL)a8 containsEndOfChain:(BOOL)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v28.receiver = self;
  v28.super_class = BKSHIDEventDeliveryChain;
  v20 = [(BKSHIDEventDeliveryChain *)&v28 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_identity, a3);
    v22 = [v18 copy];
    deferringPath = v21->_deferringPath;
    v21->_deferringPath = v22;

    if ([v19 count])
    {
      v24 = [v19 copy];
      modalities = v21->_modalities;
      v21->_modalities = v24;
    }

    objc_storeStrong(&v21->_selectionPath, a5);
    objc_storeStrong(&v21->_compatibilityDisplay, a4);
    v21->_containsSubset = a8;
    v21->_containsEndOfChain = 1;
  }

  return v21;
}

- (BKSHIDEventDeliveryChain)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot -init"];
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
    v14 = self;
    v15 = 2114;
    v16 = @"BKSHIDEventDeliveryChain.m";
    v17 = 1024;
    v18 = 29;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

+ (id)protobufSchema
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__BKSHIDEventDeliveryChain_protobufSchema__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (protobufSchema_onceToken_6262 != -1)
  {
    dispatch_once(&protobufSchema_onceToken_6262, block);
  }

  v2 = protobufSchema_schema_6263;

  return v2;
}

uint64_t __42__BKSHIDEventDeliveryChain_protobufSchema__block_invoke(uint64_t a1)
{
  protobufSchema_schema_6263 = [MEMORY[0x1E698E750] buildSchemaForClass:*(a1 + 32) builder:&__block_literal_global_6264];

  return MEMORY[0x1EEE66BB8]();
}

void __42__BKSHIDEventDeliveryChain_protobufSchema__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 addField:"_identity"];
  [v2 addField:"_compatibilityDisplay"];
  [v2 addField:"_selectionPath"];
  [v2 addField:"_containsSubset"];
  [v2 addField:"_containsEndOfChain"];
  [v2 addRepeatingField:"_modalities" containsClass:objc_opt_class()];
  [v2 addRepeatingField:"_deferringPath" containsClass:objc_opt_class()];
}

+ (id)new
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot +new"];
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
    v16 = @"BKSHIDEventDeliveryChain.m";
    v17 = 1024;
    v18 = 34;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

@end