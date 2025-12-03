@interface _BSCompoundAssertionAcquisitionReference
- (NSString)description;
- (void)dealloc;
- (void)invalidate;
@end

@implementation _BSCompoundAssertionAcquisitionReference

- (void)invalidate
{
  v39 = *MEMORY[0x1E69E9840];
  if (atomic_exchange(&self->_invalid._Value, 1u))
  {
    return;
  }

  record = self->_record;
  if (!record)
  {
    selfCopy = self;
    goto LABEL_31;
  }

  WeakRetained = objc_loadWeakRetained(&record->_assertion);
  selfCopy2 = self;
  if (!WeakRetained)
  {
LABEL_31:
    WeakRetained = 0;
    goto LABEL_24;
  }

  v5 = selfCopy2;
  os_unfair_lock_assert_not_owner(WeakRetained + 4);
  os_unfair_lock_lock(WeakRetained + 4);
  v6 = v5;
  os_unfair_lock_assert_owner(WeakRetained + 4);
  if ((*(WeakRetained + 20) & 1) == 0)
  {
    os_unfair_lock_lock(WeakRetained + 8);
    v7 = *(WeakRetained + 6);
    if (v7)
    {
      v8 = v7;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = objc_opt_class();
        v10 = *(WeakRetained + 1);
        v11 = [*(WeakRetained + 5) count];
        *buf = 138544386;
        v30 = v9;
        v31 = 2048;
        v32 = WeakRetained;
        v33 = 2114;
        v34 = v10;
        v35 = 2048;
        v36 = v6;
        v37 = 1024;
        v38 = v11;
        _os_log_impl(&dword_18FEF6000, v8, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> (%{public}@) invalidate acq:%p count:%d", buf, 0x30u);
      }
    }

    if (([*(WeakRetained + 5) containsObject:self->_record] & 1) == 0)
    {
      os_unfair_lock_unlock(WeakRetained + 8);
      v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/BaseBoard/BaseBoard/BSCompoundAssertion.m"];
      v23 = v22;
      v24 = @"<Unknown File>";
      if (v22)
      {
        v24 = v22;
      }

      v25 = v24;

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__syncLock_acquisitionDidInvalidate_ object:WeakRetained file:v25 lineNumber:433 description:@"acquisition invalidated twice"];
    }

    v12 = self->_record;
    [*(WeakRetained + 5) removeObject:v12];
    v13 = [*(WeakRetained + 5) count];
    if (!v13)
    {
      v14 = *(WeakRetained + 5);
      *(WeakRetained + 5) = 0;
    }

    if (v12)
    {
      context = v12->_context;
    }

    else
    {
      context = 0;
    }

    v16 = context;
    v17 = *(WeakRetained + 3);
    if (v13 && v17)
    {
      if (v16)
      {
        _dataLock_context = [(BSCompoundAssertion *)WeakRetained _dataLock_context];
        v19 = [_dataLock_context containsObject:v16];

        if ((v19 & 1) == 0)
        {
          v17 = *(WeakRetained + 3);
LABEL_20:
          v20 = MEMORY[0x193AE5AC0](v17);
          _dataLock_copyState = [(BSCompoundAssertion *)WeakRetained _dataLock_copyState];
          os_unfair_lock_unlock(WeakRetained + 8);
          (v20)[2](v20, _dataLock_copyState);
LABEL_22:

          goto LABEL_23;
        }
      }
    }

    else if (v17)
    {
      goto LABEL_20;
    }

    os_unfair_lock_unlock(WeakRetained + 8);
    _dataLock_copyState = 0;
    v20 = 0;
    goto LABEL_22;
  }

LABEL_23:

  os_unfair_lock_unlock(WeakRetained + 4);
  [(_BSCompoundAssertionAcquisitionRecord *)self->_record setContext:?];
LABEL_24:
}

- (void)dealloc
{
  v25 = *MEMORY[0x1E69E9840];
  if ((atomic_exchange(&self->_invalid._Value, 1u) & 1) == 0)
  {
    v4 = MEMORY[0x1E696AEC0];
    assertion = [(_BSCompoundAssertionAcquisitionRecord *)&self->_record->super.isa assertion];
    _identifier = [(BSCompoundAssertion *)assertion _identifier];
    v7 = [v4 stringWithFormat:@"client bug: someone forgot to invoke -invalidate on acquisition %@ (assertion: %@)", self, _identifier];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = NSStringFromSelector(a2);
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      *buf = 138544642;
      v14 = v8;
      v15 = 2114;
      v16 = v10;
      v17 = 2048;
      selfCopy = self;
      v19 = 2114;
      v20 = @"BSCompoundAssertion.m";
      v21 = 1024;
      v22 = 144;
      v23 = 2114;
      v24 = v7;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v11 = v7;
    qword_1EAD33B00 = [v7 UTF8String];
    __break(0);
    JUMPOUT(0x18FEFA8A0);
  }

  v12.receiver = self;
  v12.super_class = _BSCompoundAssertionAcquisitionReference;
  [(_BSCompoundAssertionAcquisitionReference *)&v12 dealloc];
}

- (NSString)description
{
  record = self->_record;
  if (record)
  {
    record = record->_reason;
  }

  record = [MEMORY[0x1E696AEC0] stringWithFormat:@"<CAcq %p:%@>", self, record];

  return record;
}

@end