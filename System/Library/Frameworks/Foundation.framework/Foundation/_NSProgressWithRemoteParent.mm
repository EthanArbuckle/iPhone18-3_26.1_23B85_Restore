@interface _NSProgressWithRemoteParent
- (void)_sendCancellableOrPausableUpdate:(BOOL)update stringKey:(const char *)key intKey:(int)intKey;
- (void)_setUserInfoValue:(id)value forKey:(id)key fromChild:(BOOL)child;
- (void)_updateFractionCompleted:(_NSProgressFractionTuple *)completed;
- (void)dealloc;
- (void)setCancellable:(BOOL)cancellable;
- (void)setPausable:(BOOL)pausable;
@end

@implementation _NSProgressWithRemoteParent

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = _NSProgressWithRemoteParent;
  [(NSProgress *)&v3 dealloc];
}

- (void)_updateFractionCompleted:(_NSProgressFractionTuple *)completed
{
  v11 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = _NSProgressWithRemoteParent;
  v5 = *&completed->var0.overflowed;
  v9[0] = *&completed->var0.completed;
  v9[1] = v5;
  v9[2] = *&completed->var1.total;
  [(NSProgress *)&v10 _updateFractionCompleted:v9];
  if ((_NSProgressFractionIsEqual(&completed->var0.completed, &completed->var1.completed) & 1) == 0)
  {
    v6 = xpc_dictionary_create(0, 0, 0);
    completed = completed->var1.completed;
    total = completed->var1.total;
    xpc_dictionary_set_uint64(v6, "completedCount", completed);
    xpc_dictionary_set_uint64(v6, "totalCount", total);
    [(NSXPCConnection *)self->_parentConnection _sendProgressMessage:v6 forSequence:self->_sequence];
    xpc_release(v6);
  }
}

- (void)_setUserInfoValue:(id)value forKey:(id)key fromChild:(BOOL)child
{
  valueCopy = value;
  v18 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = _NSProgressWithRemoteParent;
  [(NSProgress *)&v17 _setUserInfoValue:value forKey:key fromChild:child];
  if ([key isEqualToString:@"NSProgressThroughputKey"])
  {
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_BOOL(v8, "isUserInfo", 1);
    if (valueCopy)
    {
      if (_NSIsNSNumber())
      {
        unsignedLongLongValue = [valueCopy unsignedLongLongValue];
      }

      else
      {
        unsignedLongLongValue = 0;
      }

      xpc_dictionary_set_uint64(v8, "userInfoVal", unsignedLongLongValue);
    }

    else
    {
      xpc_dictionary_set_BOOL(v8, "userInfoValNil", 1);
    }

    v12 = v8;
    v13 = 1;
  }

  else if ([key isEqualToString:@"NSProgressEstimatedTimeRemainingKey"])
  {
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_BOOL(v8, "isUserInfo", 1);
    if (valueCopy)
    {
      if (_NSIsNSNumber())
      {
        unsignedLongLongValue2 = [valueCopy unsignedLongLongValue];
      }

      else
      {
        unsignedLongLongValue2 = 0;
      }

      xpc_dictionary_set_uint64(v8, "userInfoVal", unsignedLongLongValue2);
    }

    else
    {
      xpc_dictionary_set_BOOL(v8, "userInfoValNil", 1);
    }

    v12 = v8;
    v13 = 2;
  }

  else if ([key isEqualToString:@"_NSProgressRemoteLocalizedDescriptionKey"])
  {
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_BOOL(v8, "isUserInfo", 1);
    v11 = _NSIsNSString();
    if (valueCopy && v11)
    {
      if ([valueCopy length] >= 0x401)
      {
        valueCopy = [valueCopy substringWithRange:{0, 1024}];
      }

      xpc_dictionary_set_string(v8, "userInfoVal", [valueCopy UTF8String]);
    }

    else
    {
      xpc_dictionary_set_BOOL(v8, "userInfoValNil", 1);
    }

    v12 = v8;
    v13 = 3;
  }

  else if ([key isEqualToString:@"_NSProgressRemoteLocalizedAdditionalDescriptionKey"])
  {
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_BOOL(v8, "isUserInfo", 1);
    v14 = _NSIsNSString();
    if (valueCopy && v14)
    {
      if ([valueCopy length] >= 0x401)
      {
        valueCopy = [valueCopy substringWithRange:{0, 1024}];
      }

      xpc_dictionary_set_string(v8, "userInfoVal", [valueCopy UTF8String]);
    }

    else
    {
      xpc_dictionary_set_BOOL(v8, "userInfoValNil", 1);
    }

    v12 = v8;
    v13 = 4;
  }

  else if ([key isEqualToString:@"NSProgressFileCompletedCountKey"])
  {
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_BOOL(v8, "isUserInfo", 1);
    if (valueCopy)
    {
      if (_NSIsNSNumber())
      {
        unsignedLongLongValue3 = [valueCopy unsignedLongLongValue];
      }

      else
      {
        unsignedLongLongValue3 = 0;
      }

      xpc_dictionary_set_uint64(v8, "userInfoVal", unsignedLongLongValue3);
    }

    else
    {
      xpc_dictionary_set_BOOL(v8, "userInfoValNil", 1);
    }

    v12 = v8;
    v13 = 6;
  }

  else
  {
    if (![key isEqualToString:@"NSProgressFileTotalCountKey"])
    {
      return;
    }

    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_BOOL(v8, "isUserInfo", 1);
    if (valueCopy)
    {
      if (_NSIsNSNumber())
      {
        unsignedLongLongValue4 = [valueCopy unsignedLongLongValue];
      }

      else
      {
        unsignedLongLongValue4 = 0;
      }

      xpc_dictionary_set_uint64(v8, "userInfoVal", unsignedLongLongValue4);
    }

    else
    {
      xpc_dictionary_set_BOOL(v8, "userInfoValNil", 1);
    }

    v12 = v8;
    v13 = 5;
  }

  xpc_dictionary_set_uint64(v12, "userInfoKey", v13);
  if (v8)
  {
    [(NSXPCConnection *)self->_parentConnection _sendProgressMessage:v8 forSequence:self->_sequence];
    xpc_release(v8);
  }
}

- (void)setCancellable:(BOOL)cancellable
{
  cancellableCopy = cancellable;
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = _NSProgressWithRemoteParent;
  [(NSProgress *)&v5 setCancellable:?];
  [(_NSProgressWithRemoteParent *)self _sendCancellableOrPausableUpdate:cancellableCopy stringKey:"isCancellable" intKey:7];
}

- (void)setPausable:(BOOL)pausable
{
  pausableCopy = pausable;
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = _NSProgressWithRemoteParent;
  [(NSProgress *)&v5 setPausable:?];
  [(_NSProgressWithRemoteParent *)self _sendCancellableOrPausableUpdate:pausableCopy stringKey:"isPausable" intKey:8];
}

- (void)_sendCancellableOrPausableUpdate:(BOOL)update stringKey:(const char *)key intKey:(int)intKey
{
  v9 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v9, "isUserInfo", 1);
  xpc_dictionary_set_uint64(v9, "userInfoKey", intKey);
  xpc_dictionary_set_BOOL(v9, key, update);
  [(NSXPCConnection *)self->_parentConnection _sendProgressMessage:v9 forSequence:self->_sequence];

  xpc_release(v9);
}

@end