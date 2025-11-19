@interface NSException
+ (NSException)exceptionWithName:(NSExceptionName)name reason:(NSString *)reason userInfo:(NSDictionary *)userInfo;
+ (NSException)exceptionWithName:(id)a3 reason:(id)a4 userInfo:(id)a5 osLogPack:(void *)a6 size:(unint64_t)a7;
+ (void)raise:(NSExceptionName)name format:(NSString *)format;
+ (void)raise:(NSExceptionName)name format:(NSString *)format arguments:(va_list)argList;
- (BOOL)_installStackTraceKeyIfNeeded;
- (BOOL)isEqual:(id)a3;
- (NSDictionary)userInfo;
- (NSException)initWithName:(id)a3 reason:(id)a4 userInfo:(id)a5 osLogPack:(void *)a6 size:(unint64_t)a7;
- (NSExceptionName)name;
- (NSString)reason;
- (id)description;
- (void)_markAsUnarchived;
- (void)dealloc;
@end

@implementation NSException

- (NSDictionary)userInfo
{
  v2 = self->userInfo;

  return v2;
}

- (NSExceptionName)name
{
  v2 = self->name;

  return v2;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];

  v4.receiver = self;
  v4.super_class = NSException;
  [(NSException *)&v4 dealloc];
  v3 = *MEMORY[0x1E69E9840];
}

- (id)description
{
  result = self->reason;
  if (!result)
  {
    return self->name;
  }

  return result;
}

- (NSString)reason
{
  v2 = self->reason;

  return v2;
}

- (void)_markAsUnarchived
{
  if (!self->reserved)
  {
    __CFLookUpClass("NSMutableDictionary");
    v4 = objc_opt_new();
    self->reserved = v4;

    [v4 setObject:@"SENTINEL" forKey:@"_NSExceptionWasUnarchived"];
  }
}

- (BOOL)_installStackTraceKeyIfNeeded
{
  userInfo = self->userInfo;
  if (!userInfo)
  {
    goto LABEL_6;
  }

  if ([(NSDictionary *)userInfo objectForKey:@"NSStackTraceKey"])
  {
    LOBYTE(v4) = 0;
    return v4;
  }

  v5 = self->userInfo;
  if (v5)
  {
    v6 = [(NSDictionary *)v5 mutableCopy];
  }

  else
  {
LABEL_6:
    __CFLookUpClass("NSMutableDictionary");
    v6 = objc_opt_new();
  }

  self->userInfo = v6;
  v4 = [objc_msgSend(self->reserved objectForKey:{@"callStackReturnAddresses", "description"}];
  if (v4)
  {
    [(NSDictionary *)self->userInfo setObject:v4 forKey:@"NSStackTraceKey"];
    LOBYTE(v4) = 1;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    return 0;
  }

  name = self->name;
  v8 = *(a3 + 1);

  return [(NSString *)name isEqual:v8];
}

- (NSException)initWithName:(id)a3 reason:(id)a4 userInfo:(id)a5 osLogPack:(void *)a6 size:(unint64_t)a7
{
  v20[1] = *MEMORY[0x1E69E9840];
  self->name = [a3 copy];
  self->reason = [a4 copy];
  self->userInfo = a5;
  v12 = v20 - ((_os_log_pack_size() + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a6)
  {
    goto LABEL_4;
  }

  if (_NSIsNSCFConstantString(self->reason))
  {
    reason = self->reason;
    SystemEncoding = CFStringGetSystemEncoding();
    CStringPtr = CFStringGetCStringPtr(reason, SystemEncoding);
    v16 = _os_log_pack_fill();
    *v16 = 136315138;
    *(v16 + 4) = CStringPtr;
    a6 = v12;
LABEL_4:
    __CFLookUpClass("NSMutableDictionary");
    self->reserved = objc_opt_new();
    v17 = CFDataCreate(&__kCFAllocatorSystemDefault, a6, a7);
    [self->reserved setObject:v17 forKey:@"osLogPack"];
  }

  v18 = *MEMORY[0x1E69E9840];
  return self;
}

+ (NSException)exceptionWithName:(NSExceptionName)name reason:(NSString *)reason userInfo:(NSDictionary *)userInfo
{
  v5 = [[a1 alloc] initWithName:name reason:reason userInfo:userInfo];

  return v5;
}

+ (NSException)exceptionWithName:(id)a3 reason:(id)a4 userInfo:(id)a5 osLogPack:(void *)a6 size:(unint64_t)a7
{
  v7 = [[a1 alloc] initWithName:a3 reason:a4 userInfo:a5 osLogPack:a6 size:a7];

  return v7;
}

+ (void)raise:(NSExceptionName)name format:(NSString *)format arguments:(va_list)argList
{
  if (format)
  {
    v7 = CFStringCreateWithFormatAndArguments(&__kCFAllocatorSystemDefault, 0, format, argList);
  }

  else
  {
    v7 = &stru_1EF068AA8;
  }

  objc_exception_throw([a1 exceptionWithName:name reason:v7 userInfo:0]);
}

+ (void)raise:(NSExceptionName)name format:(NSString *)format
{
  va_start(va, format);
  v8 = *MEMORY[0x1E69E9840];
  if (format)
  {
    va_copy(v7, va);
    v6 = CFStringCreateWithFormatAndArguments(&__kCFAllocatorSystemDefault, 0, format, va);
  }

  else
  {
    v6 = &stru_1EF068AA8;
  }

  objc_exception_throw([a1 exceptionWithName:name reason:v6 userInfo:{0, v7, v8}]);
}

@end