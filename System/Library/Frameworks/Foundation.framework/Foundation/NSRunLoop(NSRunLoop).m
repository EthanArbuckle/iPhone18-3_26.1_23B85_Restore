@interface NSRunLoop(NSRunLoop)
+ (id)_new:()NSRunLoop;
+ (uint64_t)currentRunLoop;
+ (uint64_t)mainRunLoop;
- (CFArrayRef)allModes;
- (__CFRunLoop)currentMode;
- (__CFString)description;
- (id)dealloc;
- (uint64_t)_containsPort:()NSRunLoop forMode:;
- (uint64_t)_enumerateInfoPairsWithBlock:()NSRunLoop;
- (uint64_t)_portInvalidated:()NSRunLoop;
- (uint64_t)_removePort:()NSRunLoop forMode:;
- (uint64_t)acceptInputForMode:()NSRunLoop beforeDate:;
- (uint64_t)addPort:()NSRunLoop forMode:;
- (uint64_t)containsPort:()NSRunLoop forMode:;
- (uint64_t)containsTimer:()NSRunLoop forMode:;
- (uint64_t)limitDateForMode:()NSRunLoop;
- (uint64_t)performBlock:()NSRunLoop;
- (uint64_t)removePort:()NSRunLoop forMode:;
- (uint64_t)run;
- (uint64_t)runMode:()NSRunLoop beforeDate:;
- (uint64_t)runMode:()NSRunLoop untilDate:;
- (void)_addPort:()NSRunLoop forMode:;
- (void)_wakeup;
- (void)addTimer:()NSRunLoop forMode:;
- (void)performInModes:()NSRunLoop block:;
- (void)removeTimer:()NSRunLoop forMode:;
- (void)runUntilDate:()NSRunLoop;
@end

@implementation NSRunLoop(NSRunLoop)

- (uint64_t)run
{
  v2 = *MEMORY[0x1E695E8E0];
  do
  {
    result = [a1 runMode:v2 beforeDate:{objc_msgSend(MEMORY[0x1E695DF00], "distantFuture")}];
  }

  while ((result & 1) != 0);
  return result;
}

+ (uint64_t)currentRunLoop
{
  _CFAutoreleasePoolPush();
  CFRunLoopGetCurrent();
  v0 = _CFRunLoopGet2();
  _CFAutoreleasePoolPop();
  return v0;
}

+ (uint64_t)mainRunLoop
{
  _CFAutoreleasePoolPush();
  CFRunLoopGetMain();
  v0 = _CFRunLoopGet2();
  _CFAutoreleasePoolPop();
  return v0;
}

- (__CFRunLoop)currentMode
{
  result = [a1 getCFRunLoop];
  if (result)
  {
    v2 = CFRunLoopCopyCurrentMode(result);

    return v2;
  }

  return result;
}

- (id)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:name:object:" name:a1 object:@"NSPortDidBecomeInvalidNotification", 0];
  [a1 _deallocHelper];
  v3.receiver = a1;
  v3.super_class = &off_1EEF96098;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

- (uint64_t)_enumerateInfoPairsWithBlock:()NSRunLoop
{
  v17 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [a1 _info];
  result = [v4 countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (result)
  {
    v6 = result;
    v7 = 0;
    v8 = 0;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v4);
        }

        if (v7)
        {
          result = (*(a3 + 16))(a3, v8, *(*(&v13 + 1) + 8 * v10), v7 - 1, &v11);
          if (v11)
          {
            return result;
          }
        }

        else
        {
          v8 = *(*(&v13 + 1) + 8 * v10);
        }

        ++v7;
        ++v10;
      }

      while (v6 != v10);
      result = [v4 countByEnumeratingWithState:&v13 objects:v12 count:16];
      v6 = result;
    }

    while (result);
  }

  return result;
}

- (uint64_t)_portInvalidated:()NSRunLoop
{
  v18 = *MEMORY[0x1E69E9840];
  objc_sync_enter(a1);
  _CFAutoreleasePoolPush();
  v5 = [a3 object];
  v6 = [MEMORY[0x1E695DFA8] set];
  v7 = +[(NSIndexSet *)NSMutableIndexSet];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __41__NSRunLoop_NSRunLoop___portInvalidated___block_invoke;
  v12[3] = &unk_1E69F5EA0;
  v12[4] = v5;
  v12[5] = v6;
  v12[6] = v7;
  [a1 _enumerateInfoPairsWithBlock:v12];
  [objc_msgSend(a1 "_info")];
  while ([objc_msgSend(a1 "_ports")])
  {
    [objc_msgSend(a1 "_ports")];
  }

  [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:name:object:" name:a1 object:@"NSPortDidBecomeInvalidNotification", v5];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v8)
  {
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v5 removeFromRunLoop:a1 forMode:*(*(&v14 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v13 count:16];
    }

    while (v8);
  }

  _CFAutoreleasePoolPop();
  return objc_sync_exit(a1);
}

- (uint64_t)_containsPort:()NSRunLoop forMode:
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  objc_sync_enter(a1);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __46__NSRunLoop_NSRunLoop___containsPort_forMode___block_invoke;
  v9[3] = &unk_1E69F5EC8;
  v9[4] = a3;
  v9[5] = a4;
  v9[6] = &v10;
  [a1 _enumerateInfoPairsWithBlock:v9];
  objc_sync_exit(a1);
  v7 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v7;
}

- (void)_addPort:()NSRunLoop forMode:
{
  if (a3)
  {
    v6 = result;
    objc_sync_enter(result);
    _CFAutoreleasePoolPush();
    if ([objc_msgSend(v6 "_ports")])
    {
      v7 = [v6 _containsPort:a3 forMode:a4] ^ 1;
    }

    else
    {
      [+[NSNotificationCenter defaultCenter](NSNotificationCenter addObserver:"addObserver:selector:name:object:" selector:v6 name:sel__portInvalidated_ object:@"NSPortDidBecomeInvalidNotification", a3];
      v7 = 1;
    }

    [objc_msgSend(v6 "_ports")];
    [objc_msgSend(v6 "_info")];
    v8 = [a4 copy];
    [objc_msgSend(v6 "_info")];

    if (v7)
    {
      [a3 scheduleInRunLoop:v6 forMode:v8];
    }

    _CFAutoreleasePoolPop();

    return objc_sync_exit(v6);
  }

  return result;
}

- (uint64_t)_removePort:()NSRunLoop forMode:
{
  v20 = *MEMORY[0x1E69E9840];
  objc_sync_enter(a1);
  _CFAutoreleasePoolPush();
  v7 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0x7FFFFFFFFFFFFFFFLL;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __44__NSRunLoop_NSRunLoop___removePort_forMode___block_invoke;
  v11[3] = &unk_1E69F5EF0;
  v11[4] = a3;
  v11[5] = a4;
  v11[6] = &v16;
  v11[7] = &v12;
  [a1 _enumerateInfoPairsWithBlock:v11];
  if (v17[3] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [a1 _info];
    [v8 removeObjectsInRange:{v17[3], 2}];
  }

  v9 = [a1 _ports];
  [v9 removeObject:a3];
  if (![v9 countForObject:a3])
  {
    [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:name:object:" name:a1 object:@"NSPortDidBecomeInvalidNotification", a3];
  }

  if (*(v13 + 24) == 1)
  {
    [a3 removeFromRunLoop:a1 forMode:a4];
  }

  _CFAutoreleasePoolPop();
  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);
  return objc_sync_exit(a1);
}

+ (id)_new:()NSRunLoop
{
  v4 = objc_opt_self();
  v5 = NSAllocateObject(v4, 0, 0);
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  [v5 _initWithRl:a3 dperf:v6 perft:v7 info:v8 ports:objc_opt_new()];

  return v5;
}

- (__CFString)description
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = [a1 getCFRunLoop];
  if (v2)
  {
    v3 = CFCopyDescription(v2);

    return v3;
  }

  else
  {
    v5.receiver = a1;
    v5.super_class = &off_1EEF96098;
    return objc_msgSendSuper2(&v5, sel_description);
  }
}

- (uint64_t)addPort:()NSRunLoop forMode:
{
  v4 = a4;
  if ((!a3 || !a4) && _CFExecutableLinkedOnOrAfter())
  {
    v9 = _NSMethodExceptionProem(a1, a2);
    v10 = "port";
    if (a3)
    {
      v10 = "mode";
    }

    v11 = [NSString stringWithFormat:@"%@: %s argument cannot be nil", v9, v10];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v11 userInfo:0]);
  }

  result = [(objc_class *)a1 getCFRunLoop];
  if (result)
  {
    if ([v4 isEqual:@"NSDefaultRunLoopMode"])
    {
      v4 = *MEMORY[0x1E695E8E0];
    }

    if (v4 == *MEMORY[0x1E695DA28] || [v4 isEqual:@"kCFRunLoopCommonModes"])
    {
      v4 = *MEMORY[0x1E695E8D0];
    }

    return [(objc_class *)a1 _addPort:a3 forMode:v4];
  }

  return result;
}

- (uint64_t)removePort:()NSRunLoop forMode:
{
  v4 = a4;
  if (!a4 && _CFExecutableLinkedOnOrAfter())
  {
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: mode argument cannot be nil", _NSMethodExceptionProem(a1, a2)), 0}];
    objc_exception_throw(v9);
  }

  result = [(objc_class *)a1 getCFRunLoop];
  if (a3 && result)
  {
    if ([v4 isEqual:@"NSDefaultRunLoopMode"])
    {
      v4 = *MEMORY[0x1E695E8E0];
    }

    if (v4 == *MEMORY[0x1E695DA28] || [v4 isEqual:@"kCFRunLoopCommonModes"])
    {
      v4 = *MEMORY[0x1E695E8D0];
    }

    return [(objc_class *)a1 _removePort:a3 forMode:v4];
  }

  return result;
}

- (uint64_t)containsPort:()NSRunLoop forMode:
{
  v4 = a4;
  if (!a4 && _CFExecutableLinkedOnOrAfter())
  {
    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: mode argument cannot be nil", _NSMethodExceptionProem(a1, a2)), 0}];
    objc_exception_throw(v10);
  }

  v8 = [(objc_class *)a1 getCFRunLoop];
  if (!a3 || !v8)
  {
    return 0;
  }

  if ([v4 isEqual:@"NSDefaultRunLoopMode"])
  {
    v4 = *MEMORY[0x1E695E8E0];
  }

  if (v4 == *MEMORY[0x1E695DA28] || [v4 isEqual:@"kCFRunLoopCommonModes"])
  {
    v4 = *MEMORY[0x1E695E8D0];
  }

  return [(objc_class *)a1 _containsPort:a3 forMode:v4];
}

- (void)addTimer:()NSRunLoop forMode:
{
  v4 = a4;
  if (!a4 && _CFExecutableLinkedOnOrAfter())
  {
    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: mode argument cannot be nil", _NSMethodExceptionProem(a1, a2)), 0}];
    objc_exception_throw(v10);
  }

  v8 = [(objc_class *)a1 getCFRunLoop];
  if (v8)
  {
    v9 = v8;
    if ([(__CFString *)v4 isEqual:@"NSDefaultRunLoopMode"])
    {
      v4 = *MEMORY[0x1E695E8E0];
    }

    if (v4 == *MEMORY[0x1E695DA28] || [(__CFString *)v4 isEqual:@"kCFRunLoopCommonModes"])
    {
      v4 = *MEMORY[0x1E695E8D0];
    }

    CFRunLoopAddTimer(v9, a3, v4);
  }
}

- (void)removeTimer:()NSRunLoop forMode:
{
  v4 = a4;
  if (!a4 && _CFExecutableLinkedOnOrAfter())
  {
    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: mode argument cannot be nil", _NSMethodExceptionProem(a1, a2)), 0}];
    objc_exception_throw(v10);
  }

  v8 = [(objc_class *)a1 getCFRunLoop];
  if (v8)
  {
    v9 = v8;
    if ([(__CFString *)v4 isEqual:@"NSDefaultRunLoopMode"])
    {
      v4 = *MEMORY[0x1E695E8E0];
    }

    if (v4 == *MEMORY[0x1E695DA28] || [(__CFString *)v4 isEqual:@"kCFRunLoopCommonModes"])
    {
      v4 = *MEMORY[0x1E695E8D0];
    }

    CFRunLoopRemoveTimer(v9, a3, v4);
  }
}

- (uint64_t)containsTimer:()NSRunLoop forMode:
{
  v4 = a4;
  if (!a4 && _CFExecutableLinkedOnOrAfter())
  {
    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: mode argument cannot be nil", _NSMethodExceptionProem(a1, a2)), 0}];
    objc_exception_throw(v10);
  }

  result = [(objc_class *)a1 getCFRunLoop];
  if (result)
  {
    v9 = result;
    if ([(__CFString *)v4 isEqual:@"NSDefaultRunLoopMode"])
    {
      v4 = *MEMORY[0x1E695E8E0];
    }

    if (v4 == *MEMORY[0x1E695DA28] || [(__CFString *)v4 isEqual:@"kCFRunLoopCommonModes"])
    {
      v4 = *MEMORY[0x1E695E8D0];
    }

    return CFRunLoopContainsTimer(v9, a3, v4) != 0;
  }

  return result;
}

- (CFArrayRef)allModes
{
  v1 = [a1 getCFRunLoop];
  if (v1)
  {
    v2 = CFRunLoopCopyAllModes(v1);

    return v2;
  }

  else
  {
    v4 = MEMORY[0x1E695DEC8];

    return [v4 array];
  }
}

- (uint64_t)limitDateForMode:()NSRunLoop
{
  v3 = a3;
  if (!a3 && _CFExecutableLinkedOnOrAfter())
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: mode argument cannot be nil", _NSMethodExceptionProem(a1, a2)), 0}];
    objc_exception_throw(v11);
  }

  v6 = [(objc_class *)a1 getCFRunLoop];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  if (!_CFRunLoopIsCurrent())
  {
    return 0;
  }

  if ([(__CFString *)v3 isEqual:@"NSDefaultRunLoopMode"])
  {
    v3 = *MEMORY[0x1E695E8E0];
  }

  CFRunLoopRunInMode(v3, -10.0, 1u);
  if (_CFRunLoopFinished())
  {
    return 0;
  }

  NextTimerFireDate = CFRunLoopGetNextTimerFireDate(v7, v3);
  v10 = MEMORY[0x1E695DF00];
  if (NextTimerFireDate == 0.0)
  {

    return [v10 distantFuture];
  }

  else
  {

    return [v10 dateWithTimeIntervalSinceReferenceDate:?];
  }
}

- (void)_wakeup
{
  v1 = [a1 getCFRunLoop];
  if (v1)
  {
    v2 = v1;
    CFRunLoopStop(v1);

    CFRunLoopWakeUp(v2);
  }
}

- (uint64_t)acceptInputForMode:()NSRunLoop beforeDate:
{
  v5 = a3;
  if (!a3 && _CFExecutableLinkedOnOrAfter())
  {
    v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: mode argument cannot be nil", _NSMethodExceptionProem(a1, a2)), 0}];
    objc_exception_throw(v13);
  }

  result = [(objc_class *)a1 getCFRunLoop];
  if (result)
  {
    result = _CFRunLoopIsCurrent();
    if (result)
    {
      if ([(__CFString *)v5 isEqual:@"NSDefaultRunLoopMode"])
      {
        v5 = *MEMORY[0x1E695E8E0];
      }

      [a4 timeIntervalSinceReferenceDate];
      v10 = v9;
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v12 = v10 - v11;

      return CFRunLoopRunInMode(v5, v12, 1u);
    }
  }

  return result;
}

- (uint64_t)runMode:()NSRunLoop beforeDate:
{
  v5 = a3;
  if (!a3 && _CFExecutableLinkedOnOrAfter())
  {
    v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: mode argument cannot be nil", _NSMethodExceptionProem(a1, a2)), 0}];
    objc_exception_throw(v13);
  }

  if (![(objc_class *)a1 getCFRunLoop]|| !_CFRunLoopIsCurrent())
  {
    return 0;
  }

  if ([(__CFString *)v5 isEqual:@"NSDefaultRunLoopMode"])
  {
    v5 = *MEMORY[0x1E695E8E0];
  }

  if (_CFRunLoopFinished())
  {
    return 0;
  }

  _CFAutoreleasePoolPush();
  [a4 timeIntervalSinceReferenceDate];
  v11 = v10;
  Current = CFAbsoluteTimeGetCurrent();
  v8 = 1;
  CFRunLoopRunInMode(v5, v11 - Current, 1u);
  _CFAutoreleasePoolPop();
  return v8;
}

- (uint64_t)runMode:()NSRunLoop untilDate:
{
  if (!a3 && _CFExecutableLinkedOnOrAfter())
  {
    v16 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: mode argument cannot be nil", _NSMethodExceptionProem(a1, a2)), 0}];
    objc_exception_throw(v16);
  }

  if (![(objc_class *)a1 getCFRunLoop])
  {
    return 0;
  }

  v8 = a4;
  if ([(objc_class *)a1 runMode:a3 beforeDate:a4])
  {
    [a4 timeIntervalSinceReferenceDate];
    v10 = v9;
    Current = CFAbsoluteTimeGetCurrent();
    if (v10 <= Current)
    {
      v12 = 1;
    }

    else
    {
      do
      {
        v12 = [(objc_class *)a1 runMode:a3 beforeDate:a4];
        if (!v12)
        {
          break;
        }

        [a4 timeIntervalSinceReferenceDate];
      }

      while (v13 > CFAbsoluteTimeGetCurrent());
    }

    if (v10 > Current)
    {
      v14 = 1;
    }

    else
    {
      v14 = v12;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)runUntilDate:()NSRunLoop
{
  v4 = a3;
  v5 = *MEMORY[0x1E695E8E0];
  do
  {
    if (![a1 runMode:v5 beforeDate:a3])
    {
      break;
    }

    [a3 timeIntervalSinceReferenceDate];
  }

  while (v6 > CFAbsoluteTimeGetCurrent());
}

- (void)performInModes:()NSRunLoop block:
{
  if (!a4)
  {
    v9 = [NSString stringWithFormat:@"%@: block targets for run loops cannot be nil", _NSMethodExceptionProem(a1, a2)];
LABEL_9:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v9 userInfo:0]);
  }

  if (!a3 || ![a3 count])
  {
    v9 = [NSString stringWithFormat:@"%@: modes for block performers on run loops cannot be nil or contain no elements", _NSMethodExceptionProem(a1, a2)];
    goto LABEL_9;
  }

  v8 = [(objc_class *)a1 getCFRunLoop];
  CFRunLoopPerformBlock(v8, a3, a4);

  CFRunLoopWakeUp(v8);
}

- (uint64_t)performBlock:()NSRunLoop
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = *MEMORY[0x1E695D918];
  return [a1 performInModes:objc_msgSend(MEMORY[0x1E695DEC8] block:{"arrayWithObjects:count:", v4, 1), a3}];
}

@end