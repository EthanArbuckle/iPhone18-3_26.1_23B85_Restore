@interface NSPropertyListSerialization
+ (NSData)dataFromPropertyList:(id)plist format:(NSPropertyListFormat)format errorDescription:(NSString *)errorString;
+ (NSData)dataWithPropertyList:(id)plist format:(NSPropertyListFormat)format options:(NSPropertyListWriteOptions)opt error:(NSError *)error;
+ (NSInteger)writePropertyList:(id)plist toStream:(NSOutputStream *)stream format:(NSPropertyListFormat)format options:(NSPropertyListWriteOptions)opt error:(NSError *)error;
+ (id)propertyListFromData:(NSData *)data mutabilityOption:(NSPropertyListMutabilityOptions)opt format:(NSPropertyListFormat *)format errorDescription:(NSString *)errorString;
+ (id)propertyListWithData:(NSData *)data options:(NSPropertyListReadOptions)opt format:(NSPropertyListFormat *)format error:(NSError *)error;
+ (id)propertyListWithStream:(NSInputStream *)stream options:(NSPropertyListReadOptions)opt format:(NSPropertyListFormat *)format error:(NSError *)error;
- (NSPropertyListSerialization)init;
@end

@implementation NSPropertyListSerialization

+ (NSData)dataFromPropertyList:(id)plist format:(NSPropertyListFormat)format errorDescription:(NSString *)errorString
{
  v8 = CFWriteStreamCreateWithAllocatedBuffers(*MEMORY[0x1E695E480], *MEMORY[0x1E695E480]);
  CFWriteStreamOpen(v8);
  if (CFPropertyListWriteToStream(plist, v8, format, errorString) < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = CFWriteStreamCopyProperty(v8, *MEMORY[0x1E695E900]);
  }

  CFWriteStreamClose(v8);
  CFRelease(v8);

  return v9;
}

+ (id)propertyListFromData:(NSData *)data mutabilityOption:(NSPropertyListMutabilityOptions)opt format:(NSPropertyListFormat *)format errorDescription:(NSString *)errorString
{
  if (data)
  {
    v6 = _CFPropertyListCreateFromXMLData();

    return v6;
  }

  else
  {
    if (errorString)
    {
      *errorString = @"stream had too few bytes";
    }

    return 0;
  }
}

- (NSPropertyListSerialization)init
{
  v3 = [NSString stringWithFormat:@"%@: Do not create instances of NSPropertyListSerialization in this release", _NSMethodExceptionProem(self, a2)];

  objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v3 userInfo:0]);
}

+ (NSData)dataWithPropertyList:(id)plist format:(NSPropertyListFormat)format options:(NSPropertyListWriteOptions)opt error:(NSError *)error
{
  Data = CFPropertyListCreateData(*MEMORY[0x1E695E480], plist, format, opt, error);
  v8 = Data;
  if (error && !Data && *error)
  {
    v9 = *error;
  }

  return v8;
}

+ (id)propertyListWithData:(NSData *)data options:(NSPropertyListReadOptions)opt format:(NSPropertyListFormat *)format error:(NSError *)error
{
  if (!data)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"data parameter is nil" userInfo:{0, error}]);
  }

  v7 = CFPropertyListCreateWithData(*MEMORY[0x1E695E4A8], data, opt, format, error);
  v8 = v7;
  if (error && !v7 && *error)
  {
    v9 = *error;
  }

  return v8;
}

+ (NSInteger)writePropertyList:(id)plist toStream:(NSOutputStream *)stream format:(NSPropertyListFormat)format options:(NSPropertyListWriteOptions)opt error:(NSError *)error
{
  if (!plist)
  {
    v12 = MEMORY[0x1E695DF30];
    v13 = *MEMORY[0x1E695D940];
    v14 = @"plist parameter is nil";
    goto LABEL_13;
  }

  if (!stream)
  {
    v12 = MEMORY[0x1E695DF30];
    v13 = *MEMORY[0x1E695D940];
    v14 = @"stream parameter is nil";
    goto LABEL_13;
  }

  if (format != NSPropertyListXMLFormat_v1_0 && format != NSPropertyListBinaryFormat_v1_0)
  {
    v12 = MEMORY[0x1E695DF30];
    v13 = *MEMORY[0x1E695D940];
    v14 = @"Invalid property list format";
LABEL_13:
    objc_exception_throw([v12 exceptionWithName:v13 reason:v14 userInfo:{0, opt, error}]);
  }

  v8 = CFPropertyListWrite(plist, stream, format, opt, error);
  v9 = v8;
  if (error && !v8 && *error)
  {
    v10 = *error;
  }

  return v9;
}

+ (id)propertyListWithStream:(NSInputStream *)stream options:(NSPropertyListReadOptions)opt format:(NSPropertyListFormat *)format error:(NSError *)error
{
  if (!stream)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"stream parameter is nil" userInfo:{0, error}]);
  }

  v7 = CFPropertyListCreateWithStream(*MEMORY[0x1E695E4A8], stream, 0, opt, format, error);
  v8 = v7;
  if (error && !v7 && *error)
  {
    v9 = *error;
  }

  return v8;
}

@end