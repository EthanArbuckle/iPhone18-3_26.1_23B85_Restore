@interface CRLNoCopyDictionary
- (CRLNoCopyDictionary)initWithCFDictionary:(__CFDictionary *)dictionary;
- (CRLNoCopyDictionary)initWithCapacity:(unint64_t)capacity;
- (id)allKeys;
- (id)allValues;
- (id)keyEnumerator;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)objectEnumerator;
- (id)objectForKey:(id)key;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)dealloc;
- (void)getObjects:(id *)objects andKeys:(id *)keys count:(unint64_t)count;
- (void)setObject:(id)object forUncopiedKey:(id)key;
@end

@implementation CRLNoCopyDictionary

- (CRLNoCopyDictionary)initWithCFDictionary:(__CFDictionary *)dictionary
{
  v6.receiver = self;
  v6.super_class = CRLNoCopyDictionary;
  v4 = [(CRLNoCopyDictionary *)&v6 init];
  if (v4)
  {
    v4->mDictionary = CFDictionaryCreateMutableCopy(0, 0, dictionary);
  }

  return v4;
}

- (CRLNoCopyDictionary)initWithCapacity:(unint64_t)capacity
{
  v6.receiver = self;
  v6.super_class = CRLNoCopyDictionary;
  v4 = [(CRLNoCopyDictionary *)&v6 init];
  if (v4)
  {
    v4->mDictionary = CFDictionaryCreateMutable(0, capacity, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
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

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  mDictionary = self->mDictionary;

  return [v4 initWithCFDictionary:mDictionary];
}

- (void)setObject:(id)object forUncopiedKey:(id)key
{
  if (object)
  {
    if (key)
    {
LABEL_3:
      mDictionary = self->mDictionary;

      CFDictionarySetValue(mDictionary, key, object);
      return;
    }
  }

  else
  {
    [NSException raise:NSInvalidArgumentException format:@"Attempt to insert nil value into %@", objc_opt_class()];
    if (key)
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
    selfCopy = self;
    v21 = 2112;
    objectCopy = object;
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

  [CRLAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[CRLNoCopyDictionary setObject:forUncopiedKey:]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLNoCopyDictionary.m"] lineNumber:72 isFatal:0 description:"Inserting a value into no-copy dictionary with a NULL key into %p! Object is %@", self, object];
}

- (void)getObjects:(id *)objects andKeys:(id *)keys count:(unint64_t)count
{
  Count = CFDictionaryGetCount(self->mDictionary);
  if (Count >= count)
  {
    countCopy = count;
  }

  else
  {
    countCopy = Count;
  }

  if (countCopy)
  {
    v11 = (objects | keys) == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    mDictionary = self->mDictionary;

    CFDictionaryGetKeysAndValues(mDictionary, keys, objects);
  }
}

- (id)objectForKey:(id)key
{
  if (key)
  {
    return CFDictionaryGetValue(self->mDictionary, key);
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
  allValues = [(CRLNoCopyDictionary *)self allValues];

  return [allValues objectEnumerator];
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
  allKeys = [(CRLNoCopyDictionary *)self allKeys];

  return [allKeys objectEnumerator];
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  Count = CFDictionaryGetCount(self->mDictionary);
  if (state->var0 >= Count)
  {
    return 0;
  }

  v10 = Count;
  v11 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
  CFDictionaryGetKeysAndValues(self->mDictionary, v11, 0);
  if (v10 - state->var0 < count)
  {
    count = v10 - state->var0;
  }

  memcpy(objects, &v11[state->var0], 8 * count);
  free(v11);
  state->var0 += count;
  state->var1 = objects;
  state->var2 = &state->var2;
  return count;
}

@end