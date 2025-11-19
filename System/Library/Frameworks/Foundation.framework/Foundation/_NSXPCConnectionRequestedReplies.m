@interface _NSXPCConnectionRequestedReplies
- (id)progressForSequence:(id)result;
- (void)beginTransactionForSequence:(const char *)a3 selector:(const void *)a4 reply:(const void *)a5 withProgress:;
- (void)dealloc;
- (void)endTransactionForSequence:(uint64_t)a3 completionHandler:;
- (void)invalidate;
@end

@implementation _NSXPCConnectionRequestedReplies

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  replyDictionaryTable = self->_replyDictionaryTable;
  if (replyDictionaryTable)
  {
    CFRelease(replyDictionaryTable);
  }

  replyTransactionTable = self->_replyTransactionTable;
  if (replyTransactionTable)
  {
    CFRelease(replyTransactionTable);
  }

  progressTable = self->_progressTable;
  if (progressTable)
  {
    CFRelease(progressTable);
  }

  v6.receiver = self;
  v6.super_class = _NSXPCConnectionRequestedReplies;
  [(_NSXPCConnectionRequestedReplies *)&v6 dealloc];
}

- (void)invalidate
{
  if (a1)
  {
    os_unfair_lock_lock_with_options();
    *(a1 + 36) = 1;
    v2 = *(a1 + 24);
    if (v2)
    {
      CFRelease(v2);
    }

    *(a1 + 24) = 0;
    v3 = *(a1 + 8);
    if (v3)
    {
      CFRelease(v3);
    }

    *(a1 + 8) = 0;
    v4 = *(a1 + 16);
    if (v4)
    {
      CFRelease(v4);
    }

    *(a1 + 16) = 0;

    os_unfair_lock_unlock((a1 + 32));
  }
}

- (void)endTransactionForSequence:(uint64_t)a3 completionHandler:
{
  if (a1)
  {
    os_unfair_lock_lock_with_options();
    v6 = *(a1 + 36);
    if (!*(a1 + 36))
    {
      v7 = *(a1 + 24);
      if (v7)
      {
        CFDictionaryRemoveValue(v7, a2);
      }
    }

    v8 = *(a1 + 8);
    if (v8)
    {
      Value = CFDictionaryGetValue(v8, a2);
      v10 = Value;
      CFDictionaryRemoveValue(*(a1 + 8), a2);
    }

    else
    {
      Value = 0;
    }

    v11 = *(a1 + 16);
    if (v11)
    {
      v12 = CFDictionaryGetValue(v11, a2);
      v13 = v12;
      CFDictionaryRemoveValue(*(a1 + 16), a2);
    }

    else
    {
      v12 = 0;
    }

    os_unfair_lock_unlock((a1 + 32));
    if (!v6)
    {
      (*(a3 + 16))(a3);
    }
  }
}

- (void)beginTransactionForSequence:(const char *)a3 selector:(const void *)a4 reply:(const void *)a5 withProgress:
{
  if (a1)
  {
    os_unfair_lock_lock_with_options();
    if (!*(a1 + 36))
    {
      sel_getName(a3);
      v10 = os_transaction_create();
      if (a5)
      {
        Mutable = *(a1 + 24);
        if (!Mutable)
        {
          Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E4A8], 0, 0, MEMORY[0x1E695E9E8]);
          *(a1 + 24) = Mutable;
        }

        CFDictionarySetValue(Mutable, a2, a5);
      }

      v12 = *(a1 + 8);
      if (!v12)
      {
        v12 = CFDictionaryCreateMutable(*MEMORY[0x1E695E4A8], 1, 0, &_xpcTypeCallbacks);
        *(a1 + 8) = v12;
      }

      CFDictionarySetValue(v12, a2, a4);
      v13 = *(a1 + 16);
      if (!v13)
      {
        v13 = CFDictionaryCreateMutable(*MEMORY[0x1E695E4A8], 1, 0, MEMORY[0x1E695E9E8]);
        *(a1 + 16) = v13;
      }

      CFDictionarySetValue(v13, a2, v10);
    }

    os_unfair_lock_unlock((a1 + 32));
  }
}

- (id)progressForSequence:(id)result
{
  if (result)
  {
    v3 = result;
    os_unfair_lock_lock_with_options();
    if (*(v3 + 36) || (v5 = *(v3 + 3)) == 0)
    {
      v4 = 0;
    }

    else
    {
      v4 = CFDictionaryGetValue(v5, a2);
    }

    os_unfair_lock_unlock(v3 + 8);

    return v4;
  }

  return result;
}

@end