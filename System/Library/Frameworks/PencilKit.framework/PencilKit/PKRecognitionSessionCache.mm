@interface PKRecognitionSessionCache
+ (id)_recognitionSessions;
+ (id)recognitionSessionForUUID:(uint64_t)d;
+ (void)addRecognitionSession:(void *)session forUUID:;
@end

@implementation PKRecognitionSessionCache

+ (id)recognitionSessionForUUID:(uint64_t)d
{
  v2 = a2;
  objc_opt_self();
  objc_opt_self();
  os_unfair_lock_lock(&_recognitionSessionsLock);
  v3 = +[PKRecognitionSessionCache _recognitionSessions];
  objectEnumerator = [v3 objectEnumerator];

  nextObject = [objectEnumerator nextObject];
  if (nextObject)
  {
    v6 = nextObject;
    do
    {
      [(PKRecognitionSessionManager *)v6 cleanupSessionIfNecessary];
      nextObject2 = [objectEnumerator nextObject];

      v6 = nextObject2;
    }

    while (nextObject2);
  }

  os_unfair_lock_unlock(&_recognitionSessionsLock);

  if (v2)
  {
    os_unfair_lock_lock(&_recognitionSessionsLock);
    v8 = +[PKRecognitionSessionCache _recognitionSessions];
    v9 = [v8 objectForKey:v2];

    os_unfair_lock_unlock(&_recognitionSessionsLock);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)_recognitionSessions
{
  objc_opt_self();
  if (qword_1ED6A5098 != -1)
  {
    dispatch_once(&qword_1ED6A5098, &__block_literal_global_30);
  }

  v0 = _MergedGlobals_132;

  return v0;
}

+ (void)addRecognitionSession:(void *)session forUUID:
{
  v6 = a2;
  sessionCopy = session;
  objc_opt_self();
  if (v6 && sessionCopy)
  {
    os_unfair_lock_lock(&_recognitionSessionsLock);
    v5 = +[PKRecognitionSessionCache _recognitionSessions];
    [v5 setObject:v6 forKey:sessionCopy];

    os_unfair_lock_unlock(&_recognitionSessionsLock);
  }
}

void __49__PKRecognitionSessionCache__recognitionSessions__block_invoke()
{
  v0 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
  v1 = _MergedGlobals_132;
  _MergedGlobals_132 = v0;
}

@end