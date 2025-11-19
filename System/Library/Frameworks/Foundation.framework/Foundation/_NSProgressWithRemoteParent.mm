@interface _NSProgressWithRemoteParent
- (void)_sendCancellableOrPausableUpdate:(BOOL)a3 stringKey:(const char *)a4 intKey:(int)a5;
- (void)_setUserInfoValue:(id)a3 forKey:(id)a4 fromChild:(BOOL)a5;
- (void)_updateFractionCompleted:(_NSProgressFractionTuple *)a3;
- (void)dealloc;
- (void)setCancellable:(BOOL)a3;
- (void)setPausable:(BOOL)a3;
@end

@implementation _NSProgressWithRemoteParent

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = _NSProgressWithRemoteParent;
  [(NSProgress *)&v3 dealloc];
}

- (void)_updateFractionCompleted:(_NSProgressFractionTuple *)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = _NSProgressWithRemoteParent;
  v5 = *&a3->var0.overflowed;
  v9[0] = *&a3->var0.completed;
  v9[1] = v5;
  v9[2] = *&a3->var1.total;
  [(NSProgress *)&v10 _updateFractionCompleted:v9];
  if ((_NSProgressFractionIsEqual(&a3->var0.completed, &a3->var1.completed) & 1) == 0)
  {
    v6 = xpc_dictionary_create(0, 0, 0);
    completed = a3->var1.completed;
    total = a3->var1.total;
    xpc_dictionary_set_uint64(v6, "completedCount", completed);
    xpc_dictionary_set_uint64(v6, "totalCount", total);
    [(NSXPCConnection *)self->_parentConnection _sendProgressMessage:v6 forSequence:self->_sequence];
    xpc_release(v6);
  }
}

- (void)_setUserInfoValue:(id)a3 forKey:(id)a4 fromChild:(BOOL)a5
{
  v6 = a3;
  v18 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = _NSProgressWithRemoteParent;
  [(NSProgress *)&v17 _setUserInfoValue:a3 forKey:a4 fromChild:a5];
  if ([a4 isEqualToString:@"NSProgressThroughputKey"])
  {
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_BOOL(v8, "isUserInfo", 1);
    if (v6)
    {
      if (_NSIsNSNumber())
      {
        v9 = [v6 unsignedLongLongValue];
      }

      else
      {
        v9 = 0;
      }

      xpc_dictionary_set_uint64(v8, "userInfoVal", v9);
    }

    else
    {
      xpc_dictionary_set_BOOL(v8, "userInfoValNil", 1);
    }

    v12 = v8;
    v13 = 1;
  }

  else if ([a4 isEqualToString:@"NSProgressEstimatedTimeRemainingKey"])
  {
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_BOOL(v8, "isUserInfo", 1);
    if (v6)
    {
      if (_NSIsNSNumber())
      {
        v10 = [v6 unsignedLongLongValue];
      }

      else
      {
        v10 = 0;
      }

      xpc_dictionary_set_uint64(v8, "userInfoVal", v10);
    }

    else
    {
      xpc_dictionary_set_BOOL(v8, "userInfoValNil", 1);
    }

    v12 = v8;
    v13 = 2;
  }

  else if ([a4 isEqualToString:@"_NSProgressRemoteLocalizedDescriptionKey"])
  {
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_BOOL(v8, "isUserInfo", 1);
    v11 = _NSIsNSString();
    if (v6 && v11)
    {
      if ([v6 length] >= 0x401)
      {
        v6 = [v6 substringWithRange:{0, 1024}];
      }

      xpc_dictionary_set_string(v8, "userInfoVal", [v6 UTF8String]);
    }

    else
    {
      xpc_dictionary_set_BOOL(v8, "userInfoValNil", 1);
    }

    v12 = v8;
    v13 = 3;
  }

  else if ([a4 isEqualToString:@"_NSProgressRemoteLocalizedAdditionalDescriptionKey"])
  {
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_BOOL(v8, "isUserInfo", 1);
    v14 = _NSIsNSString();
    if (v6 && v14)
    {
      if ([v6 length] >= 0x401)
      {
        v6 = [v6 substringWithRange:{0, 1024}];
      }

      xpc_dictionary_set_string(v8, "userInfoVal", [v6 UTF8String]);
    }

    else
    {
      xpc_dictionary_set_BOOL(v8, "userInfoValNil", 1);
    }

    v12 = v8;
    v13 = 4;
  }

  else if ([a4 isEqualToString:@"NSProgressFileCompletedCountKey"])
  {
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_BOOL(v8, "isUserInfo", 1);
    if (v6)
    {
      if (_NSIsNSNumber())
      {
        v15 = [v6 unsignedLongLongValue];
      }

      else
      {
        v15 = 0;
      }

      xpc_dictionary_set_uint64(v8, "userInfoVal", v15);
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
    if (![a4 isEqualToString:@"NSProgressFileTotalCountKey"])
    {
      return;
    }

    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_BOOL(v8, "isUserInfo", 1);
    if (v6)
    {
      if (_NSIsNSNumber())
      {
        v16 = [v6 unsignedLongLongValue];
      }

      else
      {
        v16 = 0;
      }

      xpc_dictionary_set_uint64(v8, "userInfoVal", v16);
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

- (void)setCancellable:(BOOL)a3
{
  v3 = a3;
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = _NSProgressWithRemoteParent;
  [(NSProgress *)&v5 setCancellable:?];
  [(_NSProgressWithRemoteParent *)self _sendCancellableOrPausableUpdate:v3 stringKey:"isCancellable" intKey:7];
}

- (void)setPausable:(BOOL)a3
{
  v3 = a3;
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = _NSProgressWithRemoteParent;
  [(NSProgress *)&v5 setPausable:?];
  [(_NSProgressWithRemoteParent *)self _sendCancellableOrPausableUpdate:v3 stringKey:"isPausable" intKey:8];
}

- (void)_sendCancellableOrPausableUpdate:(BOOL)a3 stringKey:(const char *)a4 intKey:(int)a5
{
  v9 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v9, "isUserInfo", 1);
  xpc_dictionary_set_uint64(v9, "userInfoKey", a5);
  xpc_dictionary_set_BOOL(v9, a4, a3);
  [(NSXPCConnection *)self->_parentConnection _sendProgressMessage:v9 forSequence:self->_sequence];

  xpc_release(v9);
}

@end