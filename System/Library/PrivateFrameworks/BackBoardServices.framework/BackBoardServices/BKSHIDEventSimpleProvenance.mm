@interface BKSHIDEventSimpleProvenance
+ (BKSHIDEventSimpleProvenance)new;
+ (id)_withInternalKey:(id)a3 buildMessage:(id)a4;
+ (id)build:(id)a3;
- (BKSHIDEventSimpleProvenance)init;
- (BKSHIDEventSimpleProvenance)initWithCoder:(id)a3;
- (BOOL)_verifySignatureWithInternalKey:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)_calculateSignatureWithHMACContext:(uint64_t)a1;
- (id)_init;
- (id)_initWithCopyOf:(id *)a1;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)appendDescriptionToStream:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BKSHIDEventSimpleProvenance

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
        v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BKSHIDEventSimpleProvenance cannot be subclassed"];
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
          v17 = @"BKSHIDEventSimpleProvenance.m";
          v18 = 1024;
          v19 = 48;
          v20 = 2114;
          v21 = v5;
          _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        [v5 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x18634DFC4);
      }
    }

    v9.receiver = v1;
    v9.super_class = BKSHIDEventSimpleProvenance;
    result = objc_msgSendSuper2(&v9, sel_init);
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void __45__BKSHIDEventSimpleProvenance_protobufSchema__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 addField:"_signature"];
  [v2 addField:"_versionedPID"];
  [v2 addField:"_eventType"];
  [v2 addField:"_timestamp"];
}

- (id)_initWithCopyOf:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [(BKSHIDEventSimpleProvenance *)a1 _init];
    a1 = v4;
    if (v4)
    {
      objc_storeStrong(v4 + 1, v3[1]);
      a1[2] = v3[2];
      *(a1 + 6) = *(v3 + 6);
      a1[4] = v3[4];
    }
  }

  return a1;
}

- (BOOL)_verifySignatureWithInternalKey:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = [v13 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"key", v15];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = NSStringFromSelector(a2);
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      __dst.ctx[0] = 138544642;
      *&__dst.ctx[1] = v17;
      LOWORD(__dst.ctx[3]) = 2114;
      *(&__dst.ctx[3] + 2) = v19;
      HIWORD(__dst.ctx[5]) = 2048;
      *&__dst.ctx[6] = self;
      LOWORD(__dst.ctx[8]) = 2114;
      *(&__dst.ctx[8] + 2) = @"BKSHIDEventSimpleProvenance.m";
      HIWORD(__dst.ctx[10]) = 1024;
      __dst.ctx[11] = 234;
      LOWORD(__dst.ctx[12]) = 2114;
      *(&__dst.ctx[12] + 2) = v16;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &__dst, 0x3Au);
    }

    [v16 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18636E564);
  }

  v6 = v5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v20 = MEMORY[0x1E696AEC0];
    v21 = [v6 classForCoder];
    if (!v21)
    {
      v21 = objc_opt_class();
    }

    v22 = NSStringFromClass(v21);
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    v25 = [v20 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"key", v22, v24];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v26 = NSStringFromSelector(a2);
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      __dst.ctx[0] = 138544642;
      *&__dst.ctx[1] = v26;
      LOWORD(__dst.ctx[3]) = 2114;
      *(&__dst.ctx[3] + 2) = v28;
      HIWORD(__dst.ctx[5]) = 2048;
      *&__dst.ctx[6] = self;
      LOWORD(__dst.ctx[8]) = 2114;
      *(&__dst.ctx[8] + 2) = @"BKSHIDEventSimpleProvenance.m";
      HIWORD(__dst.ctx[10]) = 1024;
      __dst.ctx[11] = 234;
      LOWORD(__dst.ctx[12]) = 2114;
      *(&__dst.ctx[12] + 2) = v25;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &__dst, 0x3Au);
    }

    [v25 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18636E6A0);
  }

  v7 = [(_BKSHIDEventAuthenticationKey *)v6 _context];
  memcpy(&__dst, v7, sizeof(__dst));
  v8 = [(BKSHIDEventSimpleProvenance *)self _calculateSignatureWithHMACContext:?];
  v9 = [(NSData *)self->_signature length];
  v10 = v9 == [v8 length] && timingsafe_bcmp(objc_msgSend(v8, "bytes"), -[NSData bytes](self->_signature, "bytes"), v9) == 0;

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)_calculateSignatureWithHMACContext:(uint64_t)a1
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = a1;
    CCHmacUpdate(ctx, (a1 + 32), 8uLL);
    CCHmacUpdate(ctx, (v3 + 24), 4uLL);
    CCHmacUpdate(ctx, (v3 + 16), 8uLL);
    CCHmacFinal(ctx, macOut);
    a1 = [MEMORY[0x1E695DEF0] dataWithBytes:macOut length:32];
  }

  v4 = *MEMORY[0x1E69E9840];

  return a1;
}

- (void)appendDescriptionToStream:(id)a3
{
  v8 = a3;
  v4 = [v8 appendObject:self->_signature withName:@"signature"];
  v5 = [v8 appendInteger:self->_versionedPID withName:@"versionedPID"];
  v6 = [v8 appendInteger:self->_eventType withName:@"eventType"];
  v7 = [v8 appendInt64:self->_timestamp withName:@"timestamp"];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [BKSMutableHIDEventSimpleProvenance alloc];

  return [(BKSHIDEventSimpleProvenance *)&v4->super.super.isa _initWithCopyOf:?];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = v5[1];
    signature = self->_signature;
    v8 = BSEqualObjects() && v5[2] == self->_versionedPID && *(v5 + 6) == self->_eventType && v5[4] == self->_timestamp;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  signature = self->_signature;
  if (signature)
  {

    return [(NSData *)signature hash];
  }

  else
  {
    v5 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_versionedPID];
    [v5 hash];

    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_eventType];
    [v6 hash];

    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_timestamp];
    [v7 hash];

    return BSHashPurifyNS();
  }
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  signature = self->_signature;
  v6 = v4;
  if (signature)
  {
    [v4 encodeObject:signature forKey:@"signature"];
    v4 = v6;
  }

  [v4 encodeInteger:self->_versionedPID forKey:@"versionedPID"];
  [v6 encodeInteger:self->_eventType forKey:@"eventType"];
  [v6 encodeInt64:self->_timestamp forKey:@"timestamp"];
}

- (BKSHIDEventSimpleProvenance)initWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = BKSHIDEventSimpleProvenance;
  v3 = a3;
  v4 = [(BKSHIDEventSimpleProvenance *)&v9 init];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:{@"signature", v9.receiver, v9.super_class}];
  signature = v4->_signature;
  v4->_signature = v5;

  v4->_versionedPID = [v3 decodeIntegerForKey:@"versionedPID"];
  v4->_eventType = [v3 decodeIntegerForKey:@"eventType"];
  v7 = [v3 decodeInt64ForKey:@"timestamp"];

  v4->_timestamp = v7;
  return v4;
}

- (BKSHIDEventSimpleProvenance)init
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot directly allocate BKSHIDEventSimpleProvenance"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[BKSHIDEventSimpleProvenance init]"];
    v5 = 138544130;
    v6 = v3;
    v7 = 2114;
    v8 = @"BKSHIDEventSimpleProvenance.m";
    v9 = 1024;
    v10 = 37;
    v11 = 2114;
    v12 = v2;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", &v5, 0x26u);
  }

  [v2 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

+ (id)_withInternalKey:(id)a3 buildMessage:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = v7;
  if (!v9)
  {
    v20 = MEMORY[0x1E696AEC0];
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    v23 = [v20 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"key", v22];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v24 = NSStringFromSelector(a2);
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      __dst.ctx[0] = 138544642;
      *&__dst.ctx[1] = v24;
      LOWORD(__dst.ctx[3]) = 2114;
      *(&__dst.ctx[3] + 2) = v26;
      HIWORD(__dst.ctx[5]) = 2048;
      *&__dst.ctx[6] = a1;
      LOWORD(__dst.ctx[8]) = 2114;
      *(&__dst.ctx[8] + 2) = @"BKSHIDEventSimpleProvenance.m";
      HIWORD(__dst.ctx[10]) = 1024;
      __dst.ctx[11] = 221;
      LOWORD(__dst.ctx[12]) = 2114;
      *(&__dst.ctx[12] + 2) = v23;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &__dst, 0x3Au);
    }

    [v23 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18636EEC4);
  }

  v10 = v9;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v27 = MEMORY[0x1E696AEC0];
    v28 = [v10 classForCoder];
    if (!v28)
    {
      v28 = objc_opt_class();
    }

    v29 = NSStringFromClass(v28);
    v30 = objc_opt_class();
    v31 = NSStringFromClass(v30);
    v32 = [v27 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"key", v29, v31];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v33 = NSStringFromSelector(a2);
      v34 = objc_opt_class();
      v35 = NSStringFromClass(v34);
      __dst.ctx[0] = 138544642;
      *&__dst.ctx[1] = v33;
      LOWORD(__dst.ctx[3]) = 2114;
      *(&__dst.ctx[3] + 2) = v35;
      HIWORD(__dst.ctx[5]) = 2048;
      *&__dst.ctx[6] = a1;
      LOWORD(__dst.ctx[8]) = 2114;
      *(&__dst.ctx[8] + 2) = @"BKSHIDEventSimpleProvenance.m";
      HIWORD(__dst.ctx[10]) = 1024;
      __dst.ctx[11] = 221;
      LOWORD(__dst.ctx[12]) = 2114;
      *(&__dst.ctx[12] + 2) = v32;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &__dst, 0x3Au);
    }

    [v32 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18636F000);
  }

  if (!v8)
  {
    v36 = [MEMORY[0x1E696AAA8] currentHandler];
    [v36 handleFailureInMethod:a2 object:a1 file:@"BKSHIDEventSimpleProvenance.m" lineNumber:222 description:{@"Invalid parameter not satisfying: %@", @"builder != nil"}];
  }

  v11 = [(BKSHIDEventSimpleProvenance *)[BKSMutableHIDEventSimpleProvenance alloc] _init];
  v8[2](v8, v11);
  [v11 setTimestamp:mach_continuous_time()];
  if (v11)
  {
    v12 = v10;
    v13 = [v11 copy];
    v14 = [(_BKSHIDEventAuthenticationKey *)v12 _context];

    memcpy(&__dst, v14, sizeof(__dst));
    v15 = [(BKSHIDEventSimpleProvenance *)v13 _calculateSignatureWithHMACContext:?];
    v16 = [v15 copy];
    v17 = v13[1];
    v13[1] = v16;
  }

  else
  {
    v13 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (BKSHIDEventSimpleProvenance)new
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot directly allocate BKSHIDEventSimpleProvenance"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[BKSHIDEventSimpleProvenance new]"];
    v5 = 138544130;
    v6 = v3;
    v7 = 2114;
    v8 = @"BKSHIDEventSimpleProvenance.m";
    v9 = 1024;
    v10 = 42;
    v11 = 2114;
    v12 = v2;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", &v5, 0x26u);
  }

  [v2 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

+ (id)build:(id)a3
{
  v3 = a3;
  v4 = [(BKSHIDEventSimpleProvenance *)[BKSMutableHIDEventSimpleProvenance alloc] _init];
  v3[2](v3, v4);

  v5 = [v4 copy];

  return v5;
}

@end