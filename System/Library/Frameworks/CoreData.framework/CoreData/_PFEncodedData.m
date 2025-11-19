@interface _PFEncodedData
- (BOOL)isEqualToData:(id)a3;
- (BOOL)writeToFile:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (BOOL)writeToURL:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (_NSRange)rangeOfData:(id)a3 options:(unint64_t)a4 range:(_NSRange)a5;
- (_PFEncodedData)init;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (uint64_t)privateCopy;
@end

@implementation _PFEncodedData

- (_PFEncodedData)init
{
  self->_reserved = 0;

  objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:@"You're doing it wrong" reason:@"Class cannot be used this way." userInfo:0]);
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&self[1] length:self->_byteCount];
  v3 = [v2 description];

  return v3;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [MEMORY[0x1E695DF88] allocWithZone:a3];
  byteCount = self->_byteCount;

  return [v4 initWithBytes:&self[1] length:byteCount];
}

- (uint64_t)privateCopy
{
  if (result)
  {
    v1 = result;
    v2 = objc_alloc(MEMORY[0x1E695DEF0]);
    v3 = *(v1 + 16);

    return [v2 initWithBytesNoCopy:v1 + 24 length:v3];
  }

  return result;
}

- (BOOL)isEqualToData:(id)a3
{
  byteCount = self->_byteCount;
  if ([a3 length] != byteCount)
  {
    return 0;
  }

  BytePtr = CFDataGetBytePtr(a3);
  return memcmp(&self[1], BytePtr, self->_byteCount) == 0;
}

- (_NSRange)rangeOfData:(id)a3 options:(unint64_t)a4 range:(_NSRange)a5
{
  if (!a3)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Data may not be nil" userInfo:{0, a5.length}]);
  }

  length = a5.length;
  location = a5.location;
  v9 = [(_PFEncodedData *)self privateCopy];
  v10 = [v9 rangeOfData:a3 options:a4 range:{location, length}];
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.length = v14;
  result.location = v13;
  return result;
}

- (BOOL)writeToFile:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v8 = [(_PFEncodedData *)self privateCopy];
  LOBYTE(a5) = [v8 writeToFile:a3 options:a4 error:a5];

  return a5;
}

- (BOOL)writeToURL:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v8 = [(_PFEncodedData *)self privateCopy];
  LOBYTE(a5) = [v8 writeToURL:a3 options:a4 error:a5];

  return a5;
}

@end