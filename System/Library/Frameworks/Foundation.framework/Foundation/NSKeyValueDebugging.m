@interface NSKeyValueDebugging
@end

@implementation NSKeyValueDebugging

uint64_t __28___NSKeyValueDebugging_init__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DFD0] mainRunLoop];
  v3 = *(a1 + 32);
  v4 = *MEMORY[0x1E695D918];

  return [v2 addTimer:v3 forMode:v4];
}

uint64_t __42___NSKeyValueDebugging__clearWillDidTable__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 24) = 0;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(*(a1 + 32) + 16);
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * v6);
        v8 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:v7];
        if (v8 && *(v8 + 8) >= 1)
        {
          if (_MergedGlobals_132 == 1)
          {
            NSLog(@"<KVODebugging> KVO ISSUE: %@ -- Has called 'will's but did not pair with enough 'did's during the same run loop spin", v7);
          }

          if (qword_1ED43FCE0 != -1)
          {
            dispatch_once(&qword_1ED43FCE0, &__block_literal_global_183);
          }

          v9 = qword_1ED43FCD8;
          if (os_log_type_enabled(qword_1ED43FCD8, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v12 = v7;
            _os_log_error_impl(&dword_18075C000, v9, OS_LOG_TYPE_ERROR, "KVO ISSUE: , key: %{public}@ -- Has called 'will's but did not pair with enough 'did's during the same run loop spin", buf, 0xCu);
          }
        }

        [*(a1 + 40) setObject:objc_msgSend(*(*(a1 + 32) + 32) forKeyedSubscript:{"objectForKeyedSubscript:", v7), v7}];
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v14 objects:v13 count:16];
    }

    while (v4);
  }

  return [*(*(a1 + 32) + 16) removeAllObjects];
}

uint64_t __90___NSKeyValueDebugging__checkConsistencyForStatsWhileOutOfLock_forPair_timingDescription___block_invoke(void *a1)
{
  result = [*(a1[4] + 32) objectForKeyedSubscript:a1[5]];
  if (result == a1[6])
  {
    v3 = a1[5];
    v4 = *(a1[4] + 32);

    return [v4 removeObjectForKey:v3];
  }

  return result;
}

uint64_t __41___NSKeyValueDebugging__checkConsistency__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 32) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

void __66___NSKeyValueDebugging__object_trackChangeForKeyOrKeys_operation___block_invoke(uint64_t a1, void *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v4 = [_NSKeyValueObjectAndKeyPair alloc];
  if (v4)
  {
    v5 = [(_NSKeyValueObjectAndKeyPair *)v4 initWithObject:a2 key:0 context:?];
    if (v5)
    {
      v6 = v5;
      v7 = @"???";
      v8 = *(a1 + 48);
      if (v8 == 1)
      {
        v7 = @"Did change";
      }

      if (v8)
      {
        v9 = v7;
      }

      else
      {
        v9 = @"Will change";
      }

      if (_MergedGlobals_132 == 1)
      {
        NSLog(@"<KVODebugging> %@ -- Note: %@.", v5, v9);
      }

      if (qword_1ED43FCE0 != -1)
      {
        dispatch_once(&qword_1ED43FCE0, &__block_literal_global_183);
      }

      v10 = qword_1ED43FCD8;
      if (os_log_type_enabled(qword_1ED43FCD8, OS_LOG_TYPE_INFO))
      {
        *buf = 138543618;
        *&buf[4] = v6;
        *&buf[12] = 2114;
        *&buf[14] = v9;
        _os_log_impl(&dword_18075C000, v10, OS_LOG_TYPE_INFO, "%{public}@ -- Note: %{public}@.", buf, 0x16u);
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3052000000;
      v50 = __Block_byref_object_copy__19;
      v51 = __Block_byref_object_dispose__19;
      v52 = 0;
      v30 = 0;
      v31 = &v30;
      v32 = 0x2810000000;
      v33 = &unk_181543D8B;
      v34 = 0;
      v35 = 0;
      v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v12 = *(a1 + 40);
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __66___NSKeyValueDebugging__object_trackChangeForKeyOrKeys_operation___block_invoke_105;
      v29[3] = &unk_1E69F6928;
      v29[4] = v12;
      v29[5] = v6;
      v13 = *(a1 + 48);
      v29[8] = buf;
      v29[9] = v13;
      v29[6] = v11;
      v29[7] = &v30;
      os_unfair_lock_lock(v12 + 2);
      __66___NSKeyValueDebugging__object_trackChangeForKeyOrKeys_operation___block_invoke_105(v29);
      os_unfair_lock_unlock(v12 + 2);
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v14 = [v11 countByEnumeratingWithState:&v45 objects:v44 count:16];
      if (v14)
      {
        v15 = *v46;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v46 != v15)
            {
              objc_enumerationMutation(v11);
            }

            v17 = *(*(&v45 + 1) + 8 * i);
            if (v17 && (*(v17 + 16) & 1) == 0)
            {
              v18 = [(_NSKeyValueObjectAndKeyPair *)*(v17 + 8) newCurrentValue];
              *(v17 + 16) = 1;
              [v17 setCurrentValue:v18];
            }
          }

          v14 = [v11 countByEnumeratingWithState:&v45 objects:v44 count:16];
        }

        while (v14);
      }

      if (*(v31 + 32) == 1)
      {
        if (_MergedGlobals_132 == 1)
        {
          NSLog(@"KVO ISSUE: %@ -- Has become reentrant ('will' called after 'did') -- in thread: %@, backtrace: %@", v6, +[NSThread currentThread](NSThread, "currentThread"), +[NSThread callStackSymbols]);
        }

        if (qword_1ED43FCE0 != -1)
        {
          dispatch_once(&qword_1ED43FCE0, &__block_literal_global_183);
        }

        v19 = qword_1ED43FCD8;
        if (os_log_type_enabled(qword_1ED43FCD8, OS_LOG_TYPE_ERROR))
        {
          v22 = +[NSThread currentThread];
          v23 = +[NSThread callStackSymbols];
          *v36 = 138543874;
          v37 = v6;
          v38 = 2114;
          v39 = v22;
          v40 = 2114;
          v41 = v23;
          _os_log_error_impl(&dword_18075C000, v19, OS_LOG_TYPE_ERROR, "KVO ISSUE: %{public}@ -- Has become reentrant ('will' called after 'did') -- in thread: %{public}@, backtrace: %{public}@", v36, 0x20u);
        }
      }

      if (*(v31 + 33) == 1)
      {
        if (_MergedGlobals_132 == 1)
        {
          NSLog(@"KVO ISSUE: %@ -- Has called 'did' more times than 'will' -- in thread: %@, backtrace: %@", v6, +[NSThread currentThread](NSThread, "currentThread"), +[NSThread callStackSymbols]);
        }

        if (qword_1ED43FCE0 != -1)
        {
          dispatch_once(&qword_1ED43FCE0, &__block_literal_global_183);
        }

        v20 = qword_1ED43FCD8;
        if (os_log_type_enabled(qword_1ED43FCD8, OS_LOG_TYPE_ERROR))
        {
          v24 = +[NSThread currentThread];
          v25 = +[NSThread callStackSymbols];
          *v36 = 138543874;
          v37 = v6;
          v38 = 2114;
          v39 = v24;
          v40 = 2114;
          v41 = v25;
          _os_log_error_impl(&dword_18075C000, v20, OS_LOG_TYPE_ERROR, "KVO ISSUE: %{public}@ -- Has called 'did' more times than 'will' -- in thread: %{public}@, backtrace: %{public}@", v36, 0x20u);
        }
      }

      if (*(v31 + 34) == 1)
      {
        if (_MergedGlobals_132 == 1)
        {
          NSLog(@"KVO ISSUE: %@ -- Has called 'will' or 'did' for the same key in multiple threads, first will/did recorded in thread %@ -- in thread: %@, backtrace: %@", v6, *(*&buf[8] + 40), +[NSThread currentThread](NSThread, "currentThread"), +[NSThread callStackSymbols]);
        }

        if (qword_1ED43FCE0 != -1)
        {
          dispatch_once(&qword_1ED43FCE0, &__block_literal_global_183);
        }

        v21 = qword_1ED43FCD8;
        if (os_log_type_enabled(qword_1ED43FCD8, OS_LOG_TYPE_ERROR))
        {
          v26 = *(*&buf[8] + 40);
          v27 = +[NSThread currentThread];
          v28 = +[NSThread callStackSymbols];
          *v36 = 138544130;
          v37 = v6;
          v38 = 2114;
          v39 = v26;
          v40 = 2114;
          v41 = v27;
          v42 = 2114;
          v43 = v28;
          _os_log_error_impl(&dword_18075C000, v21, OS_LOG_TYPE_ERROR, "KVO ISSUE: %{public}@ -- Has called 'will' or 'did' for the same key in multiple threads, first will/did recorded in thread %{public}@ -- in thread: %{public}@, backtrace: %{public}@", v36, 0x2Au);
        }
      }

      _Block_object_dispose(&v30, 8);
      _Block_object_dispose(buf, 8);
    }
  }
}

void __66___NSKeyValueDebugging__object_trackChangeForKeyOrKeys_operation___block_invoke_105(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:*(a1 + 40)];
  v3 = v2;
  if (!v2)
  {
    v3 = objc_alloc_init(_NSKeyValueDidWillStats);
  }

  v4 = *(a1 + 72);
  if (v4 == 1)
  {
    if (!v3)
    {
      goto LABEL_37;
    }

    [(_NSKeyValueDidWillStats *)v3 _recordThread];
    *&v3->_hasDecreased = 1;
    count = v3->_count;
    v7 = count < 1;
    v5 = count - 1;
    v3->_count = v5;
    v8 = v7;
    v3->_detectedIssues.hasExcessiveDids = v8;
    goto LABEL_14;
  }

  if (v4)
  {
    if (!v3)
    {
      goto LABEL_37;
    }

    v5 = v3->_count;
LABEL_14:
    if (v2)
    {
      v9 = 1;
    }

    else
    {
      v9 = v5 == 0;
    }

    if (v9)
    {
      if (v2)
      {
        v10 = v5 == 0;
      }

      else
      {
        v10 = 0;
      }

      if (v10)
      {
        [*(*(a1 + 32) + 16) removeObjectForKey:*(a1 + 40)];
      }
    }

    else
    {
      [*(*(a1 + 32) + 16) setObject:v3 forKeyedSubscript:*(a1 + 40)];
    }

    objc_copyStruct(&dest, &v3->_detectedIssues, 3, 1, 0);
    receiver = dest.receiver;
    v12 = *(*(a1 + 56) + 8);
    *(v12 + 34) = BYTE2(dest.receiver);
    *(v12 + 32) = receiver;
    if (*(*(*(a1 + 56) + 8) + 34) == 1)
    {
      originalThread = v3->_originalThread;
LABEL_27:
      *(*(*(a1 + 64) + 8) + 40) = originalThread;
      goto LABEL_28;
    }

    goto LABEL_28;
  }

  if (v3)
  {
    [(_NSKeyValueDidWillStats *)v3 _recordThread];
    v3->_detectedIssues.hasBecomeReentrant = v3->_hasDecreased;
    v3->_hasDecreased = 0;
    v5 = v3->_count + 1;
    v3->_count = v5;
    goto LABEL_14;
  }

LABEL_37:
  if (v2)
  {
    [*(*(a1 + 32) + 16) removeObjectForKey:*(a1 + 40)];
  }

  v18 = *(*(a1 + 56) + 8);
  *(v18 + 34) = 0;
  *(v18 + 32) = 0;
  if (*(*(*(a1 + 56) + 8) + 34))
  {
    originalThread = 0;
    goto LABEL_27;
  }

LABEL_28:
  if (*(a1 + 72))
  {
    v14 = [_NSKeyValueReturnedValueConsistencyStats alloc];
    if (v14)
    {
      v15 = *(a1 + 40);
      dest.receiver = v14;
      dest.super_class = _NSKeyValueReturnedValueConsistencyStats;
      v16 = objc_msgSendSuper2(&dest, sel_init);
      if (v16)
      {
        v16[1] = [v15 copy];
      }
    }

    else
    {
      v16 = 0;
    }

    [*(*(a1 + 32) + 32) setObject:v16 forKeyedSubscript:*(a1 + 40)];
    [*(a1 + 48) addObject:v16];
  }

  else
  {
    [*(*(a1 + 32) + 32) removeObjectForKey:*(a1 + 40)];
  }

  v17 = *(a1 + 32);
  if ((*(v17 + 24) & 1) == 0)
  {
    *(v17 + 24) = 1;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __66___NSKeyValueDebugging__object_trackChangeForKeyOrKeys_operation___block_invoke_2;
    v19[3] = &unk_1E69F2C00;
    v19[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], v19);
  }
}

void __66___NSKeyValueDebugging_object_willAddObserver_forKeyPath_context___block_invoke(void *a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1[4] + 48) objectForKeyedSubscript:a1[5]];
  v3 = a1[6];
  if (v2)
  {

    [v2 addObject:v3];
  }

  else
  {
    v5[0] = a1[6];
    v4 = [objc_msgSend(MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:{1), "mutableCopy"}];
    [*(a1[4] + 48) setObject:v4 forKeyedSubscript:a1[5]];
  }
}

void __66___NSKeyValueDebugging_object_willAddObserver_forKeyPath_context___block_invoke_2(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3052000000;
  v20 = __Block_byref_object_copy__19;
  v21 = __Block_byref_object_dispose__19;
  v22 = 0;
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __66___NSKeyValueDebugging_object_willAddObserver_forKeyPath_context___block_invoke_3;
  v14 = &unk_1E69F64B0;
  v16 = &v17;
  v15 = *(a1 + 32);
  v2 = v15;
  os_unfair_lock_lock((v15 + 8));
  __66___NSKeyValueDebugging_object_willAddObserver_forKeyPath_context___block_invoke_3(&v11);
  os_unfair_lock_unlock(v2 + 2);
  v3 = [v18[5] indexesOfObjectsPassingTest:&__block_literal_global_124];
  [v18[5] removeObjectsAtIndexes:v3];
  if ([v18[5] count])
  {
    if (_MergedGlobals_132 == 1)
    {
      v8 = *(a1 + 40);
      v9 = v18[5];
      v10 = +[NSThread callStackSymbols];
      NSLog(@"<KVODebugging> KVO ISSUE -- MAY CAUSE CRASHES -- An observer was deallocated before it removed itself from its outstanding observations, while those objects remain active in memory. Observer: %@, Outstanding observations: %@, Deallocated at: %@", v8, v9, v10, v11, v12);
    }

    if (qword_1ED43FCE0 != -1)
    {
      dispatch_once(&qword_1ED43FCE0, &__block_literal_global_183);
    }

    v4 = qword_1ED43FCD8;
    if (os_log_type_enabled(qword_1ED43FCD8, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 40);
      v6 = v18[5];
      v7 = +[NSThread callStackSymbols];
      *buf = 138543874;
      v24 = v5;
      v25 = 2114;
      v26 = v6;
      v27 = 2114;
      v28 = v7;
      _os_log_error_impl(&dword_18075C000, v4, OS_LOG_TYPE_ERROR, "KVO ISSUE -- MAY CAUSE CRASHES -- An observer was deallocated before it removed itself from its outstanding observations, while those objects remain active in memory. Observer: %{public}@, Outstanding observations: %{public}@, Deallocated at: %{public}@", buf, 0x20u);
    }
  }

  _Block_object_dispose(&v17, 8);
}

uint64_t __66___NSKeyValueDebugging_object_willAddObserver_forKeyPath_context___block_invoke_3(void *a1)
{
  *(*(a1[6] + 8) + 40) = [*(a1[4] + 48) objectForKeyedSubscript:a1[5]];
  v2 = a1[5];
  v3 = *(a1[4] + 48);

  return [v3 removeObjectForKey:v2];
}

uint64_t __69___NSKeyValueDebugging_object_willRemoveObserver_forKeyPath_context___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [objc_msgSend(*(*(a1 + 32) + 48) "allKeys")];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  result = [v2 countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v16;
    do
    {
      v6 = 0;
      do
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v15 + 1) + 8 * v6);
        if ([(_NSKeyValueObjectAndKeyPair *)v7 objectWasDeallocated])
        {
LABEL_7:
          [*(*(a1 + 32) + 48) removeObjectForKey:v7];
          goto LABEL_13;
        }

        if (v7)
        {
          v8 = *(v7 + 16);
        }

        else
        {
          v8 = 0;
        }

        if (v8 == *(a1 + 40))
        {
          v9 = [*(*(a1 + 32) + 48) objectForKeyedSubscript:v7];
          v12[0] = MEMORY[0x1E69E9820];
          v12[1] = 3221225472;
          v12[2] = __69___NSKeyValueDebugging_object_willRemoveObserver_forKeyPath_context___block_invoke_2;
          v12[3] = &unk_1E69F69C0;
          v13 = *(a1 + 48);
          v10 = [v9 indexesOfObjectsPassingTest:v12];
          v11 = [v10 count];
          if (v11 >= [v9 count])
          {
            goto LABEL_7;
          }

          [v9 removeObjectsAtIndexes:v10];
        }

LABEL_13:
        ++v6;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v15 objects:v14 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

BOOL __69___NSKeyValueDebugging_object_willRemoveObserver_forKeyPath_context___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if ([(_NSKeyValueObjectAndKeyPair *)a2 objectWasDeallocated])
  {
    return 1;
  }

  if (a2)
  {
    v5 = *(a2 + 16);
  }

  else
  {
    v5 = 0;
  }

  if (v5 != *(a1 + 32))
  {
    return 0;
  }

  v6 = *(a1 + 40);
  if (!v6)
  {
    return 1;
  }

  if (a2)
  {
    v7 = *(a2 + 32);
  }

  else
  {
    v7 = 0;
  }

  return v6 == v7;
}

@end