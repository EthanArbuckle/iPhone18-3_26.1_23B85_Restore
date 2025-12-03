@interface AAPSyncAnchor
+ (BOOL)isValidStringRepresentation:(id)representation withMainIndex:(unint64_t *)index subIndex:(unint64_t *)subIndex;
+ (id)anchorFromStringRepresentation:(id)representation;
+ (id)anchorFromStringRepresentation:(id)representation error:(id *)error;
- (AAPSyncAnchor)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (NSString)stringRepresentation;
- (id)_initWithMainIndex:(unint64_t)index subIndex:(unint64_t)subIndex;
- (id)anchorByIncrementingSubIndex;
- (id)primitiveAnchor;
- (int64_t)compare:(id)compare;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AAPSyncAnchor

- (id)_initWithMainIndex:(unint64_t)index subIndex:(unint64_t)subIndex
{
  v7.receiver = self;
  v7.super_class = AAPSyncAnchor;
  result = [(AAPSyncAnchor *)&v7 init];
  if (result)
  {
    *(result + 1) = index;
    *(result + 2) = subIndex;
    *(result + 6) = 0;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AAPSyncAnchor;
  [(AAPSyncAnchor *)&v3 dealloc];
}

+ (id)anchorFromStringRepresentation:(id)representation
{
  v5 = 0;
  v3 = [self anchorFromStringRepresentation:representation error:&v5];
  if (v5)
  {
    +[NSException raise:format:](NSException, "raise:format:", NSParseErrorException, @"%@", [v5 localizedDescription]);
  }

  return v3;
}

+ (id)anchorFromStringRepresentation:(id)representation error:(id *)error
{
  v11 = 0;
  v12 = 0;
  if ([self isValidStringRepresentation:representation withMainIndex:&v12 subIndex:&v11])
  {
    if (v11)
    {
      v7 = [AAPSyncAnchor alloc];
      return [(AAPSyncAnchor *)v7 _initWithMainIndex:v12 subIndex:v11];
    }

    else
    {
      return [AAPSyncPrimitiveAnchor anchorFromIndex:v12];
    }
  }

  else
  {
    result = 0;
    if (representation && error)
    {
      representation = [NSString stringWithFormat:@"cannot parse %@ from string representation: '%@'", self, representation];
      v13 = NSLocalizedDescriptionKey;
      v14 = representation;
      v10 = [NSError errorWithDomain:@"AAPAppDomain" code:1 userInfo:[NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1]];
      result = 0;
      *error = v10;
    }
  }

  return result;
}

- (NSString)stringRepresentation
{
  os_unfair_lock_lock(&self->_stringRepresentationLock);
  lock_stringRepresentation = self->_lock_stringRepresentation;
  if (!lock_stringRepresentation)
  {
    subIndex = self->_subIndex;
    v5 = [NSString alloc];
    mainIndex = self->_mainIndex;
    if (subIndex)
    {
      lock_stringRepresentation = [v5 initWithFormat:@"%lu.%lu", self->_mainIndex, self->_subIndex];
    }

    else
    {
      lock_stringRepresentation = [v5 initWithFormat:@"%lu", self->_mainIndex, v9];
    }

    self->_lock_stringRepresentation = lock_stringRepresentation;
  }

  v7 = lock_stringRepresentation;
  os_unfair_lock_unlock(&self->_stringRepresentationLock);

  return v7;
}

- (int64_t)compare:(id)compare
{
  if (!compare)
  {
    return 1;
  }

  mainIndex = self->_mainIndex;
  v4 = *(compare + 1);
  if (mainIndex < v4)
  {
    return -1;
  }

  if (mainIndex > v4)
  {
    return 1;
  }

  subIndex = self->_subIndex;
  v7 = *(compare + 2);
  v8 = subIndex >= v7;
  v9 = subIndex > v7;
  if (v8)
  {
    return v9;
  }

  else
  {
    return -1;
  }
}

- (id)primitiveAnchor
{
  if ([(AAPSyncAnchor *)self isPrimitiveAnchor])
  {
    return self;
  }

  mainIndex = self->_mainIndex;

  return [AAPSyncPrimitiveAnchor anchorFromIndex:mainIndex];
}

- (id)anchorByIncrementingSubIndex
{
  v2 = [[AAPSyncAnchor alloc] _initWithMainIndex:self->_mainIndex subIndex:self->_subIndex + 1];

  return v2;
}

+ (BOOL)isValidStringRepresentation:(id)representation withMainIndex:(unint64_t *)index subIndex:(unint64_t *)subIndex
{
  if (!representation || (v7 = [representation componentsSeparatedByString:@"."], v8 = objc_msgSend(v7, "count"), v9 = +[NSCharacterSet decimalDigitCharacterSet](NSCharacterSet, "decimalDigitCharacterSet"), v8 > 2))
  {
LABEL_3:
    LOBYTE(v10) = 0;
    return v10;
  }

  v11 = v9;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    subIndexCopy = subIndex;
LABEL_7:
    v15 = 0;
LABEL_8:
    if (*v26 != v14)
    {
      objc_enumerationMutation(v7);
    }

    v16 = *(*(&v25 + 1) + 8 * v15);
    v10 = [v16 length];
    if (v10)
    {
      v17 = v10;
      v18 = v14;
      v19 = 0;
      while (-[NSCharacterSet characterIsMember:](v11, "characterIsMember:", [v16 characterAtIndex:v19]))
      {
        if (v17 == ++v19)
        {
          v15 = v15 + 1;
          v14 = v18;
          if (v15 != v13)
          {
            goto LABEL_8;
          }

          v13 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
          subIndex = subIndexCopy;
          if (v13)
          {
            goto LABEL_7;
          }

          goto LABEL_16;
        }
      }

      goto LABEL_3;
    }
  }

  else
  {
LABEL_16:
    if (index)
    {
      v20 = [objc_msgSend(v7 objectAtIndex:{0), "integerValue"}];
      *index = v20 & ~(v20 >> 63);
    }

    if (subIndex)
    {
      if (v8 == &dword_0 + 2)
      {
        v21 = [objc_msgSend(v7 objectAtIndex:{1), "integerValue"}];
        v22 = v21 & ~(v21 >> 63);
      }

      else
      {
        v22 = 0;
      }

      *subIndex = v22;
    }

    LOBYTE(v10) = 1;
  }

  return v10;
}

- (AAPSyncAnchor)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = AAPSyncAnchor;
  v4 = [(AAPSyncAnchor *)&v7 init];
  if (v4)
  {
    v5 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"str"];
    if (![objc_opt_class() isValidStringRepresentation:v5 withMainIndex:&v4->_mainIndex subIndex:&v4->_subIndex] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && v4->_subIndex)
    {
      [NSException raise:NSParseErrorException format:@"cannot parse %@ from string representation: '%@'", objc_opt_class(), v5];
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  stringRepresentation = [(AAPSyncAnchor *)self stringRepresentation];

  [coder encodeObject:stringRepresentation forKey:@"str"];
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [(AAPSyncAnchor *)self isEqualToAnchor:equal];
}

@end