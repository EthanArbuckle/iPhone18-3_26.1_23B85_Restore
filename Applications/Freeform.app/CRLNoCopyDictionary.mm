@interface CRLNoCopyDictionary
- (CRLNoCopyDictionary)initWithCFDictionary:(__CFDictionary *)a3;
- (CRLNoCopyDictionary)initWithCapacity:(unint64_t)a3;
- (id)allKeys;
- (id)allValues;
- (id)keyEnumerator;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)objectEnumerator;
- (id)objectForKey:(id)a3;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (void)dealloc;
- (void)getObjects:(id *)a3 andKeys:(id *)a4 count:(unint64_t)a5;
- (void)setObject:(id)a3 forUncopiedKey:(id)a4;
@end

@implementation CRLNoCopyDictionary

- (CRLNoCopyDictionary)initWithCFDictionary:(__CFDictionary *)a3
{
  v6.receiver = self;
  v6.super_class = CRLNoCopyDictionary;
  v4 = [(CRLNoCopyDictionary *)&v6 init];
  if (v4)
  {
    v4->mDictionary = CFDictionaryCreateMutableCopy(0, 0, a3);
  }

  return v4;
}

- (CRLNoCopyDictionary)initWithCapacity:(unint64_t)a3
{
  v6.receiver = self;
  v6.super_class = CRLNoCopyDictionary;
  v4 = [(CRLNoCopyDictionary *)&v6 init];
  if (v4)
  {
    v4->mDictionary = CFDictionaryCreateMutable(0, a3, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  return v4;
}

- (void)dealloc
{
  mDictionary = self->mDictionary;
  if (mDictionary)
  {
    CFRelease(mDictionary);
    self->mDictionary = 0;
  }

  v4.receiver = self;
  v4.super_class = CRLNoCopyDictionary;
  [(CRLNoCopyDictionary *)&v4 dealloc];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  mDictionary = self->mDictionary;

  return [v4 initWithCFDictionary:mDictionary];
}

- (void)setObject:(id)a3 forUncopiedKey:(id)a4
{
  if (a3)
  {
    if (a4)
    {
LABEL_3:
      mDictionary = self->mDictionary;

      CFDictionarySetValue(mDictionary, a4, a3);
      return;
    }
  }

  else
  {
    [NSException raise:NSInvalidArgumentException format:@"Attempt to insert nil value into %@", objc_opt_class()];
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v8 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_10130FA60();
  }

  v9 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    *buf = 67110402;
    v12 = v8;
    v13 = 2082;
    v14 = "[CRLNoCopyDictionary setObject:forUncopiedKey:]";
    v15 = 2082;
    v16 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLNoCopyDictionary.m";
    v17 = 1024;
    v18 = 72;
    v19 = 2048;
    v20 = self;
    v21 = 2112;
    v22 = a3;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Inserting a value into no-copy dictionary with a NULL key into %p! Object is %@", buf, 0x36u);
    if (qword_101AD5A10 != -1)
    {
      sub_10130FA74();
    }
  }

  v10 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130FA9C(v8, v10);
  }

  [CRLAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[CRLNoCopyDictionary setObject:forUncopiedKey:]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLNoCopyDictionary.m"] lineNumber:72 isFatal:0 description:"Inserting a value into no-copy dictionary with a NULL key into %p! Object is %@", self, a3];
}

- (void)getObjects:(id *)a3 andKeys:(id *)a4 count:(unint64_t)a5
{
  Count = CFDictionaryGetCount(self->mDictionary);
  if (Count >= a5)
  {
    v10 = a5;
  }

  else
  {
    v10 = Count;
  }

  if (v10)
  {
    v11 = (a3 | a4) == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    mDictionary = self->mDictionary;

    CFDictionaryGetKeysAndValues(mDictionary, a4, a3);
  }
}

- (id)objectForKey:(id)a3
{
  if (a3)
  {
    return CFDictionaryGetValue(self->mDictionary, a3);
  }

  else
  {
    return 0;
  }
}

- (id)allValues
{
  Count = CFDictionaryGetCount(self->mDictionary);
  v4 = Count;
  v5 = values;
  if (Count >= 0x10)
  {
    v5 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
  }

  CFDictionaryGetKeysAndValues(self->mDictionary, 0, v5);
  v6 = [NSArray arrayWithObjects:v5 count:v4];
  if (v5 != values)
  {
    free(v5);
  }

  return v6;
}

- (id)objectEnumerator
{
  v2 = [(CRLNoCopyDictionary *)self allValues];

  return [v2 objectEnumerator];
}

- (id)allKeys
{
  Count = CFDictionaryGetCount(self->mDictionary);
  v4 = Count;
  v5 = keys;
  if (Count >= 0x10)
  {
    v5 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
  }

  CFDictionaryGetKeysAndValues(self->mDictionary, v5, 0);
  v6 = [NSArray arrayWithObjects:v5 count:v4];
  if (v5 != keys)
  {
    free(v5);
  }

  return v6;
}

- (id)keyEnumerator
{
  v2 = [(CRLNoCopyDictionary *)self allKeys];

  return [v2 objectEnumerator];
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  Count = CFDictionaryGetCount(self->mDictionary);
  if (a3->var0 >= Count)
  {
    return 0;
  }

  v10 = Count;
  v11 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
  CFDictionaryGetKeysAndValues(self->mDictionary, v11, 0);
  if (v10 - a3->var0 < a5)
  {
    a5 = v10 - a3->var0;
  }

  memcpy(a4, &v11[a3->var0], 8 * a5);
  free(v11);
  a3->var0 += a5;
  a3->var1 = a4;
  a3->var2 = &a3->var2;
  return a5;
}

@end