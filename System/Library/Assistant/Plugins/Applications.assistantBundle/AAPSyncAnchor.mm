@interface AAPSyncAnchor
+ (BOOL)isValidStringRepresentation:(id)a3 withMainIndex:(unint64_t *)a4 subIndex:(unint64_t *)a5;
+ (id)anchorFromStringRepresentation:(id)a3;
+ (id)anchorFromStringRepresentation:(id)a3 error:(id *)a4;
- (AAPSyncAnchor)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)stringRepresentation;
- (id)_initWithMainIndex:(unint64_t)a3 subIndex:(unint64_t)a4;
- (id)anchorByIncrementingSubIndex;
- (id)primitiveAnchor;
- (int64_t)compare:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AAPSyncAnchor

- (id)_initWithMainIndex:(unint64_t)a3 subIndex:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = AAPSyncAnchor;
  result = [(AAPSyncAnchor *)&v7 init];
  if (result)
  {
    *(result + 1) = a3;
    *(result + 2) = a4;
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

+ (id)anchorFromStringRepresentation:(id)a3
{
  v5 = 0;
  v3 = [a1 anchorFromStringRepresentation:a3 error:&v5];
  if (v5)
  {
    +[NSException raise:format:](NSException, "raise:format:", NSParseErrorException, @"%@", [v5 localizedDescription]);
  }

  return v3;
}

+ (id)anchorFromStringRepresentation:(id)a3 error:(id *)a4
{
  v11 = 0;
  v12 = 0;
  if ([a1 isValidStringRepresentation:a3 withMainIndex:&v12 subIndex:&v11])
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
    if (a3 && a4)
    {
      v9 = [NSString stringWithFormat:@"cannot parse %@ from string representation: '%@'", a1, a3];
      v13 = NSLocalizedDescriptionKey;
      v14 = v9;
      v10 = [NSError errorWithDomain:@"AAPAppDomain" code:1 userInfo:[NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1]];
      result = 0;
      *a4 = v10;
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

- (int64_t)compare:(id)a3
{
  if (!a3)
  {
    return 1;
  }

  mainIndex = self->_mainIndex;
  v4 = *(a3 + 1);
  if (mainIndex < v4)
  {
    return -1;
  }

  if (mainIndex > v4)
  {
    return 1;
  }

  subIndex = self->_subIndex;
  v7 = *(a3 + 2);
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

+ (BOOL)isValidStringRepresentation:(id)a3 withMainIndex:(unint64_t *)a4 subIndex:(unint64_t *)a5
{
  if (!a3 || (v7 = [a3 componentsSeparatedByString:@"."], v8 = objc_msgSend(v7, "count"), v9 = +[NSCharacterSet decimalDigitCharacterSet](NSCharacterSet, "decimalDigitCharacterSet"), v8 > 2))
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
    v24 = a5;
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
          a5 = v24;
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
    if (a4)
    {
      v20 = [objc_msgSend(v7 objectAtIndex:{0), "integerValue"}];
      *a4 = v20 & ~(v20 >> 63);
    }

    if (a5)
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

      *a5 = v22;
    }

    LOBYTE(v10) = 1;
  }

  return v10;
}

- (AAPSyncAnchor)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = AAPSyncAnchor;
  v4 = [(AAPSyncAnchor *)&v7 init];
  if (v4)
  {
    v5 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"str"];
    if (![objc_opt_class() isValidStringRepresentation:v5 withMainIndex:&v4->_mainIndex subIndex:&v4->_subIndex] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && v4->_subIndex)
    {
      [NSException raise:NSParseErrorException format:@"cannot parse %@ from string representation: '%@'", objc_opt_class(), v5];
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = [(AAPSyncAnchor *)self stringRepresentation];

  [a3 encodeObject:v4 forKey:@"str"];
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [(AAPSyncAnchor *)self isEqualToAnchor:a3];
}

@end