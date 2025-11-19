@interface NSTask
+ (NSTask)allocWithZone:(_NSZone *)a3;
+ (NSTask)launchedTaskWithExecutableURL:(NSURL *)url arguments:(NSArray *)arguments error:(NSError *)error terminationHandler:(void *)terminationHandler;
+ (NSTask)launchedTaskWithLaunchPath:(NSString *)path arguments:(NSArray *)arguments;
+ (id)launchedTaskWithDictionary:(id)a3;
- (NSTask)init;
- (NSURL)currentDirectoryURL;
- (NSURL)executableURL;
- (void)interrupt;
- (void)launch;
- (void)setArguments:(NSArray *)arguments;
- (void)setCurrentDirectoryPath:(NSString *)currentDirectoryPath;
- (void)setCurrentDirectoryURL:(NSURL *)currentDirectoryURL;
- (void)setEnvironment:(NSDictionary *)environment;
- (void)setExecutableURL:(NSURL *)executableURL;
- (void)setLaunchPath:(NSString *)launchPath;
- (void)setStandardError:(id)standardError;
- (void)setStandardInput:(id)standardInput;
- (void)setStandardOutput:(id)standardOutput;
- (void)setTerminationHandler:(void *)terminationHandler;
- (void)terminate;
@end

@implementation NSTask

- (void)setTerminationHandler:(void *)terminationHandler
{
  v5 = NSClassFromString(@"NSTask");

  NSRequestConcreteImplementation(self, a2, v5);
}

- (void)launch
{
  v4 = NSClassFromString(@"NSTask");

  NSRequestConcreteImplementation(self, a2, v4);
}

- (void)setArguments:(NSArray *)arguments
{
  v5 = NSClassFromString(@"NSTask");

  NSRequestConcreteImplementation(self, a2, v5);
}

- (void)setCurrentDirectoryPath:(NSString *)currentDirectoryPath
{
  v5 = NSClassFromString(@"NSTask");

  NSRequestConcreteImplementation(self, a2, v5);
}

- (void)setCurrentDirectoryURL:(NSURL *)currentDirectoryURL
{
  if (currentDirectoryURL)
  {
    if (![(NSURL *)currentDirectoryURL isFileURL])
    {
      v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: non-file URL argument", _NSMethodExceptionProem(self, a2)), 0}];
      objc_exception_throw(v7);
    }

    v6 = [-[NSURL standardizedURL](currentDirectoryURL "standardizedURL")];
  }

  else
  {
    v6 = [+[NSFileManager defaultManager](NSFileManager currentDirectoryPath];
  }

  [(NSTask *)self setCurrentDirectoryPath:v6];
}

- (NSURL)currentDirectoryURL
{
  v2 = MEMORY[0x1E695DFF8];
  v3 = [(NSTask *)self currentDirectoryPath];

  return [v2 fileURLWithPath:v3 isDirectory:1];
}

- (void)setEnvironment:(NSDictionary *)environment
{
  v5 = NSClassFromString(@"NSTask");

  NSRequestConcreteImplementation(self, a2, v5);
}

- (void)setLaunchPath:(NSString *)launchPath
{
  v5 = NSClassFromString(@"NSTask");

  NSRequestConcreteImplementation(self, a2, v5);
}

- (NSURL)executableURL
{
  result = [(NSTask *)self launchPath];
  if (result)
  {
    v3 = result;
    v4 = MEMORY[0x1E695DFF8];

    return [v4 fileURLWithPath:v3 isDirectory:0];
  }

  return result;
}

- (void)setExecutableURL:(NSURL *)executableURL
{
  if (executableURL)
  {
    v4 = executableURL;
    if (![(NSURL *)executableURL isFileURL])
    {
      v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: non-file URL argument", _NSMethodExceptionProem(self, a2)), 0}];
      objc_exception_throw(v6);
    }

    executableURL = [-[NSURL standardizedURL](v4 "standardizedURL")];
  }

  [(NSTask *)self setLaunchPath:executableURL];
}

- (void)interrupt
{
  v4 = NSClassFromString(@"NSTask");

  NSRequestConcreteImplementation(self, a2, v4);
}

- (void)terminate
{
  v4 = NSClassFromString(@"NSTask");

  NSRequestConcreteImplementation(self, a2, v4);
}

- (void)setStandardInput:(id)standardInput
{
  v5 = NSClassFromString(@"NSTask");

  NSRequestConcreteImplementation(self, a2, v5);
}

- (void)setStandardOutput:(id)standardOutput
{
  v5 = NSClassFromString(@"NSTask");

  NSRequestConcreteImplementation(self, a2, v5);
}

- (void)setStandardError:(id)standardError
{
  v5 = NSClassFromString(@"NSTask");

  NSRequestConcreteImplementation(self, a2, v5);
}

- (NSTask)init
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = NSTask;
  return [(NSTask *)&v3 init];
}

+ (NSTask)allocWithZone:(_NSZone *)a3
{
  if (NSTask == a1)
  {
    a1 = objc_opt_self();
  }

  return NSAllocateObject(a1, 0, a3);
}

+ (id)launchedTaskWithDictionary:(id)a3
{
  v4 = [objc_allocWithZone(a1) init];
  [v4 launchWithDictionary:a3 error:0];

  return v4;
}

+ (NSTask)launchedTaskWithLaunchPath:(NSString *)path arguments:(NSArray *)arguments
{
  v6 = [objc_allocWithZone(a1) init];
  v7 = +[NSTask currentTaskDictionary];
  if (!arguments)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"must provide array of arguments" userInfo:0]);
  }

  v8 = v7;
  [v7 setObject:path forKey:@"_NSTaskExecutablePath"];
  [v8 setObject:arguments forKey:@"_NSTaskArgumentArray"];
  [(NSTask *)v6 launchWithDictionary:v8 error:0];
  return v6;
}

+ (NSTask)launchedTaskWithExecutableURL:(NSURL *)url arguments:(NSArray *)arguments error:(NSError *)error terminationHandler:(void *)terminationHandler
{
  v25[1] = *MEMORY[0x1E69E9840];
  if (!url)
  {
    v19 = MEMORY[0x1E695DF30];
    v20 = *MEMORY[0x1E695D940];
    v21 = @"must provide a launch url";
    goto LABEL_18;
  }

  if (![(NSURL *)url isFileURL])
  {
    if (error)
    {
      v24 = @"NSURL";
      v25[0] = url;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
      v18 = 262;
LABEL_13:
      *error = [NSError errorWithDomain:@"NSCocoaErrorDomain" code:v18 userInfo:v17];
    }

    return 0;
  }

  v11 = [(NSURL *)url path];
  if (!v11)
  {
    if (error)
    {
      v22 = @"NSURL";
      v23 = url;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      v18 = 260;
      goto LABEL_13;
    }

    return 0;
  }

  v12 = v11;
  v13 = objc_alloc_init(a1);
  if (!arguments)
  {
    v19 = MEMORY[0x1E695DF30];
    v20 = *MEMORY[0x1E695D940];
    v21 = @"must provide array of arguments";
LABEL_18:
    objc_exception_throw([v19 exceptionWithName:v20 reason:v21 userInfo:{0, terminationHandler}]);
  }

  v14 = v13;
  v15 = +[NSTask currentTaskDictionary];
  [v15 setObject:v12 forKey:@"_NSTaskExecutablePath"];
  [v15 setObject:arguments forKey:@"_NSTaskArgumentArray"];
  [v15 setObject:MEMORY[0x1E695E118] forKey:@"_NSTaskUseErrorsForRuntimeFailures"];
  [v14 setTerminationHandler:terminationHandler];
  if (([v14 launchWithDictionary:v15 error:error] & 1) == 0)
  {

    return 0;
  }

  return v14;
}

@end