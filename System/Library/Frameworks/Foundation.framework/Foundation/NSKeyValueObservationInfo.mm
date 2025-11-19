@interface NSKeyValueObservationInfo
- (BOOL)containsOnlyInternalObservationHelpers;
- (BOOL)isEqual:(id)a3;
- (id)_copyByAddingObservance:(id)a3;
- (id)_initWithObservances:(id *)a3 count:(unint64_t)a4 hashValue:(unint64_t)a5;
- (id)description;
- (void)dealloc;
@end

@implementation NSKeyValueObservationInfo

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSKeyValueObservationInfo;
  [(NSKeyValueObservationInfo *)&v3 dealloc];
}

- (id)_copyByAddingObservance:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(NSKeyValueObservationInfo);
  v6 = [(NSArray *)self->_observances count];
  v7 = v6;
  if (a3)
  {
    v8 = a3 + 41;
    v9 = 32;
    if (*(a3 + 41))
    {
      v9 = 8;
    }

    v10 = *(a3 + v9);
    v12 = *(a3 + 2);
    v11 = *(a3 + 3);
    if ((*(a3 + 41) & 1) == 0)
    {
      v13 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    v10 = 0;
    v13 = 0;
    v8 = 41;
    v12 = MEMORY[0x10];
    v11 = MEMORY[0x18];
    if ((MEMORY[0x29] & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v13 = *(a3 + 4);
LABEL_7:
  LODWORD(v14) = 0;
  cachedHash = self->_cachedHash;
  v32 = v10;
  v33 = v12;
  v16 = &v32 + 3;
  v17 = 36;
  v34 = v11;
  v35 = v13;
  do
  {
    v18 = *(v16 - 3) + 16 * v14;
    v19 = *(v16 - 2) + 16 * (v18 ^ (16 * (v18 >> 28)));
    v20 = *(v16 - 1) + 16 * (v19 ^ (16 * (v19 >> 28)));
    v21 = *v16;
    v16 += 4;
    v22 = v21 + 16 * (v20 ^ (16 * (v20 >> 28)));
    v14 = (v22 ^ ((v22 & 0xF0000000) >> 24)) & ~(v22 & 0xF0000000);
    v17 -= 4;
  }

  while (v17 > 7);
  v5->_cachedHash = ((v14 << (v6 & 0x3F)) | (v14 >> (v6 & 0x3F))) ^ cachedHash;
  v23 = v6 + 1;
  if ((v6 + 1) >> 60)
  {
    v30 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v6 + 1, v32, v33, v34, v35, v36);
    v31 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:v30 userInfo:0];
    CFRelease(v30);
    objc_exception_throw(v31);
  }

  v32 = 0;
  v24 = _CFCreateArrayStorage();
  [(NSArray *)self->_observances getObjects:v24 range:0, v7];
  *(v24 + 8 * v7) = a3;
  if (v7 != -1)
  {
    v25 = v24;
    v26 = v7 + 1;
    do
    {
      v27 = *v25++;
      --v26;
    }

    while (v26);
  }

  v5->_observances = [objc_alloc(MEMORY[0x1E695DEC8]) _initByAdoptingBuffer:v24 count:v23 size:v23];
  if (self->_cachedIsShareable)
  {
    v28 = (*v8 >> 1) & 1;
  }

  else
  {
    LOBYTE(v28) = 0;
  }

  v5->_cachedIsShareable = v28;
  return v5;
}

- (id)_initWithObservances:(id *)a3 count:(unint64_t)a4 hashValue:(unint64_t)a5
{
  v28[4] = *MEMORY[0x1E69E9840];
  v27.receiver = self;
  v27.super_class = NSKeyValueObservationInfo;
  v8 = [(NSKeyValueObservationInfo *)&v27 init];
  if (!v8)
  {
    return v8;
  }

  v8->_observances = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:a3 count:a4];
  v8->_cachedHash = a5;
  v8->_cachedIsShareable = 1;
  if (!a5)
  {
    if (!a4)
    {
      return v8;
    }

    v9 = 0;
    v10 = 0;
    while (1)
    {
      v11 = a3[v10];
      if (v11)
      {
        v12 = (v11 + 41);
        if (v11[41])
        {
          v13 = 8;
        }

        else
        {
          v13 = 32;
        }

        v14 = *&v11[v13];
        v15 = *(v11 + 2);
        v16 = *(v11 + 3);
        if (v11[41])
        {
LABEL_15:
          v17 = *(v11 + 4);
          goto LABEL_17;
        }

        v17 = 0;
      }

      else
      {
        v14 = 0;
        v17 = 0;
        v15 = MEMORY[0x10];
        v12 = 41;
        v16 = MEMORY[0x18];
        if (MEMORY[0x29])
        {
          goto LABEL_15;
        }
      }

LABEL_17:
      LODWORD(v18) = 0;
      v28[0] = v14;
      v28[1] = v15;
      v19 = v28 + 3;
      v20 = 36;
      v28[2] = v16;
      v28[3] = v17;
      do
      {
        v21 = *(v19 - 3) + 16 * v18;
        v22 = *(v19 - 2) + 16 * (v21 ^ (16 * (v21 >> 28)));
        v23 = *(v19 - 1) + 16 * (v22 ^ (16 * (v22 >> 28)));
        v24 = *v19;
        v19 += 4;
        v25 = v24 + 16 * (v23 ^ (16 * (v23 >> 28)));
        v18 = (v25 ^ ((v25 & 0xF0000000) >> 24)) & ~(v25 & 0xF0000000);
        v20 -= 4;
      }

      while (v20 > 7);
      v9 ^= (v18 << (v10 & 0x3F)) | (v18 >> (v10 & 0x3F));
      v8->_cachedHash = v9;
      if ((*v12 & 2) == 0)
      {
        v8->_cachedIsShareable = 0;
      }

      if (++v10 == a4)
      {
        return v8;
      }
    }
  }

  for (; a4; --a4)
  {
    if ((*(*a3 + 41) & 2) == 0)
    {
      v8->_cachedIsShareable = 0;
    }

    ++a3;
  }

  return v8;
}

- (BOOL)containsOnlyInternalObservationHelpers
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  observances = self->_observances;
  v3 = [(NSArray *)observances countByEnumeratingWithState:&v9 objects:v8 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(observances);
        }

        if ((*(*(*(&v9 + 1) + 8 * i) + 41) & 4) == 0)
        {
          return 0;
        }
      }

      v4 = [(NSArray *)observances countByEnumeratingWithState:&v9 objects:v8 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  return 1;
}

- (BOOL)isEqual:(id)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (a3 == self)
  {
    return 1;
  }

  v5 = [(NSArray *)self->_observances count];
  v6 = [*(a3 + 1) count];
  if (v6 != v5)
  {
    return 0;
  }

  v7 = 8 * v5;
  if (8 * v5 > 0x80)
  {
    v8 = malloc_type_malloc(8 * v5, 0x80040B8603338uLL);
    [(NSArray *)self->_observances getObjects:v8 range:0, v5];
    v9 = malloc_type_malloc(8 * v5, 0x80040B8603338uLL);
    [*(a3 + 1) getObjects:v9 range:{0, v5}];
    if (!v5)
    {
      v10 = 1;
LABEL_16:
      free(v8);
      free(v9);
      return v10;
    }

    goto LABEL_9;
  }

  if (!v5)
  {
    [(NSArray *)self->_observances getObjects:0 range:0, 0];
    [*(a3 + 1) getObjects:0 range:{0, 0}];
    return 1;
  }

  MEMORY[0x1EEE9AC00](v6);
  v8 = (v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  bzero(v8, 8 * v5);
  v11 = [(NSArray *)self->_observances getObjects:v8 range:0, v5];
  MEMORY[0x1EEE9AC00](v11);
  v9 = v8;
  bzero(v8, 8 * v5);
  [*(a3 + 1) getObjects:v8 range:{0, v5}];
LABEL_9:
  if (*v8 == *v9)
  {
    v12 = 1;
    do
    {
      v13 = v12;
      if (v5 == v12)
      {
        break;
      }

      v14 = v8[v12];
      v15 = v9[v12++];
    }

    while (v14 == v15);
    v10 = v13 >= v5;
  }

  else
  {
    v10 = 0;
  }

  if (v7 >= 0x81)
  {
    goto LABEL_16;
  }

  return v10;
}

- (id)description
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = +[NSString stringWithFormat:](NSMutableString, "stringWithFormat:", @"<%@ %p> (\n"), objc_opt_class(), self;
  v4 = [(NSArray *)self->_observances count];
  v5 = v4;
  v6 = 8 * v4;
  if (8 * v4 <= 0x80)
  {
    if (!v4)
    {
      _NSKeyValueObservationInfoGetObservances(self, 0, 0);
      [(NSMutableString *)v3 appendString:@""]);
      return v3;
    }

    MEMORY[0x1EEE9AC00](v4);
    v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v7, v6);
    _NSKeyValueObservationInfoGetObservances(self, v7, v5);
  }

  else
  {
    v7 = malloc_type_malloc(8 * v4, 0x80040B8603338uLL);
    _NSKeyValueObservationInfoGetObservances(self, v7, v5);
    if (!v5)
    {
      [(NSMutableString *)v3 appendString:@""]);
LABEL_9:
      free(v7);
      return v3;
    }
  }

  v8 = 0;
  do
  {
    -[NSMutableString appendString:](v3, "appendString:", [*&v7[8 * v8] description]);
    [(NSMutableString *)v3 appendString:@"\n"];
    ++v8;
  }

  while (v5 != v8);
  [(NSMutableString *)v3 appendString:@""]);
  if (v6 > 0x80)
  {
    goto LABEL_9;
  }

  return v3;
}

@end