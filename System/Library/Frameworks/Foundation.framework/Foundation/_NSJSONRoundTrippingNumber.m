@interface _NSJSONRoundTrippingNumber
+ (BOOL)isSubclassOfClass:(Class)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToNumber:(id)a3;
- (BOOL)isKindOfClass:(Class)a3;
- (BOOL)respondsToSelector:(SEL)a3;
- (_NSJSONRoundTrippingNumber)initWithCoder:(id)a3;
- (_NSJSONRoundTrippingNumber)initWithNumber:(id)a3 representation:(id)a4;
- (id)stringValue;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _NSJSONRoundTrippingNumber

- (_NSJSONRoundTrippingNumber)initWithNumber:(id)a3 representation:(id)a4
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = _NSJSONRoundTrippingNumber;
  v6 = [(_NSJSONRoundTrippingNumber *)&v8 init];
  if (v6)
  {
    v6->_number = a3;
    v6->_representation = [a4 copy];
  }

  return v6;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = _NSJSONRoundTrippingNumber;
  [(_NSJSONRoundTrippingNumber *)&v3 dealloc];
}

- (id)stringValue
{
  v2 = [(NSString *)self->_representation copy];

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    if (self == a3)
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      v5 = [a3 isNSNumber];
      if (v5)
      {

        LOBYTE(v5) = [(_NSJSONRoundTrippingNumber *)self isEqualToNumber:a3];
      }
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)isEqualToNumber:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  if (!a3 || object_getClass(a3) != _NSJSONRoundTrippingNumber)
  {
    return 0;
  }

  representation = self->_representation;
  v7 = *(a3 + 2);

  return [(NSString *)representation isEqualToString:v7];
}

- (_NSJSONRoundTrippingNumber)initWithCoder:(id)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"_NSJSONRoundTrippingNumber can only be decoded by NSXPCCoder." userInfo:0]);
  }

  v5 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NS.number"];
  if (!v5)
  {

    v14 = @"NSDebugDescription";
    v15[0] = @"Unable to decode underlying NSNumber instance for round-tripping number.";
    v9 = MEMORY[0x1E695DF20];
    v10 = v15;
    v11 = &v14;
LABEL_9:
    [a3 failWithError:{+[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 4864, objc_msgSend(v9, "dictionaryWithObjects:forKeys:count:", v10, v11, 1))}];
    return 0;
  }

  v6 = v5;
  v7 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NS.representation"];
  if (!v7)
  {

    v12 = @"NSDebugDescription";
    v13 = @"Unable to decode underlying string representation for round-tripping number.";
    v9 = MEMORY[0x1E695DF20];
    v10 = &v13;
    v11 = &v12;
    goto LABEL_9;
  }

  return [(_NSJSONRoundTrippingNumber *)self initWithNumber:v6 representation:v7];
}

- (void)encodeWithCoder:(id)a3
{
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"_NSJSONRoundTrippingNumber can only be encoded by NSXPCCoder." userInfo:0]);
  }

  [a3 encodeObject:self->_number forKey:@"NS.number"];
  representation = self->_representation;

  [a3 encodeObject:representation forKey:@"NS.representation"];
}

+ (BOOL)isSubclassOfClass:(Class)a3
{
  v5 = *MEMORY[0x1E69E9840];
  if (NSNumber == a3)
  {
    return 1;
  }

  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS____NSJSONRoundTrippingNumber;
  return objc_msgSendSuper2(&v4, sel_isSubclassOfClass_);
}

- (BOOL)isKindOfClass:(Class)a3
{
  v5 = *MEMORY[0x1E69E9840];
  if (NSNumber == a3)
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = _NSJSONRoundTrippingNumber;
  return [(_NSJSONRoundTrippingNumber *)&v4 isKindOfClass:?];
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v4 = objc_opt_class();

  return [v4 instancesRespondToSelector:a3];
}

@end