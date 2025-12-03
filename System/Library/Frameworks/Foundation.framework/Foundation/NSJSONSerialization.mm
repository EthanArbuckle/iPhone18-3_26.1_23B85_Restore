@interface NSJSONSerialization
+ (NSData)dataWithJSONObject:(id)obj options:(NSJSONWritingOptions)opt error:(NSError *)error;
+ (NSInteger)writeJSONObject:(id)obj toStream:(NSOutputStream *)stream options:(NSJSONWritingOptions)opt error:(NSError *)error;
+ (id)JSONObjectWithData:(NSData *)data options:(NSJSONReadingOptions)opt error:(NSError *)error;
+ (id)JSONObjectWithStream:(NSInputStream *)stream options:(NSJSONReadingOptions)opt error:(NSError *)error;
- (NSJSONSerialization)init;
@end

@implementation NSJSONSerialization

- (NSJSONSerialization)init
{
  v3 = [NSString stringWithFormat:@"%@: Do not create instances of NSJSONSerialization in this release", _NSMethodExceptionProem(self, a2)];

  objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v3 userInfo:0]);
}

+ (NSData)dataWithJSONObject:(id)obj options:(NSJSONWritingOptions)opt error:(NSError *)error
{
  if (!obj)
  {
    v14 = [NSString stringWithFormat:@"%@: value parameter is nil", _NSMethodExceptionProem(self, a2)];
    goto LABEL_10;
  }

  if ((opt & 4) == 0 && (_NSIsNSArray() & 1) == 0 && (_NSIsNSDictionary() & 1) == 0)
  {
    v14 = [NSString stringWithFormat:@"%@: Invalid top-level type in JSON write", _NSMethodExceptionProem(self, a2)];
LABEL_10:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v14 userInfo:0]);
  }

  v10 = objc_alloc_init(_NSJSONWriter);
  v11 = [(_NSJSONWriter *)v10 dataWithRootObject:obj options:opt];
  v12 = v11;
  if (error && !v11)
  {
    *error = [(_NSJSONWriter *)v10 failure];
  }

  return v12;
}

+ (id)JSONObjectWithData:(NSData *)data options:(NSJSONReadingOptions)opt error:(NSError *)error
{
  if (!data)
  {
    v10 = MEMORY[0x1E695DF30];
    v11 = *MEMORY[0x1E695D940];
    v12 = @"data parameter is nil";
    goto LABEL_8;
  }

  if ((~opt & 0x14) == 0)
  {
    v10 = MEMORY[0x1E695DF30];
    v11 = *MEMORY[0x1E695D940];
    v12 = @"NSJSONReadingAssumeTopLevelDictionary and NSJSONReadingAllowFragments cannot be set at the same time";
LABEL_8:
    objc_exception_throw([v10 exceptionWithName:v11 reason:v12 userInfo:0]);
  }

  v8 = objc_alloc_init(_NSJSONReader);

  return [(_NSJSONReader *)v8 parseData:data options:opt error:error];
}

+ (NSInteger)writeJSONObject:(id)obj toStream:(NSOutputStream *)stream options:(NSJSONWritingOptions)opt error:(NSError *)error
{
  if (!obj)
  {
    v16 = [NSString stringWithFormat:@"%@: value parameter is nil", _NSMethodExceptionProem(self, a2)];
    goto LABEL_13;
  }

  if (!stream || ![(NSOutputStream *)stream streamStatus])
  {
    v16 = [NSString stringWithFormat:@"%@: stream is not open for writing", _NSMethodExceptionProem(self, a2)];
    goto LABEL_13;
  }

  if ((opt & 4) == 0 && (_NSIsNSArray() & 1) == 0 && (_NSIsNSDictionary() & 1) == 0)
  {
    v16 = [NSString stringWithFormat:@"%@: Invalid top-level type in JSON write", _NSMethodExceptionProem(self, a2)];
LABEL_13:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v16 userInfo:0]);
  }

  v12 = objc_alloc_init(_NSJSONWriter);
  v13 = [(_NSJSONWriter *)v12 writeRootObject:obj toStream:stream options:opt];
  v14 = v13;
  if (error && v13 == -1)
  {
    *error = [(_NSJSONWriter *)v12 failure];
  }

  return v14;
}

+ (id)JSONObjectWithStream:(NSInputStream *)stream options:(NSJSONReadingOptions)opt error:(NSError *)error
{
  if (!stream)
  {
    v12 = [NSString stringWithFormat:@"%@: stream parameter is nil", _NSMethodExceptionProem(self, a2)];
LABEL_9:
    v13 = v12;
    v14 = MEMORY[0x1E695DF30];
    v15 = *MEMORY[0x1E695D940];
    goto LABEL_11;
  }

  if (![(NSInputStream *)stream streamStatus])
  {
    v12 = [NSString stringWithFormat:@"%@: stream is not open for reading", _NSMethodExceptionProem(self, a2)];
    goto LABEL_9;
  }

  if ((~opt & 0x14) == 0)
  {
    v14 = MEMORY[0x1E695DF30];
    v15 = *MEMORY[0x1E695D940];
    v13 = @"NSJSONReadingAssumeTopLevelDictionary and NSJSONReadingAllowFragments cannot be set at the same time";
LABEL_11:
    objc_exception_throw([v14 exceptionWithName:v15 reason:v13 userInfo:0]);
  }

  v10 = objc_alloc_init(_NSJSONReader);

  return [(_NSJSONReader *)v10 parseStream:stream options:opt error:error];
}

@end