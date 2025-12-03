@interface NSProcessInfo
+ (NSProcessInfo)alloc;
+ (NSProcessInfo)allocWithZone:(_NSZone *)zone;
+ (NSProcessInfo)processInfo;
- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)macCatalystVersion;
- (BOOL)automaticTerminationSupportEnabled;
- (BOOL)isLowPowerModeEnabled;
- (BOOL)macCatalystVersionIsAtLeastVersion:(id *)version;
- (NSArray)arguments;
- (NSDictionary)environment;
- (NSOperatingSystemVersion)operatingSystemVersion;
- (NSProcessInfoThermalState)thermalState;
- (NSString)globallyUniqueString;
- (NSString)hostName;
- (NSString)operatingSystemName;
- (NSString)operatingSystemVersionString;
- (NSString)processName;
- (NSString)userName;
- (NSUInteger)activeProcessorCount;
- (NSUInteger)processorCount;
- (id)beginActivityWithOptions:(unint64_t)options reason:(id)reason expirationHandler:(id)handler;
- (id)beginSuspensionOfSystemBehaviors:(unint64_t)behaviors reason:(id)reason;
- (unint64_t)physicalMemory;
- (void)_reactivateActivity:(id)activity;
- (void)dealloc;
- (void)disableAutomaticTermination:(NSString *)reason;
- (void)enableAutomaticTermination:(NSString *)reason;
- (void)endActivity:(id)activity;
- (void)endSystemBehaviorSuspension:(id)suspension;
- (void)setArguments:(id)arguments;
- (void)setAutomaticTerminationSupportEnabled:(BOOL)automaticTerminationSupportEnabled;
- (void)setProcessName:(NSString *)processName;
@end

@implementation NSProcessInfo

+ (NSProcessInfo)processInfo
{
  if (NSProcessInfo == self)
  {

    return +[_NSSwiftProcessInfo processInfo];
  }

  else
  {
    if (qword_1ED43F9F8 != -1)
    {
      dispatch_once(&qword_1ED43F9F8, &__block_literal_global_39);
    }

    return qword_1ED43FA00;
  }
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSProcessInfo;
  [(NSProcessInfo *)&v3 dealloc];
}

- (NSString)processName
{
  os_unfair_lock_lock_with_options();
  name = self->name;
  if (!name)
  {
    v4 = _CFGetProgname();
    name = CFStringCreateWithFileSystemRepresentation(0, *v4);
    self->name = name;
  }

  v5 = [(NSString *)name copy];
  os_unfair_lock_unlock(&processLock);

  return v5;
}

+ (NSProcessInfo)allocWithZone:(_NSZone *)zone
{
  v7 = *MEMORY[0x1E69E9840];
  if (qword_1ED43FA10 != -1)
  {
    dispatch_once(&qword_1ED43FA10, &__block_literal_global_156);
  }

  if (byte_1ED43F9F1 == 1 && NSProcessInfo == self)
  {

    return [(NSProcessInfo *)_NSSwiftProcessInfo allocWithZone:zone];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___NSProcessInfo;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, zone);
  }
}

+ (NSProcessInfo)alloc
{
  v5 = *MEMORY[0x1E69E9840];
  if (qword_1ED43FA10 != -1)
  {
    dispatch_once(&qword_1ED43FA10, &__block_literal_global_156);
  }

  if (byte_1ED43F9F1 == 1 && NSProcessInfo == self)
  {

    return [_NSSwiftProcessInfo alloc];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = &OBJC_METACLASS___NSProcessInfo;
    return objc_msgSendSuper2(&v4, sel_alloc);
  }
}

uint64_t __28__NSProcessInfo_processInfo__block_invoke()
{
  result = [objc_allocWithZone(NSProcessInfo) init];
  qword_1ED43FA00 = result;
  return result;
}

- (NSString)operatingSystemName
{
  operatingSystem = [(NSProcessInfo *)self operatingSystem];
  if (operatingSystem - 1 > 4)
  {
    return @"NSUnknownOperatingSystem";
  }

  else
  {
    return off_1E69F54E0[operatingSystem - 1];
  }
}

- (NSDictionary)environment
{
  result = self->environment;
  if (result)
  {
    return result;
  }

  environ_lock_np();
  v3 = *_NSGetEnviron();
  if (!v3)
  {
    environ_unlock_np();
    goto LABEL_41;
  }

  v4 = malloc_type_malloc(0x100uLL, 0x10040436913F5uLL);
  v5 = *v3;
  if (*v3)
  {
    v6 = 0;
    v7 = 32;
    while (1)
    {
      if (v6 >= v7)
      {
        if ((v7 & 0x8000000000000000) != 0)
        {
          environ_unlock_np();
          freeenv(v4, 2 * v7);
LABEL_41:
          v24 = MEMORY[0x1E695DF20];

          return [v24 dictionary];
        }

        v4 = malloc_type_realloc(v4, 16 * v7, 0x10040436913F5uLL);
        v5 = v3[v6];
        v7 *= 2;
      }

      v4[v6] = strdup(v5);
      v8 = v6 + 1;
      v5 = v3[++v6];
      if (!v5)
      {
        environ_unlock_np();
        goto LABEL_13;
      }
    }
  }

  environ_unlock_np();
  if (!v4)
  {
    goto LABEL_41;
  }

  v8 = 0;
LABEL_13:
  v9 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v8];
  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      v11 = 0;
      v12 = v4[i];
      while (1)
      {
        v13 = v12[v11];
        if (v13 == 61 || v13 == 0)
        {
          break;
        }

        ++v11;
      }

      v15 = 0;
        ;
      }

      if (v15 != 1)
      {
        v17 = [NSString stringWithBytes:v4[i] length:v11 encoding:4];
        if (!v17)
        {
          v18 = v4[i];
          if (__NSDefaultStringEncodingFullyInited == 1)
          {
            v19 = _NSDefaultStringEncoding;
          }

          else
          {
            v19 = _NSDefaultCStringEncoding();
          }

          v17 = [NSString stringWithBytes:v18 length:v12 - v18 + v11 encoding:v19];
        }

        v20 = &v12[v11];
        v21 = [NSString stringWithBytes:&v12[v11 + 1] length:v15 - 2 encoding:4];
        if (!v21)
        {
          if (__NSDefaultStringEncodingFullyInited == 1)
          {
            v22 = _NSDefaultStringEncoding;
          }

          else
          {
            v22 = _NSDefaultCStringEncoding();
          }

          v21 = [NSString stringWithBytes:v20 + 1 length:v15 - 2 encoding:v22];
        }

        if (v17 && v21 && ![v9 objectForKey:v17])
        {
          [v9 setObject:v21 forKey:v17];
        }
      }
    }
  }

  v23 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v9];

  freeenv(v4, v8);
  return v23;
}

- (NSArray)arguments
{
  os_unfair_lock_lock_with_options();
  arguments = self->arguments;
  if (!arguments)
  {
    v4 = _CFProcessPath();
    v5 = CFStringCreateWithFileSystemRepresentation(0, v4);
    if (!v5)
    {
      v6 = objc_allocWithZone(NSString);
      v7 = strlen(v4);
      if (__NSDefaultStringEncodingFullyInited == 1)
      {
        v8 = _NSDefaultStringEncoding;
      }

      else
      {
        v8 = _NSDefaultCStringEncoding();
      }

      v5 = [v6 initWithBytes:v4 length:v7 encoding:v8];
    }

    if (!v5)
    {
      v5 = &stru_1EEEFDF90;
    }

    stringByStandardizingPath = [(__CFString *)v5 stringByStandardizingPath];
    array = [MEMORY[0x1E695DF70] array];
    v11 = *_NSGetArgv();
    v12 = *_NSGetArgc();
    if (v12 >= 1)
    {
      do
      {
        if (*v11)
        {
          v13 = [NSString stringWithCString:*v11 encoding:4];
          if (v13 || (v13 = [NSString stringWithCString:*v11 encoding:5]) != 0)
          {
            [array addObject:v13];
          }
        }

        ++v11;
        --v12;
      }

      while (v12);
    }

    if ([array count])
    {
      [array replaceObjectAtIndex:0 withObject:stringByStandardizingPath];
    }

    else
    {
      [array addObject:stringByStandardizingPath];
    }

    arguments = [array copy];
    self->arguments = arguments;
  }

  os_unfair_lock_unlock(&processLock);
  return arguments;
}

- (void)setArguments:(id)arguments
{
  os_unfair_lock_lock_with_options();
  arguments = self->arguments;
  if (arguments != arguments)
  {

    self->arguments = [arguments copy];
  }

  os_unfair_lock_unlock(&processLock);
}

- (NSString)hostName
{
  result = self->hostName;
  if (!result)
  {
    os_unfair_lock_lock(&hostName_hostNameLock);
    if (!self->hostName)
    {
      self->hostName = [objc_msgSend(objc_msgSend(MEMORY[0x1E695AC10] "currentHost")];
    }

    os_unfair_lock_unlock(&hostName_hostNameLock);
    return self->hostName;
  }

  return result;
}

- (void)setProcessName:(NSString *)processName
{
  os_unfair_lock_lock_with_options();
  name = self->name;
  if (name != processName)
  {

    self->name = [(NSString *)processName copy];
  }

  os_unfair_lock_unlock(&processLock);
}

- (NSString)globallyUniqueString
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = CFUUIDCreate(0);
  v3 = CFUUIDCreateString(0, v2);
  buffer[0] = 0;
  CFStringGetCString(v3, buffer, 256, 0x600u);
  buffer[255] = 0;
  v4 = strlen(buffer);
  v5 = getpid();
  v6 = mach_absolute_time();
  snprintf(&buffer[v4], 256 - v4, "-%ld-%016qX", v5, v6);
  CFRelease(v3);
  CFRelease(v2);
  return [NSString stringWithUTF8String:buffer];
}

- (NSString)userName
{
  v2 = CFCopyUserName();

  return v2;
}

- (NSString)operatingSystemVersionString
{
  v2 = CFCopySystemVersionString();

  return v2;
}

- (NSOperatingSystemVersion)operatingSystemVersion
{
  result = _CFOperatingSystemVersionGetCurrent();
  *&retstr->majorVersion = 0uLL;
  retstr->patchVersion = 0;
  return result;
}

- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)macCatalystVersion
{
  if (self)
  {
    return [($9FE6E10C8CE45DBC9A88DFDEA39A390D *)self operatingSystemVersion];
  }

  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  return self;
}

- (BOOL)macCatalystVersionIsAtLeastVersion:(id *)version
{
  if (self)
  {
    [(NSProcessInfo *)self macCatalystVersion];
  }

  if (version->var0 > 0)
  {
    return 0;
  }

  if (version->var0 < 0)
  {
    return 1;
  }

  var1 = version->var1;
  if (var1 > 0)
  {
    return 0;
  }

  return var1 < 0 || version->var2 <= 0;
}

- (NSUInteger)processorCount
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = processorCount__pcnt;
  if (processorCount__pcnt == -1)
  {
    *v5 = 0x300000006;
    v4 = 4;
    if (sysctl(v5, 2u, &processorCount__pcnt, &v4, 0, 0))
    {
      v2 = 0;
      processorCount__pcnt = 0;
    }

    else
    {
      return processorCount__pcnt;
    }
  }

  return v2;
}

- (NSUInteger)activeProcessorCount
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = activeProcessorCount__pcnt;
  if (activeProcessorCount__pcnt == -1)
  {
    *v5 = 0x1900000006;
    v4 = 4;
    if (sysctl(v5, 2u, &activeProcessorCount__pcnt, &v4, 0, 0))
    {
      v2 = 0;
      activeProcessorCount__pcnt = 0;
    }

    else
    {
      return activeProcessorCount__pcnt;
    }
  }

  return v2;
}

- (unint64_t)physicalMemory
{
  v4[1] = *MEMORY[0x1E69E9840];
  if (_MergedGlobals_114)
  {
    return qword_1ED43FA08;
  }

  v4[0] = 8;
  v2 = sysctlbyname("hw.memsize", &qword_1ED43FA08, v4, 0, 0);
  result = 0;
  _MergedGlobals_114 = v2 == 0;
  if (!v2)
  {
    return qword_1ED43FA08;
  }

  return result;
}

- (void)disableAutomaticTermination:(NSString *)reason
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = NSProcessInfo;
  [(NSProcessInfo *)&v3 doesNotRecognizeSelector:a2];
}

- (void)enableAutomaticTermination:(NSString *)reason
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = NSProcessInfo;
  [(NSProcessInfo *)&v3 doesNotRecognizeSelector:a2];
}

- (void)setAutomaticTerminationSupportEnabled:(BOOL)automaticTerminationSupportEnabled
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = NSProcessInfo;
  [(NSProcessInfo *)&v3 doesNotRecognizeSelector:a2];
}

- (BOOL)automaticTerminationSupportEnabled
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = NSProcessInfo;
  [(NSProcessInfo *)&v3 doesNotRecognizeSelector:a2];
  return 0;
}

- (void)_reactivateActivity:(id)activity
{
  if (activity)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Invalid class type" userInfo:0]);
    }

    [activity _reactivate];
  }
}

- (id)beginSuspensionOfSystemBehaviors:(unint64_t)behaviors reason:(id)reason
{
  v4 = [[_NSActivityAssertion alloc] _initWithActivityOptions:0xFF00EFFFFFLL reason:reason expirationHandler:0];

  return v4;
}

- (void)endSystemBehaviorSuspension:(id)suspension
{
  if (suspension)
  {
    [suspension _endFromDealloc:0];
  }
}

- (id)beginActivityWithOptions:(unint64_t)options reason:(id)reason expirationHandler:(id)handler
{
  if (!reason || !_NSIsNSString() || ![reason length])
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Cannot begin activity without reason string or empty reason string" userInfo:0]);
  }

  v8 = [[_NSActivityAssertion alloc] _initWithActivityOptions:options reason:reason expirationHandler:handler];

  return v8;
}

- (void)endActivity:(id)activity
{
  if (activity)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Invalid class type" userInfo:0]);
    }

    [activity _endFromDealloc:0];
  }
}

- (NSProcessInfoThermalState)thermalState
{
  v2 = +[_NSSwiftProcessInfo processInfo];

  return [(NSProcessInfo *)v2 thermalState];
}

- (BOOL)isLowPowerModeEnabled
{
  v2 = +[_NSSwiftProcessInfo processInfo];

  return [(NSProcessInfo *)v2 isLowPowerModeEnabled];
}

@end