@interface NSMachPort(NSMachPort)
+ (id)port;
+ (id)portWithMachPort:()NSMachPort;
+ (id)portWithMachPort:()NSMachPort options:;
+ (uint64_t)sendBeforeTime:()NSMachPort streamData:components:to:from:msgid:reserved:;
- (BOOL)isEqual:()NSMachPort;
- (BOOL)isValid;
- (CFHashCode)hash;
- (CFIndex)retainCount;
- (uint64_t)delegate;
- (uint64_t)init;
- (uint64_t)isKindOfClass:()NSMachPort;
- (uint64_t)isMemberOfClass:()NSMachPort;
- (uint64_t)machPort;
- (uint64_t)sendBeforeDate:()NSMachPort components:from:reserved:;
- (uint64_t)sendBeforeDate:()NSMachPort msgid:components:from:reserved:;
- (uint64_t)sendBeforeTime:()NSMachPort streamData:components:from:msgid:;
- (unint64_t)retain;
- (void)initWithMachPort:()NSMachPort options:;
- (void)invalidate;
- (void)release;
- (void)removeFromRunLoop:()NSMachPort forMode:;
- (void)scheduleInRunLoop:()NSMachPort forMode:;
- (void)setDelegate:()NSMachPort;
@end

@implementation NSMachPort(NSMachPort)

- (unint64_t)retain
{
  v2 = objc_opt_class();
  if (v2 == objc_opt_class() && (v4 = atomic_load(self + 1)) != 0)
  {

    return CFRetain(self);
  }

  else
  {
    [self _increaseRetainCountWithLock:&_NSGlobalRetainLock];
    if (*MEMORY[0x1E695E0C0] == 1)
    {
      __CFRecordAllocationEvent();
    }

    return self;
  }
}

- (void)release
{
  v4[5] = *MEMORY[0x1E69E9840];
  v2 = objc_opt_class();
  if (v2 == objc_opt_class() && (v3 = atomic_load(self + 1)) != 0)
  {

    CFRelease(self);
  }

  else
  {
    if (*MEMORY[0x1E695E0C0] == 1)
    {
      __CFRecordAllocationEvent();
    }

    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __33__NSMachPort_NSMachPort__release__block_invoke;
    v4[3] = &unk_1E69F2C00;
    v4[4] = self;
    [self _decreaseRetainCountAndMaybeDeallocWithLock:&_NSGlobalRetainLock andPerformWhenZero:v4];
  }
}

- (void)invalidate
{
  v2 = objc_opt_class();
  if (v2 == objc_opt_class() && (v8 = atomic_load(self + 1)) != 0)
  {
    if (CFMachPortIsValid(self))
    {

      CFMachPortInvalidate(self);
    }
  }

  else
  {
    [self setDelegate:0];
    _machPort = [self _machPort];
    if (_machPort)
    {
      v4 = _machPort;
      _flags = [self _flags];
      v6 = MEMORY[0x1E69E9A60];
      if ((_flags & 2) != 0)
      {
        mach_port_mod_refs(*MEMORY[0x1E69E9A60], v4, 1u, -1);
      }

      if (_flags)
      {
        mach_port_deallocate(*v6, v4);
      }

      [self _setMachPort:0];
      v7 = +[NSNotificationCenter defaultCenter];

      [(NSNotificationCenter *)v7 postNotificationName:@"NSPortDidBecomeInvalidNotification" object:self userInfo:0];
    }
  }
}

- (uint64_t)machPort
{
  v2 = objc_opt_class();
  if (v2 == objc_opt_class() && (v4 = atomic_load(self + 1)) != 0)
  {

    return CFMachPortGetPort(self);
  }

  else
  {

    return [self _machPort];
  }
}

+ (id)port
{
  v1 = [objc_allocWithZone(self) init];

  return v1;
}

+ (id)portWithMachPort:()NSMachPort
{
  v3 = [objc_allocWithZone(self) initWithMachPort:a3];

  return v3;
}

+ (id)portWithMachPort:()NSMachPort options:
{
  v4 = [objc_allocWithZone(self) initWithMachPort:a3 options:a4];

  return v4;
}

- (BOOL)isEqual:()NSMachPort
{
  if (!a3)
  {
    return 0;
  }

  v5 = objc_opt_class();
  if (v5 == objc_opt_class() && (v7 = atomic_load(self + 1)) != 0)
  {
    return CFEqual(self, a3) != 0;
  }

  else
  {
    return self == a3;
  }
}

- (CFHashCode)hash
{
  v2 = objc_opt_class();
  if (v2 != objc_opt_class())
  {
    return [self _machPort];
  }

  if (!atomic_load(self + 1))
  {
    return [self _machPort];
  }

  return CFHash(self);
}

- (CFIndex)retainCount
{
  v2 = objc_opt_class();
  if (v2 != objc_opt_class())
  {
    return [self _retainCount] + 1;
  }

  if (!atomic_load(self + 1))
  {
    return [self _retainCount] + 1;
  }

  return CFGetRetainCount(self);
}

- (uint64_t)isKindOfClass:()NSMachPort
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    if (atomic_load(self + 1))
    {
      if (objc_opt_class() == a3)
      {
        return 1;
      }
    }
  }

  v8.receiver = self;
  v8.super_class = &off_1EEF97EB0;
  return objc_msgSendSuper2(&v8, sel_isKindOfClass_, a3);
}

- (uint64_t)isMemberOfClass:()NSMachPort
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    if (atomic_load(self + 1))
    {
      if (objc_opt_class() == a3)
      {
        return 1;
      }
    }
  }

  v8.receiver = self;
  v8.super_class = &off_1EEF97EB0;
  return objc_msgSendSuper2(&v8, sel_isMemberOfClass_, a3);
}

- (BOOL)isValid
{
  v2 = objc_opt_class();
  if (v2 == objc_opt_class() && (v4 = atomic_load(self + 1)) != 0)
  {
    IsValid = CFMachPortIsValid(self);
  }

  else
  {
    IsValid = [self _machPort];
  }

  return IsValid != 0;
}

- (void)setDelegate:()NSMachPort
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_class();
  if (v5 == objc_opt_class() && (v6 = atomic_load(self + 1)) != 0)
  {
    memset(&v7.info, 0, 32);
    if (CFMachPortIsValid(self))
    {
      v7.version = 0;
      CFMachPortGetContext(self, &v7);
      if (v7.info)
      {
        if ((*(v7.info + 4) ^ *(v7.info + 3)) == -1)
        {
          *(v7.info + 1) = a3;
        }
      }
    }
  }

  else
  {

    [self _setDelegate:a3];
  }
}

- (uint64_t)delegate
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_class();
  if (v2 == objc_opt_class() && (v4 = atomic_load(self + 1)) != 0)
  {
    memset(&v5, 0, sizeof(v5));
    CFMachPortGetContext(self, &v5);
    result = 0;
    if ((*(v5.info + 4) ^ *(v5.info + 3)) == -1)
    {
      return *(v5.info + 1);
    }
  }

  else
  {

    return [self _delegate];
  }

  return result;
}

+ (uint64_t)sendBeforeTime:()NSMachPort streamData:components:to:from:msgid:reserved:
{
  v9 = a7;
  v11 = a4;
  v54 = *MEMORY[0x1E69E9840];
  if (!a5)
  {
    v13 = a4 != 0;
    if (objc_opt_respondsToSelector())
    {
      v17 = 40;
      goto LABEL_22;
    }

    if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      v17 = 44;
      goto LABEL_22;
    }

LABEL_21:
    v17 = 28;
    goto LABEL_22;
  }

  v13 = [a5 count];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v14 = [a5 countByEnumeratingWithState:&v50 objects:v49 count:16];
  if (!v14)
  {
    goto LABEL_21;
  }

  v15 = v14;
  v16 = *v51;
  v17 = 28;
  do
  {
    for (i = 0; i != v15; ++i)
    {
      if (*v51 != v16)
      {
        objc_enumerationMutation(a5);
      }

      if (objc_opt_respondsToSelector())
      {
        v19 = 12;
      }

      else if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
      {
        v19 = 16;
      }

      else
      {
        v19 = 0;
      }

      v17 += v19;
    }

    v15 = [a5 countByEnumeratingWithState:&v50 objects:v49 count:16];
  }

  while (v15);
  v9 = a7;
LABEL_22:
  v20 = malloc_type_calloc(1uLL, v17, 0x100004027586B93uLL);
  v21 = v20;
  *(v20 + 4) = 28;
  *(v20 + 3) = 0;
  *(v20 + 5) = 0;
  *(v20 + 6) = v13;
  if (!v13)
  {
    goto LABEL_37;
  }

  v22 = 0;
  v23 = v20 + 28;
  do
  {
    v24 = v11;
    if (a5)
    {
      v24 = [a5 objectAtIndex:v22];
    }

    if (objc_opt_respondsToSelector())
    {
      *v23 = [v24 machPort];
      *(v23 + 5) = 19;
      v23 += 12;
    }

    else if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      v25 = v11;
      v26 = [v24 length];
      bytes = [v24 bytes];
      v28 = a9;
      if (v22)
      {
        v28 = 0;
      }

      v29 = v26 - v28;
      v11 = v25;
      *v23 = bytes + v28;
      *(v23 + 2) = ((v29 >= *MEMORY[0x1E69E9AC8] >> 1) << 8) | (v23[10] << 16) | 0x1000000;
      *(v23 + 3) = v29;
      v23 += 16;
    }

    else
    {
      v30 = objc_opt_class();
      NSLog(@"*** D.O. message send ignoring unknown component type '%@'", v30);
      --v21[1].msgh_bits;
    }

    ++v22;
  }

  while (v13 != v22);
  msgh_bits = v21[1].msgh_bits;
  v21->msgh_size += 16 * msgh_bits;
  v9 = a7;
  if (msgh_bits)
  {
    v32 = 0x80000000;
  }

  else
  {
LABEL_37:
    v32 = 0;
  }

  v21->msgh_bits = v32;
  v33 = self - CFAbsoluteTimeGetCurrent();
  machPort = a6;
  if (v33 < 0.0)
  {
    v35 = 0;
    if (!a6)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  if (v33 >= 4294967.29)
  {
    v35 = 0xFFFFFFFFLL;
    if (!a6)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  v35 = vcvtmd_u64_f64(v33 * 1000.0) + 3;
  if (a6)
  {
LABEL_45:
    machPort = [a6 machPort];
  }

LABEL_46:
  v21->msgh_remote_port = machPort;
  if (v9)
  {
    machPort2 = [v9 machPort];
    v21->msgh_local_port = machPort2;
    v21->msgh_id = a8;
    if (machPort2)
    {
      v37 = 5139;
      goto LABEL_51;
    }
  }

  else
  {
    v21->msgh_local_port = 0;
    v21->msgh_id = a8;
  }

  v37 = 19;
LABEL_51:
  msgh_size = v21->msgh_size;
  v21->msgh_bits |= v37;
  if (v35 == 0xFFFFFFFF)
  {
    v39 = 1;
  }

  else
  {
    v39 = 17;
  }

  v40 = mach_msg(v21, v39, msgh_size, 0, 0, v35, 0);
  free(v21);
  if (v40 <= 268435459)
  {
    if (!v40)
    {
      return 1;
    }

    if (v40 == 268435459)
    {
      [a6 invalidate];
      v42 = MEMORY[0x1E695DF30];
      v43 = @"NSInvalidSendPortException";
      v44 = @"[NSMachPort sendBeforeDate:] destination port invalid";
      goto LABEL_64;
    }

    goto LABEL_63;
  }

  result = 0;
  if (v40 != 268435460)
  {
    if (v40 == 268435465)
    {
      [v9 invalidate];
      v42 = MEMORY[0x1E695DF30];
      v43 = @"NSInvalidReceivePortException";
      v44 = @"[NSMachPort sendBeforeDate:] reply port invalid";
      goto LABEL_64;
    }

LABEL_63:
    v44 = [NSString stringWithFormat:@"[NSMachPort sendBeforeDate:] Cannot send (%s)", mach_error_string(v40)];
    v42 = MEMORY[0x1E695DF30];
    v43 = @"NSPortSendException";
LABEL_64:
    objc_exception_throw([v42 exceptionWithName:v43 reason:v44 userInfo:0]);
  }

  return result;
}

- (uint64_t)sendBeforeTime:()NSMachPort streamData:components:from:msgid:
{
  v13 = objc_opt_class();
  reservedSpaceLength = [self reservedSpaceLength];

  return [v13 sendBeforeTime:a4 streamData:a5 components:self to:a6 from:a7 msgid:reservedSpaceLength reserved:a2];
}

- (uint64_t)sendBeforeDate:()NSMachPort components:from:reserved:
{
  v11 = objc_opt_class();
  [a3 timeIntervalSinceReferenceDate];

  return [v11 sendBeforeTime:0 streamData:a4 components:self to:a5 from:0 msgid:a6 reserved:?];
}

- (uint64_t)sendBeforeDate:()NSMachPort msgid:components:from:reserved:
{
  v13 = objc_opt_class();
  [a3 timeIntervalSinceReferenceDate];

  return [v13 sendBeforeTime:0 streamData:a5 components:self to:a6 from:a4 msgid:a7 reserved:?];
}

- (void)scheduleInRunLoop:()NSMachPort forMode:
{
  if (a3)
  {
    v8 = objc_opt_class();
    if (v8 != objc_opt_class() || (v9 = atomic_load(self + 1)) == 0)
    {
      v12 = NSClassFromString(@"NSMachPort");

      NSRequestConcreteImplementation(self, a2, v12);
    }

    RunLoopSource = CFMachPortCreateRunLoopSource(0, self, 200);
    if (RunLoopSource)
    {
      v11 = RunLoopSource;
      CFRunLoopAddSource([a3 getCFRunLoop], RunLoopSource, a4);

      CFRelease(v11);
    }
  }
}

- (void)removeFromRunLoop:()NSMachPort forMode:
{
  if (a3)
  {
    v8 = objc_opt_class();
    if (v8 != objc_opt_class() || (v9 = atomic_load(self + 1)) == 0)
    {
      v12 = NSClassFromString(@"NSMachPort");

      NSRequestConcreteImplementation(self, a2, v12);
    }

    RunLoopSource = CFMachPortCreateRunLoopSource(0, self, 200);
    if (RunLoopSource)
    {
      v11 = RunLoopSource;
      CFRunLoopRemoveSource([a3 getCFRunLoop], RunLoopSource, a4);

      CFRelease(v11);
    }
  }
}

- (void)initWithMachPort:()NSMachPort options:
{
  v17 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v16.receiver = self;
    v16.super_class = &off_1EEF97EB0;
    objc_msgSendSuper2(&v16, sel_dealloc);
    return 0;
  }

  v7 = objc_opt_class();
  if (v7 != objc_opt_class())
  {
    v12.receiver = self;
    v12.super_class = &off_1EEF97EB0;
    v8 = objc_msgSendSuper2(&v12, sel_init);
    [v8 _setFlags:a4 & 3];
    [v8 _setMachPort:a3];
    return v8;
  }

  v10 = malloc_type_calloc(1uLL, 0x30uLL, 0x1080040E1DEC455uLL);
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  *(v10 + 8) = 0;
  *(v10 + 16) = a4 & 3;
  *(v10 + 24) = ~v10;
  *(v10 + 32) = v10;
  *(v10 + 40) = a3;
  shouldFreeInfo = 0;
  context.version = 0;
  context.info = v10;
  context.retain = 0;
  context.release = __destroyPortContext;
  context.copyDescription = 0;
  v8 = CFMachPortCreateWithPort(0, a3, __NSFireMachPort, &context, &shouldFreeInfo);
  if (v8 && (_cfmp_record_nsmachport_is_interested(), !shouldFreeInfo))
  {
    ptype = 0;
    if (!mach_port_type(*MEMORY[0x1E69E9A60], a3, &ptype) && (ptype & 0x50000) != 0)
    {
      CFMachPortSetInvalidationCallBack(v8, _NSPortDeathNotify);
    }
  }

  else
  {
    free(v11);
  }

  return v8;
}

- (uint64_t)init
{
  v6 = *MEMORY[0x1E69E9840];
  name = 0;
  v2 = MEMORY[0x1E69E9A60];
  if (mach_port_allocate(*MEMORY[0x1E69E9A60], 1u, &name))
  {
    goto LABEL_4;
  }

  if (mach_port_insert_right(*v2, name, name, 0x14u))
  {
    mach_port_mod_refs(*v2, name, 1u, -1);
LABEL_4:
    v4.receiver = self;
    v4.super_class = &off_1EEF97EB0;
    objc_msgSendSuper2(&v4, sel_dealloc);
    return 0;
  }

  result = [self initWithMachPort:name options:3];
  if (!result)
  {
    mach_port_mod_refs(*v2, name, 1u, -1);
    mach_port_deallocate(*v2, name);
    return 0;
  }

  return result;
}

@end