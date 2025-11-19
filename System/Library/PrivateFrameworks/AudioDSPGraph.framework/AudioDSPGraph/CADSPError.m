@interface CADSPError
+ (id)createWithRealTimeError:(id)a3;
+ (id)errorWithCode:(int64_t)a3 descriptionFormat:(id)a4;
+ (id)errorWithCode:(int64_t)a3 userInfo:(const CADSPErrorUserInfo *)a4;
- (CADSPError)initWithCode:(int64_t)a3 userInfo:(const CADSPErrorUserInfo *)a4;
- (CADSPError)initWithRealTimeError:(id)a3;
- (NSNumber)errorSourceLine;
- (NSString)errorSourceFile;
- (int)errorStatus;
- (int64_t)errorCode;
@end

@implementation CADSPError

- (NSNumber)errorSourceLine
{
  v6.receiver = self;
  v6.super_class = CADSPError;
  v2 = [(CADSPError *)&v6 userInfo];
  v3 = [v2 objectForKeyedSubscript:@"CADSPErrorSourceLine"];
  v4 = [v3 copy];

  return v4;
}

- (NSString)errorSourceFile
{
  v6.receiver = self;
  v6.super_class = CADSPError;
  v2 = [(CADSPError *)&v6 userInfo];
  v3 = [v2 objectForKeyedSubscript:@"CADSPErrorSourceFile"];
  v4 = [v3 copy];

  return v4;
}

- (int)errorStatus
{
  v6.receiver = self;
  v6.super_class = CADSPError;
  v2 = [(CADSPError *)&v6 userInfo];
  v3 = [v2 objectForKeyedSubscript:@"CADSPErrorStatus"];
  v4 = [v3 intValue];

  return v4;
}

- (int64_t)errorCode
{
  v3.receiver = self;
  v3.super_class = CADSPError;
  return [(CADSPError *)&v3 code];
}

- (CADSPError)initWithCode:(int64_t)a3 userInfo:(const CADSPErrorUserInfo *)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = CFGetAllocator(self);
  v8 = v7;
  v27 = 0u;
  v28 = 0u;
  *keys = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  *values = 0u;
  v22 = 0u;
  if (a4)
  {
    if (a4->var0)
    {
      keys[0] = @"CADSPErrorStatus";
      v9 = CFNumberCreate(v7, kCFNumberSInt32Type, a4);
      v10 = &values[1];
      v11 = &keys[1];
      values[0] = v9;
      v12 = 1;
    }

    else
    {
      v12 = 0;
      v11 = keys;
      v10 = values;
    }

    var1 = a4->var1;
    if (var1)
    {
      *v11 = *MEMORY[0x1E696A578];
      *v10 = CFStringCreateCopy(v8, var1);
      ++v12;
    }

    var2 = a4->var2;
    if (var2)
    {
      keys[v12] = @"CADSPErrorSourceFile";
      values[v12] = CFStringCreateWithCStringNoCopy(v8, var2, 0x600u, *MEMORY[0x1E695E498]);
      keys[v12 + 1] = @"CADSPErrorSourceLine";
      values[v12 + 1] = CFNumberCreate(v8, kCFNumberSInt32Type, &a4->var3);
      v12 += 2;
      v13 = CFDictionaryCreate(v8, keys, values, v12, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    else
    {
      v13 = CFDictionaryCreate(v8, keys, values, v12, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (!v12)
      {
        goto LABEL_13;
      }
    }

    v16 = values;
    do
    {
      CFRelease(*v16++);
      --v12;
    }

    while (v12);
  }

  else
  {
    v13 = CFDictionaryCreate(v7, keys, values, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

LABEL_13:
  v20.receiver = self;
  v20.super_class = CADSPError;
  v17 = [(CADSPError *)&v20 initWithDomain:@"com.apple.audio.AudioDSPGraph" code:a3 userInfo:v13];

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

+ (id)errorWithCode:(int64_t)a3 descriptionFormat:(id)a4
{
  v5 = a4;
  v11 = &v12;
  v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v5 arguments:&v12];
  v9[0] = 0;
  v10 = 0u;
  v9[1] = v6;
  v7 = [CADSPError errorWithCode:a3 userInfo:v9];

  return v7;
}

+ (id)errorWithCode:(int64_t)a3 userInfo:(const CADSPErrorUserInfo *)a4
{
  v6 = [CADSPError alloc];

  return [(CADSPError *)v6 initWithCode:a3 userInfo:a4];
}

- (CADSPError)initWithRealTimeError:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v11 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  LODWORD(v11) = [v4 errorStatus];
  *(&v11 + 1) = 0;
  v6 = [v5 errorSourceFile];
  *&v12 = [v6 UTF8String];
  v7 = [v5 errorSourceLine];
  DWORD2(v12) = [v7 unsignedIntValue];
  v8 = -[CADSPError initWithCode:userInfo:](self, "initWithCode:userInfo:", [v5 errorCode], &v11);

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

+ (id)createWithRealTimeError:(id)a3
{
  v3 = a3;
  v4 = [[CADSPError alloc] initWithRealTimeError:v3];

  return v4;
}

@end