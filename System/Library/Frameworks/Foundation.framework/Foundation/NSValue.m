@interface NSValue
+ (NSValue)allocWithZone:(_NSZone *)a3;
+ (NSValue)valueWithBytes:(const void *)value objCType:(const char *)type;
+ (NSValue)valueWithEdgeInsets:(NSEdgeInsets)insets;
+ (NSValue)valueWithNonretainedObject:(id)anObject;
+ (NSValue)valueWithPoint:(NSPoint)point;
+ (NSValue)valueWithPointer:(const void *)pointer;
+ (NSValue)valueWithRange:(NSRange)range;
+ (NSValue)valueWithRect:(NSRect)rect;
+ (NSValue)valueWithSize:(NSSize)size;
+ (NSValue)valueWithWeakObject:(id)a3;
- (BOOL)_matchType:(const char *)a3 size:(unint64_t)a4 strict:(BOOL)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToValue:(NSValue *)value;
- (NSEdgeInsets)edgeInsetsValue;
- (NSPoint)pointValue;
- (NSRange)rangeValue;
- (NSRect)rectValue;
- (NSSize)sizeValue;
- (NSValue)init;
- (NSValue)initWithCoder:(NSCoder *)coder;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)nonretainedObjectValue;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)getValue:(void *)value;
- (void)getValue:(void *)value size:(NSUInteger)size;
- (void)pointerValue;
@end

@implementation NSValue

- (NSValue)init
{
  v6 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == NSValue)
  {
    NSRequestConcreteImplementation(self, a2, NSValue);
  }

  v5.receiver = self;
  v5.super_class = NSValue;
  return [(NSValue *)&v5 init];
}

- (void)pointerValue
{
  v4[1] = *MEMORY[0x1E69E9840];
  if (![(NSValue *)self _matchType:"^v" size:8])
  {
    return 0;
  }

  v4[0] = 0;
  [(NSValue *)self getValue:v4];
  return v4[0];
}

- (id)nonretainedObjectValue
{
  v4[1] = *MEMORY[0x1E69E9840];
  if (![(NSValue *)self _matchType:"^v" size:8])
  {
    return 0;
  }

  v4[0] = 0;
  [(NSValue *)self getValue:v4];
  return v4[0];
}

- (NSRange)rangeValue
{
  v7 = *MEMORY[0x1E69E9840];
  if ([(NSValue *)self _matchType:"{_NSRange=QQ}" size:16 strict:1])
  {
    v5 = 0;
    v6 = 0;
    [(NSValue *)self getValue:&v5];
    v3 = v5;
    v4 = v6;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  result.length = v4;
  result.location = v3;
  return result;
}

- (NSRect)rectValue
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = [(NSValue *)self _matchType:"{CGRect={CGPoint=dd}{CGSize=dd}}" size:32 strict:1];
  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  if (v3)
  {
    v8 = 0u;
    *v9 = 0u;
    [(NSValue *)self getValue:&v8];
    v6 = *(&v8 + 1);
    v7 = *&v8;
    v4 = v9[1];
    v5 = v9[0];
  }

  result.size.height = v4;
  result.size.width = v5;
  result.origin.y = v6;
  result.origin.x = v7;
  return result;
}

- (NSPoint)pointValue
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = [(NSValue *)self _matchType:"{CGPoint=dd}" size:16 strict:1];
  v4 = 0.0;
  v5 = 0.0;
  if (v3)
  {
    v6 = 0.0;
    v7 = 0.0;
    [(NSValue *)self getValue:&v6, 0.0, 0.0];
    v5 = v6;
    v4 = v7;
  }

  result.y = v4;
  result.x = v5;
  return result;
}

- (NSSize)sizeValue
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = [(NSValue *)self _matchType:"{CGSize=dd}" size:16 strict:1];
  v4 = 0.0;
  v5 = 0.0;
  if (v3)
  {
    v6 = 0.0;
    v7 = 0.0;
    [(NSValue *)self getValue:&v6, 0.0, 0.0];
    v5 = v6;
    v4 = v7;
  }

  result.height = v4;
  result.width = v5;
  return result;
}

- (NSEdgeInsets)edgeInsetsValue
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = [(NSValue *)self _matchType:"{NSEdgeInsets=dddd}" size:32 strict:1];
  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  if (v3)
  {
    v8 = 0u;
    *v9 = 0u;
    [(NSValue *)self getValue:&v8];
    v6 = *(&v8 + 1);
    v7 = *&v8;
    v4 = v9[1];
    v5 = v9[0];
  }

  result.right = v4;
  result.bottom = v5;
  result.left = v6;
  result.top = v7;
  return result;
}

+ (NSValue)allocWithZone:(_NSZone *)a3
{
  if (NSValue == a1)
  {
    return &__placeholderValue;
  }

  else
  {
    return NSAllocateObject(a1, 0, a3);
  }
}

+ (NSValue)valueWithBytes:(const void *)value objCType:(const char *)type
{
  v4 = _NSNewValue(value, type, 0);

  return v4;
}

- (void)getValue:(void *)value
{
  v9[1] = *MEMORY[0x1E69E9840];
  v6 = objc_opt_class();
  v7 = [v6 instanceMethodForSelector:sel_getValue_size_];
  if (v7 == +[NSValue instanceMethodForSelector:](NSValue, "instanceMethodForSelector:", sel_getValue_size_) || (v8 = [v6 instanceMethodForSelector:sel_getValue_], v8 != +[NSValue instanceMethodForSelector:](NSValue, "instanceMethodForSelector:", sel_getValue_)))
  {

    NSRequestConcreteImplementation(self, a2, NSValue);
  }

  v9[0] = 0;
  NSGetSizeAndAlignment([(NSValue *)self objCType], v9, 0);
  [(NSValue *)self getValue:value size:v9[0]];
}

- (void)getValue:(void *)value size:(NSUInteger)size
{
  sizep[1] = *MEMORY[0x1E69E9840];
  v8 = objc_opt_class();
  v9 = [v8 instanceMethodForSelector:sel_getValue_];
  if (v9 == +[NSValue instanceMethodForSelector:](NSValue, "instanceMethodForSelector:", sel_getValue_) || (v10 = [v8 instanceMethodForSelector:sel_getValue_size_], v10 != +[NSValue instanceMethodForSelector:](NSValue, "instanceMethodForSelector:", sel_getValue_size_)))
  {

    NSRequestConcreteImplementation(self, a2, NSValue);
  }

  sizep[0] = 0;
  v11 = [(NSValue *)self objCType];
  NSGetSizeAndAlignment(v11, sizep, 0);
  if (sizep[0] != size)
  {
    v12 = [NSString stringWithFormat:@"Cannot get value with size %zu. The type encoded as %s is expected to be %zu bytes", size, v11, sizep[0]];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v12 userInfo:0]);
  }

  [(NSValue *)self getValue:value];
}

- (BOOL)_matchType:(const char *)a3 size:(unint64_t)a4 strict:(BOOL)a5
{
  v10[1] = *MEMORY[0x1E69E9840];
  v8 = [(NSValue *)self objCType];
  v10[0] = 0;
  NSGetSizeAndAlignment(v8, v10, 0);
  result = v10[0] == a4 && !a5;
  if (a5 && v10[0] == a4)
  {
    return matchTypeEncoding(v8, a3, a4);
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  sizep[128] = *MEMORY[0x1E69E9840];
  v5 = [(NSValue *)self objCType];
  sizep[0] = 0;
  NSGetSizeAndAlignment(v5, sizep, 0);
  v6 = sizep[0];
  if (sizep[0] < 0x401)
  {
    v7 = sizep;
  }

  else
  {
    v7 = malloc_type_malloc(sizep[0], 0x100004077774924uLL);
  }

  [(NSValue *)self getValue:v7];
  v8 = _NSNewValue(v7, v5, a3);
  if (v6 > 0x400)
  {
    free(v7);
  }

  return v8;
}

- (BOOL)isEqualToValue:(NSValue *)value
{
  sizep[128] = *MEMORY[0x1E69E9840];
  if (self == value)
  {
    return 1;
  }

  v5 = [(NSValue *)self objCType];
  if (strcmp(v5, [(NSValue *)value objCType]))
  {
    return 0;
  }

  sizep[0] = 0;
  NSGetSizeAndAlignment(v5, sizep, 0);
  v7 = sizep[0];
  if (sizep[0] < 0x401)
  {
    v9 = &v11;
    v8 = sizep;
  }

  else
  {
    v8 = malloc_type_malloc(sizep[0], 0x100004077774924uLL);
    v9 = malloc_type_malloc(v7, 0x100004077774924uLL);
  }

  [(NSValue *)self getValue:v8];
  [(NSValue *)value getValue:v9];
  v6 = memcmp(v8, v9, v7) == 0;
  if (v7 > 0x400)
  {
    free(v8);
    free(v9);
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    LOBYTE(v5) = 1;
  }

  else if (a3)
  {
    if (objc_opt_class() == __NSConcreteValueClass || (v5 = _NSIsNSValue()) != 0)
    {

      LOBYTE(v5) = [(NSValue *)self isEqualToValue:a3];
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  sizep[128] = *MEMORY[0x1E69E9840];
  v3 = [(NSValue *)self objCType];
  sizep[0] = 0;
  NSGetSizeAndAlignment(v3, sizep, 0);
  v4 = sizep[0];
  if (sizep[0] < 0x401)
  {
    [(NSValue *)self getValue:sizep];
    if (v4 <= 7)
    {
      if (v4)
      {
        v19 = 0;
        v7 = 0;
        do
        {
          v5 = sizep;
          v7 = *(sizep + v19++) | (v7 << 8);
        }

        while (v4 != v19);
      }

      else
      {
        v7 = 0;
        v5 = sizep;
      }

      goto LABEL_9;
    }

    v5 = sizep;
  }

  else
  {
    v5 = malloc_type_malloc(sizep[0], 0x100004077774924uLL);
    [(NSValue *)self getValue:v5];
  }

  v7 = 0;
  v8 = 32;
  if (v4 < 0x20)
  {
    v8 = v4;
  }

  v9 = v8 + 8;
  v10 = v5;
  do
  {
    v11 = *v10++;
    v6 = v11;
    v7 ^= v11;
    v9 -= 8;
  }

  while (v9 > 0xF);
LABEL_9:
  v12 = *v3 - 66;
  v13 = v12 > 0x31;
  v14 = (1 << v12) & 0x2848200028483;
  v15 = v13 || v14 == 0;
  v16 = v6 | (__ROR8__(v7 & 0xFFFFFFFFFFFFFFLL, 32) >> 32);
  if (v15)
  {
    v17 = v16;
  }

  else
  {
    v17 = v7;
  }

  if (v4 >= 0x401)
  {
    free(v5);
  }

  return v17;
}

- (id)description
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  NSGetSizeAndAlignment([(NSValue *)self objCType], v6, 0);
  v3 = [objc_allocWithZone(MEMORY[0x1E695DF88]) initWithLength:v6[0]];
  -[NSValue getValue:](self, "getValue:", [v3 mutableBytes]);
  v4 = [v3 description];

  return v4;
}

+ (NSValue)valueWithNonretainedObject:(id)anObject
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = anObject;
  return [NSValue valueWithBytes:v4 objCType:"^v"];
}

+ (NSValue)valueWithWeakObject:(id)a3
{
  v3 = [[NSWeakObjectValue alloc] initWithObject:a3];

  return v3;
}

+ (NSValue)valueWithPointer:(const void *)pointer
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = pointer;
  return [NSValue valueWithBytes:v4 objCType:"^v"];
}

+ (NSValue)valueWithPoint:(NSPoint)point
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = point;
  return [NSValue valueWithBytes:&v4 objCType:"{CGPoint=dd}"];
}

+ (NSValue)valueWithSize:(NSSize)size
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = size;
  return [NSValue valueWithBytes:&v4 objCType:"{CGSize=dd}"];
}

+ (NSValue)valueWithRect:(NSRect)rect
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = rect;
  return [NSValue valueWithBytes:&v4 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
}

+ (NSValue)valueWithRange:(NSRange)range
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = range;
  return [NSValue valueWithBytes:&v4 objCType:"{_NSRange=QQ}"];
}

+ (NSValue)valueWithEdgeInsets:(NSEdgeInsets)insets
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = insets;
  return [NSValue valueWithBytes:&v4 objCType:"{NSEdgeInsets=dddd}"];
}

- (void)encodeWithCoder:(id)a3
{
  sizep[128] = *MEMORY[0x1E69E9840];
  v5 = [(NSValue *)self objCType];
  v9 = v5;
  sizep[0] = 0;
  NSGetSizeAndAlignment(v5, sizep, 0);
  v6 = sizep[0];
  if (sizep[0] < 0x401)
  {
    v7 = sizep;
  }

  else
  {
    v7 = malloc_type_malloc(sizep[0], 0x100004077774924uLL);
  }

  if (*v5 == 94 && v5[1] == 118)
  {
    v8 = [NSString stringWithFormat:@"cannot encode (void *) value: %@", self];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v8 userInfo:0]);
  }

  [(NSValue *)self getValue:v7];
  [a3 encodeValueOfObjCType:"*" at:&v9];
  [a3 encodeValueOfObjCType:v9 at:v7];
  if (v6 > 0x400)
  {
    free(v7);
  }
}

- (NSValue)initWithCoder:(NSCoder *)coder
{
  v5 = [(NSValue *)self zone];

  return newDecodedValue(coder, v5);
}

@end