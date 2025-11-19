@interface NSIndexPath
+ (NSIndexPath)indexPathWithIndex:(NSUInteger)index;
+ (NSIndexPath)indexPathWithIndexes:(const NSUInteger *)indexes length:(NSUInteger)length;
+ (id)indexPath;
+ (void)initialize;
- (BOOL)isEqual:(id)a3;
- (NSComparisonResult)compare:(NSIndexPath *)otherObject;
- (NSIndexPath)indexPathByAddingIndex:(NSUInteger)index;
- (NSIndexPath)indexPathByRemovingLastIndex;
- (NSIndexPath)initWithCoder:(id)a3;
- (NSIndexPath)initWithIndex:(NSUInteger)index;
- (NSIndexPath)initWithIndexes:(const NSUInteger *)indexes length:(NSUInteger)length;
- (NSUInteger)indexAtPosition:(NSUInteger)position;
- (NSUInteger)length;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)getIndexes:(NSUInteger *)indexes;
- (void)getIndexes:(NSUInteger *)indexes range:(NSRange)positionRange;
@end

@implementation NSIndexPath

- (unint64_t)hash
{
  v15[1] = *MEMORY[0x1E69E9840];
  if ((self & 0x8000000000000000) != 0)
  {
    v3 = *MEMORY[0x1E69E5910];
    if ((~self & 0xC000000000000007) == 0)
    {
      v3 = 0;
    }

    v4 = v3 ^ self;
    v5 = 0xFFFFFFFFFFFFFFFLL;
    if ((~v4 & 7) == 0)
    {
      v5 = 0xFFFFFFFFFFFFFLL;
    }

    return v5 & (v4 >> 3);
  }

  else
  {
    result = self->_inlinePayload;
    if ((result & 7) != 6)
    {
      v7 = [(NSIndexPath *)self length];
      if (v7 > 4 || (v8 = v7, Class = object_getClass(self), Class == NSIndexPath) || (v10 = MEMORY[0x1EEE9AC00](Class), v12 = (v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0)), [(NSIndexPath *)self getIndexes:v12 range:0, v8, v10], (result = _makeInlinePayload(v12, v8)) == 0))
      {
        result = [(NSIndexPath *)self length];
        if (result)
        {
          v13 = result;
          v14 = result + ([(NSIndexPath *)self indexAtPosition:0]<< 8);
          return v14 + ([(NSIndexPath *)self indexAtPosition:v13 - 1]<< 36);
        }
      }
    }
  }

  return result;
}

+ (void)initialize
{
  if (NSIndexPath == a1)
  {
    if (*MEMORY[0x1E69E5908] && _CFExecutableLinkedOnOrAfter())
    {

      _objc_registerTaggedPointerClass();
    }

    else
    {
      _NSIndexSetTaggedPointersDisabled = 1;
    }
  }
}

- (NSUInteger)length
{
  if ((self & 0x8000000000000000) != 0)
  {
    v2 = *MEMORY[0x1E69E5910];
    if ((~self & 0xC000000000000007) == 0)
    {
      v2 = 0;
    }

    v3 = v2 ^ self;
    v4 = 0xFFFFFFFFFFFFFFFLL;
    if ((~v3 & 7) == 0)
    {
      v4 = 0xFFFFFFFFFFFFFLL;
    }

    inlinePayload = v4 & (v3 >> 3);
    return (inlinePayload >> 3) & 7;
  }

  inlinePayload = self->_inlinePayload;
  if ((inlinePayload & 7) == 6)
  {
    return (inlinePayload >> 3) & 7;
  }

  return self->_length;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  indexes = self->_indexes;
  if (indexes)
  {
    self->_indexes = 0;
    free(indexes);
  }

  v4.receiver = self;
  v4.super_class = NSIndexPath;
  [(NSIndexPath *)&v4 dealloc];
}

- (NSIndexPath)indexPathByRemovingLastIndex
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = [(NSIndexPath *)self length];
  v4 = v3 - 1;
  if (v3 <= 1)
  {

    return [NSIndexPath indexPathWithIndexes:0 length:0];
  }

  if (v4 >> 61)
  {
    v11 = [NSString stringWithFormat:@"*** attempt to create an NSUInteger buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v4];
    v12 = MEMORY[0x1E695DF30];
    v13 = MEMORY[0x1E695D920];
    goto LABEL_14;
  }

  v6 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v8 = v14 - v7;
  if (v9 > 0x101)
  {
    v8 = malloc_type_malloc(8 * v4, 0x100004000313F17uLL);
    if (v8)
    {
      goto LABEL_9;
    }

    v11 = [NSString stringWithFormat:@"*** attempt to create an NSUInteger buffer of length (%lu) failed", v4];
    v12 = MEMORY[0x1E695DF30];
    v13 = MEMORY[0x1E695DA18];
LABEL_14:
    objc_exception_throw([v12 exceptionWithName:*v13 reason:v11 userInfo:0]);
  }

  bzero(v8, 8 * v4);
LABEL_9:
  [(NSIndexPath *)self getIndexes:v8 range:0, v4];
  v10 = [NSIndexPath indexPathWithIndexes:v8 length:v4];
  if (v6 >= 0x102)
  {
    free(v8);
  }

  return v10;
}

- (id)description
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = [(NSIndexPath *)self length];
  v9.receiver = self;
  v9.super_class = NSIndexPath;
  v4 = [(NSString *)NSMutableString stringWithFormat:@"%@ {length = %lu, path = ", [(NSIndexPath *)&v9 description], v3];
  if (v3)
  {
    v5 = 0;
    do
    {
      v6 = [(NSIndexPath *)self indexAtPosition:v5++];
      if (v5 >= v3)
      {
        v7 = "";
      }

      else
      {
        v7 = " - ";
      }

      [(NSMutableString *)v4 appendFormat:@"%lu%s", v6, v7];
    }

    while (v3 != v5);
  }

  [(NSMutableString *)v4 appendString:@"}"];
  return v4;
}

+ (id)indexPath
{
  if (NSIndexPath == a1 && (_NSIndexSetTaggedPointersDisabled & 1) == 0)
  {
    result = 0x8000000000000034;
    v6 = *MEMORY[0x1E69E5910] ^ 0x8000000000000034;
    if ((~v6 & 0xC000000000000007) != 0)
    {
      return (v6 & 0xFFFFFFFFFFFFFFF8 | *(MEMORY[0x1E69E5900] + (v6 & 7)));
    }
  }

  else
  {
    v4 = [[a1 alloc] initWithIndexes:0 length:{0, v2}];

    return v4;
  }

  return result;
}

+ (NSIndexPath)indexPathWithIndex:(NSUInteger)index
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = index;
  if (NSIndexPath != a1 || index >> 13 || (_NSIndexSetTaggedPointersDisabled & 1) != 0)
  {
    return [[a1 alloc] initWithIndexes:v5 length:1];
  }

  result = ((index << 11) | 0x8000000000000074);
  v4 = *MEMORY[0x1E69E5910] ^ result;
  if ((~v4 & 0xC000000000000007) != 0)
  {
    return (v4 & 0xFFFFFFFFFFFFFFF8 | *(MEMORY[0x1E69E5900] + (v4 & 7)));
  }

  return result;
}

+ (NSIndexPath)indexPathWithIndexes:(const NSUInteger *)indexes length:(NSUInteger)length
{
  if (NSIndexPath == a1 && (_NSIndexSetTaggedPointersDisabled & 1) == 0 && (InlinePayload = _makeInlinePayload(indexes, length)) != 0)
  {
    result = ((8 * InlinePayload) | 0x8000000000000004);
    v9 = *MEMORY[0x1E69E5910] ^ result;
    if ((~v9 & 0xC000000000000007) != 0)
    {
      return (v9 & 0xFFFFFFFFFFFFFFF8 | *(MEMORY[0x1E69E5900] + (v9 & 7)));
    }
  }

  else
  {
    v10 = [[a1 alloc] initWithIndexes:indexes length:length];

    return v10;
  }

  return result;
}

- (NSIndexPath)initWithIndex:(NSUInteger)index
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = index;
  return [(NSIndexPath *)self initWithIndexes:v4 length:1];
}

- (NSIndexPath)initWithIndexes:(const NSUInteger *)indexes length:(NSUInteger)length
{
  v15 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = NSIndexPath;
  v6 = [(NSIndexPath *)&v14 init];
  v7 = v6;
  if (length >> 30 || !v6)
  {

    return 0;
  }

  InlinePayload = _makeInlinePayload(indexes, length);
  if (!InlinePayload)
  {
    goto LABEL_9;
  }

  v9 = InlinePayload;
  if (objc_opt_class() != NSIndexPath || (_NSIndexSetTaggedPointersDisabled & 1) != 0)
  {
    if ([v7 isMemberOfClass:NSIndexPath])
    {
      *(v7 + 24) = v9;
      return v7;
    }

LABEL_9:
    v10 = malloc_default_zone();
    v11 = malloc_type_zone_malloc(v10, 8 * length, 0x409734D7uLL);
    *(v7 + 8) = v11;
    memmove(v11, indexes, 8 * length);
    *(v7 + 16) = length;
    return v7;
  }

  v7 = (8 * v9) | 0x8000000000000004;
  v13 = *MEMORY[0x1E69E5910] ^ v7;
  if ((~v13 & 0xC000000000000007) != 0)
  {
    return (v13 & 0xFFFFFFFFFFFFFFF8 | *(MEMORY[0x1E69E5900] + (v13 & 7)));
  }

  return v7;
}

- (NSUInteger)indexAtPosition:(NSUInteger)position
{
  v3 = 0x7FFFFFFFFFFFFFFFLL;
  if (position == 0x7FFFFFFFFFFFFFFFLL)
  {
    return v3;
  }

  if ((self & 0x8000000000000000) != 0)
  {
    v4 = *MEMORY[0x1E69E5910];
    if ((~self & 0xC000000000000007) == 0)
    {
      v4 = 0;
    }

    v5 = v4 ^ self;
    v6 = 0xFFFFFFFFFFFFFFFLL;
    if ((~v5 & 7) == 0)
    {
      v6 = 0xFFFFFFFFFFFFFLL;
    }

    v7 = v6 & (v5 >> 3);
  }

  else
  {
    v7 = *(self + 24);
    if ((v7 & 7) != 6)
    {
      if (*(self + 16) > position)
      {
        return *(*(self + 8) + 8 * position);
      }

      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  if (((v7 >> 3) & 7) <= position)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (position < 4)
  {
    return (v7 >> (13 * position + 8)) & 0x1FFF;
  }

  __break(1u);
  return self;
}

- (void)getIndexes:(NSUInteger *)indexes range:(NSRange)positionRange
{
  length = positionRange.length;
  location = positionRange.location;
  v9 = [(NSIndexPath *)self length];
  if (v9 < length || location > v9 - length)
  {
    goto LABEL_23;
  }

  if ((self & 0x8000000000000000) != 0)
  {
    v10 = *MEMORY[0x1E69E5910];
    if ((~self & 0xC000000000000007) == 0)
    {
      v10 = 0;
    }

    v11 = v10 ^ self;
    v12 = 0xFFFFFFFFFFFFFFFLL;
    if ((~v11 & 7) == 0)
    {
      v12 = 0xFFFFFFFFFFFFFLL;
    }

    inlinePayload = v12 & (v11 >> 3);
  }

  else
  {
    inlinePayload = self->_inlinePayload;
    if ((inlinePayload & 7) != 6)
    {
      if (object_getClass(self) == NSIndexPath)
      {
        v15 = &self->_indexes[location];

        memmove(indexes, v15, 8 * length);
      }

      else
      {
        for (; length; --length)
        {
          *indexes++ = [(NSIndexPath *)self indexAtPosition:location++];
        }
      }

      return;
    }
  }

  if (length)
  {
    v14 = 13 * location + 8;
    while (location < 4)
    {
      *indexes++ = (inlinePayload >> v14) & 0x1FFF;
      v14 += 13;
      ++location;
      if (!--length)
      {
        return;
      }
    }

    __break(1u);
LABEL_23:
    v16 = v9;
    v17 = _NSMethodExceptionProem(self, a2);
    v20.location = location;
    v20.length = length;
    v18 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: range %@ beyond bounds (%lu)", v17, NSStringFromRange(v20), v16), 0}];
    objc_exception_throw(v18);
  }
}

- (void)getIndexes:(NSUInteger *)indexes
{
  v5 = [(NSIndexPath *)self length];

  [(NSIndexPath *)self getIndexes:indexes range:0, v5];
}

- (NSIndexPath)indexPathByAddingIndex:(NSUInteger)index
{
  v16[1] = *MEMORY[0x1E69E9840];
  v5 = [(NSIndexPath *)self length];
  v6 = v5 + 1;
  if ((v5 + 1) >> 61)
  {
    v13 = [NSString stringWithFormat:@"*** attempt to create an NSUInteger buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v6];
    v14 = MEMORY[0x1E695DF30];
    v15 = MEMORY[0x1E695D920];
    goto LABEL_13;
  }

  v7 = v5;
  if (v6 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v5 + 1;
  }

  MEMORY[0x1EEE9AC00](v5);
  v10 = v16 - v9;
  if (v6 <= 0x100)
  {
    bzero(v10, 8 * v8);
    goto LABEL_8;
  }

  v10 = malloc_type_malloc(8 * v8, 0x100004000313F17uLL);
  if (!v10)
  {
    v13 = [NSString stringWithFormat:@"*** attempt to create an NSUInteger buffer of length (%lu) failed", v8];
    v14 = MEMORY[0x1E695DF30];
    v15 = MEMORY[0x1E695DA18];
LABEL_13:
    objc_exception_throw([v14 exceptionWithName:*v15 reason:v13 userInfo:0]);
  }

LABEL_8:
  [(NSIndexPath *)self getIndexes:v10 range:0, v7];
  *&v10[8 * v7] = index;
  v11 = [NSIndexPath indexPathWithIndexes:v10 length:v6];
  if (v6 >= 0x101)
  {
    free(v10);
  }

  return v11;
}

- (NSComparisonResult)compare:(NSIndexPath *)otherObject
{
  if (!otherObject)
  {
    return 1;
  }

  if (otherObject == self)
  {
    return 0;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"Unable to compare %@ with object of different class: %@", self, otherObject), 0}]);
  }

  v5 = [(NSIndexPath *)self length];
  v6 = [(NSIndexPath *)otherObject length];
  v7 = v6;
  if (v5 >= v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v5;
  }

  if (v8)
  {
    v9 = 0;
    v10 = NSOrderedDescending;
    while (1)
    {
      v11 = [(NSIndexPath *)otherObject indexAtPosition:v9];
      if ([(NSIndexPath *)self indexAtPosition:v9]< v11)
      {
        return -1;
      }

      if ([(NSIndexPath *)self indexAtPosition:v9]> v11)
      {
        return v10;
      }

      if (v8 == ++v9)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    if (v5 >= v7)
    {
      v12 = NSOrderedSame;
    }

    else
    {
      v12 = NSOrderedAscending;
    }

    if (v5 <= v7)
    {
      return v12;
    }

    else
    {
      return 1;
    }
  }
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  v19 = v8;
  v20 = v7;
  v21 = v6;
  v22 = v5;
  v23 = v4;
  v24 = v3;
  v25 = v9;
  v26 = v10;
  if (!a3 || (self & 0x8000000000000000) != 0 && (a3 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v13 = [(NSIndexPath *)self length];
  if (v13 != [a3 length])
  {
    return 0;
  }

  if (v13)
  {
    if (v13 != 2)
    {
      v17 = 0;
      while (1)
      {
        v18 = [(NSIndexPath *)self indexAtPosition:v17, v19, v20, v21, v22, v23, v24, v25, v26];
        if (v18 != [a3 indexAtPosition:v17])
        {
          break;
        }

        if (v13 == ++v17)
        {
          return 1;
        }
      }

      return 0;
    }

    v14 = [(NSIndexPath *)self indexAtPosition:1];
    if (v14 != [a3 indexAtPosition:1])
    {
      return 0;
    }

    v15 = [(NSIndexPath *)self indexAtPosition:0];
    if (v15 != [a3 indexAtPosition:0])
    {
      return 0;
    }
  }

  return 1;
}

- (void)encodeWithCoder:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    v14.receiver = self;
    v14.super_class = NSIndexPath;
    v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@ cannot be serialized with a coder that does not support keyed archiving", -[NSIndexPath description](&v14, sel_description)), 0}];
    objc_exception_throw(v13);
  }

  v5 = [(NSIndexPath *)self length];
  [a3 encodeInteger:v5 forKey:@"NSIndexPathLength"];
  if (v5)
  {
    if (v5 == 1)
    {
      v6 = [(NSIndexPath *)self indexAtPosition:0];

      [a3 encodeInteger:v6 forKey:@"NSIndexPathValue"];
    }

    else
    {
      v7 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:2 * v5 + 16];
      for (i = 0; i != v5; ++i)
      {
        v9 = [(NSIndexPath *)self indexAtPosition:i];
        v10 = v15;
        if (v9 >= 0x80)
        {
          v11 = v9;
          do
          {
            *v10++ = v11 | 0x80;
            v9 = v11 >> 7;
            v12 = v11 >> 14;
            v11 >>= 7;
          }

          while (v12);
        }

        *v10 = v9;
        [v7 appendBytes:v15 length:v10 - v15 + 1];
      }

      [a3 encodeObject:v7 forKey:@"NSIndexPathData"];
    }
  }
}

- (NSIndexPath)initWithCoder:(id)a3
{
  v41[1] = *MEMORY[0x1E69E9840];
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    v31.receiver = self;
    v31.super_class = NSIndexPath;
    v25 = [NSString stringWithFormat:@"%@ cannot be serialized with a coder that does not support keyed archives", [(NSIndexPath *)&v31 description]];

    v26 = MEMORY[0x1E695DF30];
    v27 = *MEMORY[0x1E695D940];
    v28 = v25;
    goto LABEL_44;
  }

  if (([a3 containsValueForKey:@"NSIndexPathLength"] & 1) == 0)
  {

    v40 = @"NSLocalizedDescription";
    v41[0] = @"[NSIndexPath initWithCoder:] decoder did not provide a length value for the indexPath.";
    v15 = MEMORY[0x1E695DF20];
    v16 = v41;
    v17 = &v40;
    goto LABEL_17;
  }

  v5 = [a3 decodeIntegerForKey:@"NSIndexPathLength"];
  v6 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NSIndexPathData"];
  v7 = [v6 bytes];
  v8 = v7;
  v30 = v7;
  if (v5 < 2)
  {
    goto LABEL_11;
  }

  v7 = [a3 requiresSecureCoding];
  if (v7)
  {
    if (v8)
    {
      v7 = [v6 length];
      v9 = 0;
      if (v7)
      {
        v10 = v8;
        do
        {
          v11 = *v10++;
          v9 += (v11 >> 7) ^ 1;
          --v7;
        }

        while (v7);
      }

      if (v9 == v5)
      {
        goto LABEL_10;
      }

      v36 = @"NSLocalizedDescription";
      v37 = @"Range data did not match expected length.";
      v15 = MEMORY[0x1E695DF20];
      v16 = &v37;
      v17 = &v36;
    }

    else
    {

      v38 = @"NSLocalizedDescription";
      v39 = @"Range data missing.";
      v15 = MEMORY[0x1E695DF20];
      v16 = &v39;
      v17 = &v38;
    }

LABEL_17:
    [a3 failWithError:{+[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 4864, objc_msgSend(v15, "dictionaryWithObjects:forKeys:count:", v16, v17, 1))}];
    return 0;
  }

LABEL_10:
  if (v5 >> 61)
  {
    v28 = [NSString stringWithFormat:@"*** attempt to create an NSUInteger buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v5];
    v26 = MEMORY[0x1E695DF30];
    v29 = MEMORY[0x1E695D920];
    goto LABEL_43;
  }

LABEL_11:
  if (v5 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v5;
  }

  MEMORY[0x1EEE9AC00](v7);
  v14 = (&v30 - v13);
  if (v5 <= 0x100)
  {
    bzero(v14, 8 * v12);
    goto LABEL_19;
  }

  v14 = malloc_type_malloc(8 * v12, 0x100004000313F17uLL);
  if (!v14)
  {
    v28 = [NSString stringWithFormat:@"*** attempt to create an NSUInteger buffer of length (%lu) failed", v12];
    v26 = MEMORY[0x1E695DF30];
    v29 = MEMORY[0x1E695DA18];
LABEL_43:
    v27 = *v29;
LABEL_44:
    objc_exception_throw([v26 exceptionWithName:v27 reason:v28 userInfo:{0, v30}]);
  }

LABEL_19:
  if (v5)
  {
    if (v5 == 1)
    {
      if ([a3 containsValueForKey:@"NSIndexPathValue"])
      {
        *v14 = [a3 decodeIntegerForKey:@"NSIndexPathValue"];
        goto LABEL_27;
      }

      v34 = @"NSLocalizedDescription";
      v35 = @"[NSIndexPath initWithCoder:] decoder did not provide indexPath data.";
      v21 = MEMORY[0x1E695DF20];
      v22 = &v35;
      v23 = &v34;
    }

    else
    {
      if ([a3 containsValueForKey:@"NSIndexPathData"])
      {
        if (v8)
        {
          v19 = v14;
          v20 = v5;
          do
          {
            *v19++ = _NSGetUnsignedInt2(&v30);
            --v20;
          }

          while (v20);
        }

        goto LABEL_27;
      }

      if (v5 >= 0x101)
      {
        free(v14);
      }

      v32 = @"NSLocalizedDescription";
      v33 = @"[NSIndexPath initWithCoder:] decoder did not provide indexPath data.";
      v21 = MEMORY[0x1E695DF20];
      v22 = &v33;
      v23 = &v32;
    }

    [a3 failWithError:{+[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 4864, objc_msgSend(v21, "dictionaryWithObjects:forKeys:count:", v22, v23, 1, v30))}];
    return 0;
  }

LABEL_27:
  if ([a3 error])
  {

    v18 = 0;
  }

  else
  {
    v18 = [(NSIndexPath *)self initWithIndexes:v14 length:v5];
  }

  if (v5 >= 0x101)
  {
    free(v14);
  }

  return v18;
}

@end