@interface BKSHIDEventDeliveryRuleWrapper
- (BKSHIDEventDeliveryRuleWrapper)initWithCoder:(id)a3;
- (BKSHIDEventDeliveryRuleWrapper)initWithReason:(id)a3 seed:(unsigned int)a4 payload:(id)a5;
- (BOOL)isEqual:(id)a3;
- (id)decodePayload:(id)a3;
- (void)appendDescriptionToStream:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BKSHIDEventDeliveryRuleWrapper

- (void)encodeWithCoder:(id)a3
{
  reason = self->_reason;
  v5 = a3;
  [v5 encodeObject:reason forKey:@"reason"];
  [v5 encodeObject:self->_payload forKey:@"payload"];
  [v5 encodeInt32:self->_seed forKey:@"seed"];
}

- (BKSHIDEventDeliveryRuleWrapper)initWithCoder:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(BKSHIDEventDeliveryRuleWrapper *)self init];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_5;
  }

  v7 = [(BKSHIDEventDeliveryRuleWrapper *)v5 decodePayload:v4];
  payload = v6->_payload;
  v6->_payload = v7;

  if (!v6->_payload)
  {
    v12 = BKLogEventDelivery();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      v15 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4864 userInfo:0];
      [v4 failWithError:v15];

      v11 = 0;
      goto LABEL_10;
    }

    v13 = [v4 error];
    v18 = 138543362;
    v19 = v13;
    v14 = "payload is nil: %{public}@";
LABEL_12:
    _os_log_error_impl(&dword_186345000, v12, OS_LOG_TYPE_ERROR, v14, &v18, 0xCu);

    goto LABEL_9;
  }

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"reason"];
  reason = v6->_reason;
  v6->_reason = v9;

  if (!v6->_reason)
  {
    v12 = BKLogEventDelivery();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v13 = [v4 error];
    v18 = 138543362;
    v19 = v13;
    v14 = "reason is nil: %{public}@";
    goto LABEL_12;
  }

  v6->_seed = [v4 decodeInt32ForKey:@"seed"];
LABEL_5:
  v11 = v6;
LABEL_10:

  v16 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)appendDescriptionToStream:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__BKSHIDEventDeliveryRuleWrapper_appendDescriptionToStream___block_invoke;
  v6[3] = &unk_1E6F47C78;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [v5 appendProem:0 block:v6];
}

id __60__BKSHIDEventDeliveryRuleWrapper_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  [*(a1 + 32) appendString:*(*(a1 + 40) + 16) withName:@"reason"];
  v2 = [*(a1 + 32) appendUnsignedInteger:*(*(a1 + 40) + 8) withName:@"seed"];
  return [*(a1 + 32) appendObject:*(*(a1 + 40) + 24) withName:0];
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

    if (v9 && self->_seed == v9->_seed && [(NSString *)self->_reason isEqual:v9->_reason])
    {
      v8 = [self->_payload isEqual:v9->_payload];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (BKSHIDEventDeliveryRuleWrapper)initWithReason:(id)a3 seed:(unsigned int)a4 payload:(id)a5
{
  v46 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  v33.receiver = self;
  v33.super_class = BKSHIDEventDeliveryRuleWrapper;
  v11 = [(BKSHIDEventDeliveryRuleWrapper *)&v33 init];
  if (v11)
  {
    v12 = v9;
    v13 = MEMORY[0x1E696AEC0];
    objc_opt_class();
    v14 = objc_opt_class();
    if (!v12)
    {
      v19 = NSStringFromClass(v14);
      v20 = [v13 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"reason", v19];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v21 = NSStringFromSelector(a2);
        v22 = objc_opt_class();
        v23 = NSStringFromClass(v22);
        *buf = 138544642;
        v35 = v21;
        v36 = 2114;
        v37 = v23;
        v38 = 2048;
        v39 = v11;
        v40 = 2114;
        v41 = @"BKSHIDEventDeliveryRuleChangeTransaction.m";
        v42 = 1024;
        v43 = 52;
        v44 = 2114;
        v45 = v20;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v20 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x186365838);
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v24 = MEMORY[0x1E696AEC0];
      v25 = [v12 classForCoder];
      if (!v25)
      {
        v25 = objc_opt_class();
      }

      v26 = NSStringFromClass(v25);
      objc_opt_class();
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      v29 = [v24 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"reason", v26, v28];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v30 = NSStringFromSelector(a2);
        v31 = objc_opt_class();
        v32 = NSStringFromClass(v31);
        *buf = 138544642;
        v35 = v30;
        v36 = 2114;
        v37 = v32;
        v38 = 2048;
        v39 = v11;
        v40 = 2114;
        v41 = @"BKSHIDEventDeliveryRuleChangeTransaction.m";
        v42 = 1024;
        v43 = 52;
        v44 = 2114;
        v45 = v29;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v29 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x186365974);
    }

    v15 = [v12 copy];
    reason = v11->_reason;
    v11->_reason = v15;

    objc_storeStrong(&v11->_payload, a5);
    v11->_seed = a4;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)decodePayload:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"You must have a subclass"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = NSStringFromSelector(a2);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v11 = 138544642;
    v12 = v7;
    v13 = 2114;
    v14 = v9;
    v15 = 2048;
    v16 = self;
    v17 = 2114;
    v18 = @"BKSHIDEventDeliveryRuleChangeTransaction.m";
    v19 = 1024;
    v20 = 45;
    v21 = 2114;
    v22 = v6;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v11, 0x3Au);
  }

  [v6 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

@end