@interface BSMachPortRight
- (BOOL)_lock_isUsable;
- (BOOL)isUsable;
- (BOOL)isValid;
- (BOOL)matchesPortOfRight:(id)a3;
- (BSMachPortRight)init;
- (BSMachPortRight)initWithCoder:(id)a3;
- (BSMachPortRight)initWithXPCDictionary:(id)a3;
- (NSString)description;
- (uint64_t)_port;
- (unsigned)extractPortAndIKnowWhatImDoingISwear;
- (void)_initWithPort:(char)a3 type:(int)a4 owner:(void *)a5 trace:;
- (void)_lock_invalidateForOwner:(uint64_t)a1;
- (void)accessPort:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithXPCDictionary:(id)a3;
- (void)invalidate;
@end

@implementation BSMachPortRight

- (BOOL)_lock_isUsable
{
  if (!a1)
  {
    return 0;
  }

  os_unfair_lock_assert_owner((a1 + 20));
  if (*(a1 + 32) - 1 > 2)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = dword_18FFA2FB0[(*(a1 + 32) - 1)];

  return BSMachPortIsType(v2, v3);
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_invalidationLock);
  os_unfair_lock_lock(&self->_lock);
  [(BSMachPortRight *)self _lock_invalidateForOwner:?];
  os_unfair_lock_unlock(&self->_lock);

  os_unfair_lock_unlock(&self->_invalidationLock);
}

- (void)dealloc
{
  [(BSMachPortRight *)self invalidate];
  v3.receiver = self;
  v3.super_class = BSMachPortRight;
  [(BSMachPortRight *)&v3 dealloc];
}

- (BOOL)isUsable
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(BSMachPortRight *)self _lock_isUsable];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (uint64_t)_port
{
  if (!a1)
  {
    return 0;
  }

  os_unfair_lock_lock(a1 + 5);
  os_unfair_lock_assert_owner(a1 + 5);
  os_unfair_lock_opaque = a1[6]._os_unfair_lock_opaque;
  if (os_unfair_lock_opaque + 1 >= 2)
  {
    v3 = os_unfair_lock_opaque;
  }

  else
  {
    v3 = 0;
  }

  os_unfair_lock_unlock(a1 + 5);
  return v3;
}

- (NSString)description
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  v4 = [v3 appendBool:-[BSMachPortRight isUsable](self withName:{"isUsable"), @"usable"}];
  trace = self->_trace;
  if (trace)
  {
    v6 = [v3 appendObject:trace withName:0];
  }

  v7 = [v3 build];

  return v7;
}

- (unsigned)extractPortAndIKnowWhatImDoingISwear
{
  os_unfair_lock_lock(&self->_invalidationLock);
  os_unfair_lock_lock(&self->_lock);
  if (self->_owner || (lock_port = self->_lock_port, lock_port + 1 < 2))
  {
    lock_port = 0;
  }

  else
  {
    [(BSMachPortRight *)self _lock_invalidateForOwner:?];
  }

  os_unfair_lock_unlock(&self->_lock);
  os_unfair_lock_unlock(&self->_invalidationLock);
  return lock_port;
}

- (void)_initWithPort:(char)a3 type:(int)a4 owner:(void *)a5 trace:
{
  v25 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v18.receiver = a1;
  v18.super_class = BSMachPortRight;
  v9 = objc_msgSendSuper2(&v18, sel_init);
  if (v9)
  {
    v10 = [a5 copy];
    v11 = v9[1];
    v9[1] = v10;

    v9[2] = 0;
    *(v9 + 6) = a2;
    *(v9 + 7) = a2;
    *(v9 + 32) = a3;
    *(v9 + 33) = a4;
    v12 = BSLogMachPort();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = [MEMORY[0x1E696AF00] currentThread];
      v14 = [MEMORY[0x1E696AF00] callStackSymbols];
      *buf = 138543874;
      v20 = v9;
      v21 = 2114;
      v22 = v13;
      v23 = 2114;
      v24 = v14;
      _os_log_debug_impl(&dword_18FEF6000, v12, OS_LOG_TYPE_DEBUG, " *|machport|* %{public}@ -> (%{public}@) %{public}@", buf, 0x20u);
    }
  }

  else
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = v15;
    v16 = @"external ";
    if (!a4)
    {
      v16 = &stru_1F03A1A98;
    }

    [v15 handleFailureInMethod:sel__initWithPort_type_owner_trace_ object:0 file:@"BSMachPortRight.m" lineNumber:161 description:@"failed to create wrapping object for %@port=%x with trace=%@", v16, a2, a5];
  }

  return v9;
}

- (BSMachPortRight)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"BSMachPortRight.m" lineNumber:167 description:@"you cannot alloc a BSMachPortRight directly - use one of the exposed initializers instead"];

  return [(BSMachPortRight *)self _initWithPort:0 type:0 owner:0 trace:?];
}

- (BOOL)isValid
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_port - 1 < 0xFFFFFFFE;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)accessPort:(id)a3
{
  os_unfair_lock_lock(&self->_lock);
  lock_accessCount = self->_lock_accessCount;
  if (lock_accessCount == 255)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"BSMachPortRight.m" lineNumber:193 description:@"_lock_accessCount overflow"];

    lock_accessCount = self->_lock_accessCount;
  }

  self->_lock_accessCount = lock_accessCount + 1;
  if (!lock_accessCount)
  {
    os_unfair_lock_unlock(&self->_lock);
    os_unfair_lock_lock(&self->_invalidationLock);
    os_unfair_lock_lock(&self->_lock);
  }

  os_unfair_lock_assert_owner(&self->_lock);
  lock_port = self->_lock_port;
  if (lock_port + 1 >= 2)
  {
    v8 = lock_port;
  }

  else
  {
    v8 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  (*(a3 + 2))(a3, v8);
  os_unfair_lock_lock(&self->_lock);
  v9 = self->_lock_accessCount;
  if (!self->_lock_accessCount)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"BSMachPortRight.m" lineNumber:203 description:@"_lock_accessCount underflow"];

    v9 = self->_lock_accessCount;
  }

  self->_lock_accessCount = v9 - 1;
  os_unfair_lock_unlock(&self->_lock);
  if (v9 == 1)
  {

    os_unfair_lock_unlock(&self->_invalidationLock);
  }
}

- (BOOL)matchesPortOfRight:(id)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  if (a3)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __38__BSMachPortRight_matchesPortOfRight___block_invoke;
    v5[3] = &unk_1E72CB700;
    v5[4] = self;
    v5[5] = &v6;
    [a3 accessPort:v5];
    v3 = *(v7 + 24);
  }

  else
  {
    v3 = 0;
  }

  _Block_object_dispose(&v6, 8);
  return v3 & 1;
}

uint64_t __38__BSMachPortRight_matchesPortOfRight___block_invoke(uint64_t result, int a2)
{
  if ((a2 - 1) <= 0xFFFFFFFD)
  {
    v7 = v2;
    v8 = v3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __38__BSMachPortRight_matchesPortOfRight___block_invoke_2;
    v5[3] = &unk_1E72CB6D8;
    v4 = *(result + 32);
    v5[4] = *(result + 40);
    v6 = a2;
    return [v4 accessPort:v5];
  }

  return result;
}

- (void)_lock_invalidateForOwner:(uint64_t)a1
{
  v24 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    os_unfair_lock_assert_owner((a1 + 16));
    os_unfair_lock_assert_owner((a1 + 20));
    if (*(a1 + 24))
    {
      v4 = BSLogMachPort();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v7 = objc_opt_class();
        if ([(BSMachPortRight *)a1 _lock_isUsable])
        {
          v8 = @"YES";
        }

        else
        {
          v8 = @"NO";
        }

        v9 = *(a1 + 8);
        v10 = [MEMORY[0x1E696AF00] currentThread];
        v11 = [MEMORY[0x1E696AF00] callStackSymbols];
        v12 = 138544642;
        v13 = v7;
        v14 = 2048;
        v15 = a1;
        v16 = 2112;
        v17 = v8;
        v18 = 2114;
        v19 = v9;
        v20 = 2114;
        v21 = v10;
        v22 = 2114;
        v23 = v11;
        _os_log_debug_impl(&dword_18FEF6000, v4, OS_LOG_TYPE_DEBUG, " *|machport|* invalidate <%{public}@:%p usable=%@ %{public}@> -> (%{public}@) %{public}@", &v12, 0x3Eu);
      }

      if (!a2)
      {
        v5 = *(a1 + 32);
        v6 = *(a1 + 24);
        if ((v5 - 2) >= 2)
        {
          if (v5 == 1)
          {
            BSMachReceiveRightRelease(v6);
          }
        }

        else
        {
          BSMachSendRightRelease(v6);
        }
      }

      *(a1 + 24) = 0;
    }
  }
}

- (BSMachPortRight)initWithXPCDictionary:(id)a3
{
  v5 = [objc_opt_class() _type];
  v6 = xpc_dictionary_get_value(a3, "bsmpr_p");
  v7 = _BSMachPortTypeDecode(v5, v6);

  v8 = BSCreateDeserializedStringFromXPCDictionaryWithKey(a3, "bsmpr_t");
  v9 = _BSMachPortRightDescription(v5, 0, @"xpcCode", v7, v8);
  v10 = [(BSMachPortRight *)self _initWithPort:v7 type:v5 owner:0 trace:v9];

  return v10;
}

- (void)encodeWithXPCDictionary:(id)a3
{
  if (a3)
  {
    os_unfair_lock_lock(&self->_invalidationLock);
    os_unfair_lock_lock(&self->_lock);
    if ([(BSMachPortRight *)self _lock_isUsable])
    {
      v7 = 0;
      v5 = _BSMachPortTypeEncode(self->_type, self->_lock_port, &v7);
      if (v7 == 1)
      {
        [(BSMachPortRight *)self _lock_invalidateForOwner:?];
      }

      if (v5)
      {
        xpc_dictionary_set_value(a3, "bsmpr_p", v5);
      }
    }

    os_unfair_lock_unlock(&self->_lock);
    os_unfair_lock_unlock(&self->_invalidationLock);
    trace = self->_trace;

    BSSerializeStringToXPCDictionaryWithKey(trace, a3, "bsmpr_t");
  }
}

- (BSMachPortRight)initWithCoder:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = [objc_opt_class() _type];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v5 - 1 > 2)
    {
      v6 = MEMORY[0x1E69E9ED0];
    }

    else
    {
      v6 = qword_1E72CB790[(v5 - 1)];
    }

    v9 = [a3 decodeXPCObjectOfType:v6 forKey:@"bsmpr_p"];
    v8 = _BSMachPortTypeDecode(v5, v9);
  }

  else
  {
    v7 = BSLogMachPort();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = 138412546;
      v19 = v15;
      v20 = 2112;
      v21 = v17;
      _os_log_error_impl(&dword_18FEF6000, v7, OS_LOG_TYPE_ERROR, "An %@ can not be coded by an instance of %@", &v18, 0x16u);
    }

    v8 = 0;
  }

  v10 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"bsmpr_t"];
  v11 = _BSMachPortRightDescription(v5, 0, @"secCode", v8, v10);
  v12 = [(BSMachPortRight *)self _initWithPort:v8 type:v5 owner:0 trace:v11];

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    os_unfair_lock_lock(&self->_invalidationLock);
    os_unfair_lock_lock(&self->_lock);
    if ([(BSMachPortRight *)self _lock_isUsable])
    {
      v12 = 0;
      v5 = _BSMachPortTypeEncode(self->_type, self->_lock_port, &v12);
      if (v12 == 1)
      {
        [(BSMachPortRight *)self _lock_invalidateForOwner:?];
      }

      if (v5)
      {
        [a3 encodeXPCObject:v5 forKey:@"bsmpr_p"];
      }
    }

    os_unfair_lock_unlock(&self->_lock);
    os_unfair_lock_unlock(&self->_invalidationLock);
    trace = self->_trace;

    [a3 encodeObject:trace forKey:@"bsmpr_t"];
  }

  else
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = objc_opt_class();
    v11 = NSStringFromClass(v8);
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [v7 raise:*MEMORY[0x1E695D940] format:{@"An %@ can only be encoded with an instance of XPCEncoder; attempting to encode with a %@", v11, v10}];
  }
}

@end