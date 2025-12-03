@interface _NSJSONRoundTrippingNumber
+ (BOOL)isSubclassOfClass:(Class)class;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToNumber:(id)number;
- (BOOL)isKindOfClass:(Class)class;
- (BOOL)respondsToSelector:(SEL)selector;
- (_NSJSONRoundTrippingNumber)initWithCoder:(id)coder;
- (_NSJSONRoundTrippingNumber)initWithNumber:(id)number representation:(id)representation;
- (id)stringValue;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _NSJSONRoundTrippingNumber

- (_NSJSONRoundTrippingNumber)initWithNumber:(id)number representation:(id)representation
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = _NSJSONRoundTrippingNumber;
  v6 = [(_NSJSONRoundTrippingNumber *)&v8 init];
  if (v6)
  {
    v6->_number = number;
    v6->_representation = [representation copy];
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

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    if (self == equal)
    {
      LOBYTE(isNSNumber) = 1;
    }

    else
    {
      isNSNumber = [equal isNSNumber];
      if (isNSNumber)
      {

        LOBYTE(isNSNumber) = [(_NSJSONRoundTrippingNumber *)self isEqualToNumber:equal];
      }
    }
  }

  else
  {
    LOBYTE(isNSNumber) = 0;
  }

  return isNSNumber;
}

- (BOOL)isEqualToNumber:(id)number
{
  if (number == self)
  {
    return 1;
  }

  if (!number || object_getClass(number) != _NSJSONRoundTrippingNumber)
  {
    return 0;
  }

  representation = self->_representation;
  v7 = *(number + 2);

  return [(NSString *)representation isEqualToString:v7];
}

- (_NSJSONRoundTrippingNumber)initWithCoder:(id)coder
{
  v15[1] = *MEMORY[0x1E69E9840];
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"_NSJSONRoundTrippingNumber can only be decoded by NSXPCCoder." userInfo:0]);
  }

  v5 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NS.number"];
  if (!v5)
  {

    v14 = @"NSDebugDescription";
    v15[0] = @"Unable to decode underlying NSNumber instance for round-tripping number.";
    v9 = MEMORY[0x1E695DF20];
    v10 = v15;
    v11 = &v14;
LABEL_9:
    [coder failWithError:{+[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 4864, objc_msgSend(v9, "dictionaryWithObjects:forKeys:count:", v10, v11, 1))}];
    return 0;
  }

  v6 = v5;
  v7 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NS.representation"];
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

- (void)encodeWithCoder:(id)coder
{
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"_NSJSONRoundTrippingNumber can only be encoded by NSXPCCoder." userInfo:0]);
  }

  [coder encodeObject:self->_number forKey:@"NS.number"];
  representation = self->_representation;

  [coder encodeObject:representation forKey:@"NS.representation"];
}

+ (BOOL)isSubclassOfClass:(Class)class
{
  v5 = *MEMORY[0x1E69E9840];
  if (NSNumber == class)
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS____NSJSONRoundTrippingNumber;
  return objc_msgSendSuper2(&v4, sel_isSubclassOfClass_);
}

- (BOOL)isKindOfClass:(Class)class
{
  v5 = *MEMORY[0x1E69E9840];
  if (NSNumber == class)
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = _NSJSONRoundTrippingNumber;
  return [(_NSJSONRoundTrippingNumber *)&v4 isKindOfClass:?];
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v4 = objc_opt_class();

  return [v4 instancesRespondToSelector:selector];
}

@end