@interface NSError
+ (id)mrap_errorWithCode:(int64_t)a3 description:(id)a4;
@end

@implementation NSError

+ (id)mrap_errorWithCode:(int64_t)a3 description:(id)a4
{
  v6 = a4;
  if (a3)
  {
    v7 = @"An unknown error has occurred.";
    if (a3 == 1)
    {
      v7 = @"The requested input device is not available.";
    }

    if (a3 == 2)
    {
      v7 = @"An error occurred while using the MediaRemote service.";
    }

    v8 = v7;
    v9 = v8;
    if (v6)
    {
      v10 = [NSString stringWithFormat:@"%@ %@", v8, v6];
    }

    else
    {
      v10 = v8;
    }

    v11 = v10;
    v14 = NSLocalizedDescriptionKey;
    v15 = v10;
    v12 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    a3 = [a1 errorWithDomain:@"MediaRemoteAudioInputPluginErrorDomain" code:a3 userInfo:v12];
  }

  return a3;
}

@end