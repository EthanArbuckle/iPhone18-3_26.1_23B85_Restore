@interface NSConcreteValue
+ (void)initialize;
- (BOOL)_matchType:(const char *)type size:(unint64_t)size strict:(BOOL)strict;
- (BOOL)isEqualToValue:(id)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)getValue:(void *)value;
- (void)getValue:(void *)value size:(unint64_t)size;
@end

@implementation NSConcreteValue

- (unint64_t)hash
{
  IndexedIvars = object_getIndexedIvars(self);
  typeInfo = self->typeInfo;
  v7 = *typeInfo;
  v6 = typeInfo[1];
  if (*typeInfo <= 7)
  {
    v8 = 0;
    if (v7)
    {
      v11 = v7 + 1;
      do
      {
        v12 = *IndexedIvars;
        IndexedIvars = (IndexedIvars + 1);
        v4 = v12;
        v8 = v12 | (v8 << 8);
        --v11;
      }

      while (v11 > 1);
    }
  }

  else
  {
    v8 = 0;
    if (v7 >= 0x20)
    {
      v7 = 32;
    }

    v9 = v7 + 8;
    do
    {
      v10 = *IndexedIvars++;
      v4 = v10;
      v8 ^= v10;
      v9 -= 8;
    }

    while (v9 > 0xF);
  }

  v13 = *v6 - 66;
  v14 = v13 > 0x31;
  v15 = (1 << v13) & 0x2848200028483;
  v16 = v14 || v15 == 0;
  v17 = v4 | (__ROR8__(v8 & 0xFFFFFFFFFFFFFFLL, 32) >> 32);
  if (v16)
  {
    return v17;
  }

  else
  {
    return v8;
  }
}

+ (void)initialize
{
  v2[1] = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    v2[0] = 0;
    NSGetSizeAndAlignment("{CGRect={CGPoint=dd}{CGSize=dd}}", v2, 0);
    if (v2[0] != 32)
    {
      NSLog(@"*** Inconsistency in NSValue type strings for NSRect types!");
    }

    v2[0] = 0;
    NSGetSizeAndAlignment("{CGPoint=dd}", v2, 0);
    if (v2[0] != 16)
    {
      NSLog(@"*** Inconsistency in NSValue type strings for NSPoint types!");
    }

    v2[0] = 0;
    NSGetSizeAndAlignment("{CGSize=dd}", v2, 0);
    if (v2[0] != 16)
    {
      NSLog(@"*** Inconsistency in NSValue type strings for NSSize types!");
    }
  }
}

- (id)description
{
  v10 = *MEMORY[0x1E69E9840];
  specialFlags = self->_specialFlags;
  if (specialFlags <= 9)
  {
    if (specialFlags > 1)
    {
      if (specialFlags != 2)
      {
        if (specialFlags != 3)
        {
          if (specialFlags == 4)
          {
LABEL_6:
            v11.location = [(NSValue *)self rangeValue];
            return [NSString stringWithFormat:@"NSRange: %@", NSStringFromRange(v11)];
          }

          goto LABEL_31;
        }

        goto LABEL_32;
      }

      goto LABEL_33;
    }

    if (specialFlags)
    {
      if (specialFlags == 1)
      {
        goto LABEL_14;
      }

LABEL_31:
      v6.receiver = self;
      v6.super_class = NSConcreteValue;
      return [(NSValue *)&v6 description];
    }

    objCType = [(NSConcreteValue *)self objCType];
    if (!strcmp(objCType, "{CGRect={CGPoint=dd}{CGSize=dd}}"))
    {
LABEL_32:
      [(NSValue *)self rectValue];
      return [NSString stringWithFormat:@"NSRect: %@", NSStringFromRect(v14)];
    }

    if (!strcmp(objCType, "{CGPoint=dd}"))
    {
LABEL_14:
      [(NSValue *)self pointValue];
      return [NSString stringWithFormat:@"NSPoint: %@", NSStringFromPoint(v12)];
    }

    if (!strcmp(objCType, "{CGSize=dd}"))
    {
LABEL_33:
      [(NSValue *)self sizeValue];
      return [NSString stringWithFormat:@"NSSize: %@", NSStringFromSize(v13)];
    }

    if (!strcmp(objCType, "{_NSRange=QQ}"))
    {
      goto LABEL_6;
    }

    if (strcmp(objCType, "{CGAffineTransform=ffffff}") && strcmp(objCType, "{CGAffineTransform=dddddd}"))
    {
      if (strcmp(objCType, "{UIEdgeInsets=ffff}") && strcmp(objCType, "{UIEdgeInsets=dddd}"))
      {
        if (strcmp(objCType, "{NSEdgeInsets=ffff}") && strcmp(objCType, "{NSEdgeInsets=dddd}"))
        {
          if (strcmp(objCType, "{NSDirectionalEdgeInsets=ffff}") && strcmp(objCType, "{NSDirectionalEdgeInsets=dddd}"))
          {
            if (strcmp(objCType, "{UIOffset=ff}") && strcmp(objCType, "{UIOffset=dd}"))
            {
              goto LABEL_31;
            }

            goto LABEL_36;
          }

          return [NSString stringWithFormat:@"NSDirectionalEdgeInsets: %@", _stringFromEdgeInsets(self)];
        }

        return [NSString stringWithFormat:@"NSEdgeInsets: %@", _stringFromEdgeInsets(self)];
      }

      return [NSString stringWithFormat:@"UIEdgeInsets: %@", _stringFromEdgeInsets(self)];
    }

LABEL_34:
    v8 = 0u;
    v9 = 0u;
    v7 = 0u;
    [(NSConcreteValue *)self getValue:&v7];
    return [NSString stringWithFormat:@"CGAffineTransform: %@", [NSString stringWithFormat:@"{{%.*g, %.*g, %.*g, %.*g}, {%.*g, %.*g}}", 17, v7, 17, *(&v7 + 1), 17, v8, 17, *(&v8 + 1), 17, v9, 17, *(&v9 + 1)]];
  }

  if (specialFlags <= 11)
  {
    if (specialFlags != 10)
    {
      return [NSString stringWithFormat:@"UIEdgeInsets: %@", _stringFromEdgeInsets(self)];
    }

    goto LABEL_34;
  }

  if (specialFlags == 12)
  {
    return [NSString stringWithFormat:@"NSEdgeInsets: %@", _stringFromEdgeInsets(self)];
  }

  if (specialFlags != 13)
  {
    if (specialFlags != 14)
    {
      goto LABEL_31;
    }

    return [NSString stringWithFormat:@"NSDirectionalEdgeInsets: %@", _stringFromEdgeInsets(self)];
  }

LABEL_36:
  v7 = 0uLL;
  [(NSConcreteValue *)self getValue:&v7];
  return [NSString stringWithFormat:@"UIOffset: %@", [NSString stringWithFormat:@"{%.*g, %.*g}", 17, v7, 17, *(&v7 + 1)]];
}

- (void)getValue:(void *)value
{
  IndexedIvars = object_getIndexedIvars(self);
  v6 = *self->typeInfo;

  memmove(value, IndexedIvars, v6);
}

- (void)getValue:(void *)value size:(unint64_t)size
{
  if (*self->typeInfo != size)
  {
    v7 = [NSString stringWithFormat:@"Cannot get value with size %zu. The type encoded as %s is expected to be %zu bytes", size, [(NSConcreteValue *)self objCType], *self->typeInfo];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v7 userInfo:0]);
  }

  IndexedIvars = object_getIndexedIvars(self);

  memmove(value, IndexedIvars, size);
}

- (BOOL)_matchType:(const char *)type size:(unint64_t)size strict:(BOOL)strict
{
  typeInfo = self->typeInfo;
  result = *typeInfo == size && !strict;
  if (strict && *typeInfo == size)
  {
    return matchTypeEncoding(typeInfo[1], type, size);
  }

  return result;
}

- (BOOL)isEqualToValue:(id)value
{
  v13 = *MEMORY[0x1E69E9840];
  if (self == value)
  {
    return 1;
  }

  if (strcmp(*(self->typeInfo + 1), [value objCType]))
  {
    return 0;
  }

  v6 = *self->typeInfo;
  v7 = objc_opt_class();
  if (v7 == objc_opt_class() || (objc_opt_isKindOfClass() & 1) != 0)
  {
    IndexedIvars = object_getIndexedIvars(self);
    v9 = memcmp(IndexedIvars, [value _value], v6);
  }

  else
  {
    if (v6 < 0x401)
    {
      v10 = &v12;
    }

    else
    {
      v10 = malloc_type_malloc(v6, 0x100004077774924uLL);
    }

    [value getValue:v10];
    v11 = object_getIndexedIvars(self);
    v9 = memcmp(v11, v10, v6);
    if (v6 >= 0x401)
    {
      free(v10);
    }
  }

  return v9 == 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  if (NSShouldRetainWithZone(self, zone))
  {

    return self;
  }

  else
  {
    IndexedIvars = object_getIndexedIvars(self);
    v6 = *(self->typeInfo + 1);

    return _NSNewValue(IndexedIvars, v6, zone);
  }
}

- (void)encodeWithCoder:(id)coder
{
  v16 = *MEMORY[0x1E69E9840];
  if (!self->_specialFlags || ![coder allowsKeyedCoding])
  {
    v12.receiver = self;
    v12.super_class = NSConcreteValue;
    [(NSValue *)&v12 encodeWithCoder:coder];
    return;
  }

  [coder encodeInteger:self->_specialFlags forKey:@"NS.special"];
  specialFlags = self->_specialFlags;
  if (specialFlags > 10)
  {
    if ((specialFlags - 11) < 2)
    {
      v13 = 0u;
      v14 = 0u;
      [(NSConcreteValue *)self getValue:&v13];
      [coder encodeDouble:@"NS.edgeval.top" forKey:*&v13];
      [coder encodeDouble:@"NS.edgeval.left" forKey:*(&v13 + 1)];
      [coder encodeDouble:@"NS.edgeval.bottom" forKey:*&v14];
      v6 = *(&v14 + 1);
      v7 = @"NS.edgeval.right";
      goto LABEL_21;
    }

    if (specialFlags == 13)
    {
      v13 = 0uLL;
      [(NSConcreteValue *)self getValue:&v13];
      [coder encodeDouble:@"NS.offset.h" forKey:*&v13];
      v6 = *(&v13 + 1);
      v7 = @"NS.offset.v";
      goto LABEL_21;
    }

    if (specialFlags == 14)
    {
      v13 = 0u;
      v14 = 0u;
      [(NSConcreteValue *)self getValue:&v13];
      [coder encodeDouble:@"NS.dirEdgeVal.top" forKey:*&v13];
      [coder encodeDouble:@"NS.dirEdgeVal.leading" forKey:*(&v13 + 1)];
      [coder encodeDouble:@"NS.dirEdgeVal.bottom" forKey:*&v14];
      v6 = *(&v14 + 1);
      v7 = @"NS.dirEdgeVal.trailing";
      goto LABEL_21;
    }

LABEL_32:
    v11 = [NSString stringWithFormat:@"cannot encode special type '%ld'", self->_specialFlags];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v11 userInfo:0]);
  }

  if (specialFlags <= 2)
  {
    if (specialFlags == 1)
    {
      [(NSValue *)self pointValue];

      [coder encodePoint:@"NS.pointval" forKey:?];
    }

    else
    {
      if (specialFlags != 2)
      {
        goto LABEL_32;
      }

      [(NSValue *)self sizeValue];

      [coder encodeSize:@"NS.sizeval" forKey:?];
    }
  }

  else
  {
    switch(specialFlags)
    {
      case 3:
        [(NSValue *)self rectValue];

        [coder encodeRect:@"NS.rectval" forKey:?];
        break;
      case 4:
        rangeValue = [(NSValue *)self rangeValue];
        [coder encodeObject:+[NSNumber numberWithUnsignedInteger:](NSNumber forKey:{"numberWithUnsignedInteger:", v9), @"NS.rangeval.length"}];
        v10 = [NSNumber numberWithUnsignedInteger:rangeValue];

        [coder encodeObject:v10 forKey:@"NS.rangeval.location"];
        break;
      case 10:
        v14 = 0u;
        *v15 = 0u;
        v13 = 0u;
        [(NSConcreteValue *)self getValue:&v13];
        [coder encodeDouble:@"NS.atval.a" forKey:*&v13];
        [coder encodeDouble:@"NS.atval.b" forKey:*(&v13 + 1)];
        [coder encodeDouble:@"NS.atval.c" forKey:*&v14];
        [coder encodeDouble:@"NS.atval.d" forKey:*(&v14 + 1)];
        [coder encodeDouble:@"NS.atval.tx" forKey:v15[0]];
        v6 = v15[1];
        v7 = @"NS.atval.ty";
LABEL_21:
        [coder encodeDouble:v7 forKey:v6];
        return;
      default:
        goto LABEL_32;
    }
  }
}

@end