@interface NSError
+ (id)mrap_errorWithCode:(int64_t)code description:(id)description;
@end

@implementation NSError

+ (id)mrap_errorWithCode:(int64_t)code description:(id)description
{
  descriptionCopy = description;
  if (code)
  {
    v7 = @"An unknown error has occurred.";
    if (code == 1)
    {
      v7 = @"The requested input device is not available.";
    }

    if (code == 2)
    {
      v7 = @"An error occurred while using the MediaRemote service.";
    }

    v8 = v7;
    v9 = v8;
    if (descriptionCopy)
    {
      descriptionCopy = [NSString stringWithFormat:@"%@ %@", v8, descriptionCopy];
    }

    else
    {
      descriptionCopy = v8;
    }

    v11 = descriptionCopy;
    v14 = NSLocalizedDescriptionKey;
    v15 = descriptionCopy;
    v12 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    code = [self errorWithDomain:@"MediaRemoteAudioInputPluginErrorDomain" code:code userInfo:v12];
  }

  return code;
}

@end