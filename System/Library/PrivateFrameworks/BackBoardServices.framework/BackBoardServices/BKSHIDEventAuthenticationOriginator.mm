@interface BKSHIDEventAuthenticationOriginator
- (id)buildMessage:(id)message;
- (int64_t)validateMessage:(id)message;
@end

@implementation BKSHIDEventAuthenticationOriginator

- (int64_t)validateMessage:(id)message
{
  v44 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  if (!messageCopy)
  {
    v18 = MEMORY[0x1E696AEC0];
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v21 = [v18 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"message", v20];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v22 = NSStringFromSelector(a2);
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      __dst.ctx[0] = 138544642;
      *&__dst.ctx[1] = v22;
      LOWORD(__dst.ctx[3]) = 2114;
      *(&__dst.ctx[3] + 2) = v24;
      HIWORD(__dst.ctx[5]) = 2048;
      *&__dst.ctx[6] = self;
      LOWORD(__dst.ctx[8]) = 2114;
      *(&__dst.ctx[8] + 2) = @"BKSHIDEventAuthenticationOriginator.m";
      HIWORD(__dst.ctx[10]) = 1024;
      __dst.ctx[11] = 49;
      LOWORD(__dst.ctx[12]) = 2114;
      *(&__dst.ctx[12] + 2) = v21;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &__dst, 0x3Au);
    }

    [v21 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A1320);
  }

  v6 = messageCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v25 = MEMORY[0x1E696AEC0];
    classForCoder = [v6 classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v27 = NSStringFromClass(classForCoder);
    v28 = objc_opt_class();
    v29 = NSStringFromClass(v28);
    v30 = [v25 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"message", v27, v29];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v31 = NSStringFromSelector(a2);
      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      __dst.ctx[0] = 138544642;
      *&__dst.ctx[1] = v31;
      LOWORD(__dst.ctx[3]) = 2114;
      *(&__dst.ctx[3] + 2) = v33;
      HIWORD(__dst.ctx[5]) = 2048;
      *&__dst.ctx[6] = self;
      LOWORD(__dst.ctx[8]) = 2114;
      *(&__dst.ctx[8] + 2) = @"BKSHIDEventAuthenticationOriginator.m";
      HIWORD(__dst.ctx[10]) = 1024;
      __dst.ctx[11] = 49;
      LOWORD(__dst.ctx[12]) = 2114;
      *(&__dst.ctx[12] + 2) = v30;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &__dst, 0x3Au);
    }

    [v30 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A145CLL);
  }

  key = self->_key;
  if (!key)
  {
    v14 = BKLogEventDelivery();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
LABEL_14:

      v13 = 1;
      goto LABEL_15;
    }

    LOWORD(__dst.ctx[0]) = 0;
    v15 = "message auth failure: backboardd hasn't signed any events";
LABEL_17:
    _os_log_error_impl(&dword_186345000, v14, OS_LOG_TYPE_ERROR, v15, &__dst, 2u);
    goto LABEL_14;
  }

  v8 = key;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v34 = MEMORY[0x1E696AEC0];
    classForCoder2 = [(_BKSHIDEventAuthenticationKey *)v8 classForCoder];
    if (!classForCoder2)
    {
      classForCoder2 = objc_opt_class();
    }

    v36 = NSStringFromClass(classForCoder2);
    v37 = objc_opt_class();
    v38 = NSStringFromClass(v37);
    v39 = [v34 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"key", v36, v38];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v40 = NSStringFromSelector(sel__verifySignatureWithInternalKey_);
      v41 = objc_opt_class();
      v42 = NSStringFromClass(v41);
      __dst.ctx[0] = 138544642;
      *&__dst.ctx[1] = v40;
      LOWORD(__dst.ctx[3]) = 2114;
      *(&__dst.ctx[3] + 2) = v42;
      HIWORD(__dst.ctx[5]) = 2048;
      *&__dst.ctx[6] = v6;
      LOWORD(__dst.ctx[8]) = 2114;
      *(&__dst.ctx[8] + 2) = @"BKSHIDEventAuthenticationMessage.m";
      HIWORD(__dst.ctx[10]) = 1024;
      __dst.ctx[11] = 263;
      LOWORD(__dst.ctx[12]) = 2114;
      *(&__dst.ctx[12] + 2) = v39;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &__dst, 0x3Au);
    }

    [v39 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A159CLL);
  }

  _context = [(_BKSHIDEventAuthenticationKey *)v8 _context];
  memcpy(&__dst, _context, sizeof(__dst));
  v10 = [(BKSHIDEventAuthenticationMessage *)v6 _calculateSignatureWithHMACContext:?];
  v11 = [v6[11] length];
  if (v11 != [v10 length])
  {

    goto LABEL_13;
  }

  v12 = timingsafe_bcmp([v10 bytes], objc_msgSend(v6[11], "bytes"), v11);

  if (v12)
  {
LABEL_13:
    v14 = BKLogEventDelivery();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    LOWORD(__dst.ctx[0]) = 0;
    v15 = "message auth failure: contents failed to verify; message is corrupt";
    goto LABEL_17;
  }

  if ([v6 registrantEntitled])
  {
    v13 = 2;
  }

  else
  {
    v13 = 3;
  }

LABEL_15:

  v16 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)buildMessage:(id)message
{
  v44 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  if (!messageCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"BKSHIDEventAuthenticationOriginator.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"builder != nil"}];
  }

  v6 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  key = self->_key;
  if (!key)
  {
    v8 = +[_BKSHIDEventAuthenticationKey eventAuthenticationKey];
    v9 = self->_key;
    self->_key = v8;

    key = self->_key;
  }

  self->_keyLastAccessTime = v6 / 1000000000.0;
  v10 = key;
  v11 = messageCopy;
  v12 = objc_opt_self();
  v13 = v10;
  if (!v13)
  {
    v26 = MEMORY[0x1E696AEC0];
    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    v29 = [v26 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"key", v28];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v30 = NSStringFromSelector(sel__withInternalKey_buildMessage_);
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      __dst.ctx[0] = 138544642;
      *&__dst.ctx[1] = v30;
      LOWORD(__dst.ctx[3]) = 2114;
      *(&__dst.ctx[3] + 2) = v32;
      HIWORD(__dst.ctx[5]) = 2048;
      *&__dst.ctx[6] = v12;
      LOWORD(__dst.ctx[8]) = 2114;
      *(&__dst.ctx[8] + 2) = @"BKSHIDEventAuthenticationMessage.m";
      HIWORD(__dst.ctx[10]) = 1024;
      __dst.ctx[11] = 249;
      LOWORD(__dst.ctx[12]) = 2114;
      *(&__dst.ctx[12] + 2) = v29;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &__dst, 0x3Au);
    }

    [v29 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A18D0);
  }

  v14 = v13;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v33 = MEMORY[0x1E696AEC0];
    classForCoder = [(_BKSHIDEventAuthenticationKey *)v14 classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v35 = NSStringFromClass(classForCoder);
    v36 = objc_opt_class();
    v37 = NSStringFromClass(v36);
    v38 = [v33 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"key", v35, v37];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v39 = NSStringFromSelector(sel__withInternalKey_buildMessage_);
      v40 = objc_opt_class();
      v41 = NSStringFromClass(v40);
      __dst.ctx[0] = 138544642;
      *&__dst.ctx[1] = v39;
      LOWORD(__dst.ctx[3]) = 2114;
      *(&__dst.ctx[3] + 2) = v41;
      HIWORD(__dst.ctx[5]) = 2048;
      *&__dst.ctx[6] = v12;
      LOWORD(__dst.ctx[8]) = 2114;
      *(&__dst.ctx[8] + 2) = @"BKSHIDEventAuthenticationMessage.m";
      HIWORD(__dst.ctx[10]) = 1024;
      __dst.ctx[11] = 249;
      LOWORD(__dst.ctx[12]) = 2114;
      *(&__dst.ctx[12] + 2) = v38;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &__dst, 0x3Au);
    }

    [v38 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A1A0CLL);
  }

  if (!messageCopy)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:sel__withInternalKey_buildMessage_ object:v12 file:@"BKSHIDEventAuthenticationMessage.m" lineNumber:250 description:{@"Invalid parameter not satisfying: %@", @"builder != nil"}];
  }

  _init = [(BKSHIDEventAuthenticationMessage *)[BKSMutableHIDEventAuthenticationMessage alloc] _init];
  v11[2](v11, _init);
  v16 = mach_continuous_time();
  if (_init)
  {
    _init[6] = v16;
    v17 = v14;
    v18 = [_init copy];
    _context = [(_BKSHIDEventAuthenticationKey *)v17 _context];

    memcpy(&__dst, _context, sizeof(__dst));
    v20 = [(BKSHIDEventAuthenticationMessage *)v18 _calculateSignatureWithHMACContext:?];
    v21 = [v20 copy];
    v22 = v18[11];
    v18[11] = v21;
  }

  else
  {
    v18 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];

  return v18;
}

@end