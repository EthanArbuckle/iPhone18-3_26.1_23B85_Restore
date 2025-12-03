@interface _PFResultData
- (BOOL)isEqualToData:(id)data;
- (BOOL)writeToFile:(id)file options:(unint64_t)options error:(id *)error;
- (BOOL)writeToURL:(id)l options:(unint64_t)options error:(id *)error;
- (_NSRange)rangeOfData:(id)data options:(unint64_t)options range:(_NSRange)range;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (uint64_t)privateCopy;
@end

@implementation _PFResultData

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&self[1] length:self->_length];
  v3 = [v2 description];

  return v3;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [MEMORY[0x1E695DF88] allocWithZone:zone];
  length = self->_length;

  return [v4 initWithBytes:&self[1] length:length];
}

- (uint64_t)privateCopy
{
  if (result)
  {
    v1 = result;
    v2 = objc_alloc(MEMORY[0x1E695DEF0]);
    v3 = *(v1 + 12);

    return [v2 initWithBytesNoCopy:v1 + 24 length:v3];
  }

  return result;
}

- (BOOL)isEqualToData:(id)data
{
  length = self->_length;
  if ([data length] != length)
  {
    return 0;
  }

  BytePtr = CFDataGetBytePtr(data);
  return memcmp(&self[1], BytePtr, self->_length) == 0;
}

- (_NSRange)rangeOfData:(id)data options:(unint64_t)options range:(_NSRange)range
{
  if (!data)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Data may not be nil" userInfo:{0, range.length}]);
  }

  length = range.length;
  location = range.location;
  privateCopy = [(_PFResultData *)self privateCopy];
  v10 = [privateCopy rangeOfData:data options:options range:{location, length}];
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.length = v14;
  result.location = v13;
  return result;
}

- (BOOL)writeToFile:(id)file options:(unint64_t)options error:(id *)error
{
  privateCopy = [(_PFResultData *)self privateCopy];
  LOBYTE(error) = [privateCopy writeToFile:file options:options error:error];

  return error;
}

- (BOOL)writeToURL:(id)l options:(unint64_t)options error:(id *)error
{
  privateCopy = [(_PFResultData *)self privateCopy];
  LOBYTE(error) = [privateCopy writeToURL:l options:options error:error];

  return error;
}

@end