@interface GCHIDEventSubjectAuditor
@end

@implementation GCHIDEventSubjectAuditor

__CFString *__45___GCHIDEventSubjectAuditor_initWithSubject___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = objc_loadWeakRetained(WeakRetained + 1);
    v8 = v7;
    if (v7)
    {
      v9 = [v7 pausedForReasons];
      v10 = [v9 allObjects];
      [v4 setObject:v10 forKeyedSubscript:@"PausedForReasons"];
    }

    v11 = MEMORY[0x1E696AD98];
    v12 = atomic_load(v6 + 4);
    v13 = [v11 numberWithUnsignedLongLong:v12];
    [v4 setObject:v13 forKeyedSubscript:@"PausedForReasonsChangeCount"];

    os_unfair_lock_lock(v6 + 4);
    v14 = [v6[3] copy];
    os_unfair_lock_unlock(v6 + 4);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __45___GCHIDEventSubjectAuditor_initWithSubject___block_invoke_2;
    v17[3] = &unk_1E84195A0;
    v18 = v4;
    [v14 enumerateKeysAndObjectsUsingBlock:v17];

    v15 = @"GCHIDEventSubject";
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void __45___GCHIDEventSubjectAuditor_initWithSubject___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v9 = [(_GCHIDServiceAuditor *)a3 state];
  v6 = MEMORY[0x1E696AEC0];
  v7 = [v5 unsignedLongLongValue];

  v8 = [v6 stringWithFormat:@"%#010llx", v7];
  [v4 setObject:v9 forKey:v8];
}

@end