@interface VCMediaControlInfoGenerator
- (VCMediaControlInfoGenerator)initWithType:(unsigned int)type version:(unsigned __int8)version;
- (int)deregisterCallbacksWithContext:(void *)context;
- (int)registerFillBlobCallback:(void *)callback processBlobCallback:(void *)blobCallback context:(void *)context;
- (unint64_t)feedbackSize;
- (void)dealloc;
@end

@implementation VCMediaControlInfoGenerator

- (VCMediaControlInfoGenerator)initWithType:(unsigned int)type version:(unsigned __int8)version
{
  v11 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = VCMediaControlInfoGenerator;
  v6 = [(VCMediaControlInfoGenerator *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_version = version;
    v6->_type = type;
    v9.equal = 0;
    *&v9.version = 0u;
    v9.copyDescription = 0;
    v9.release = freeValueCallback;
    pthread_rwlock_init(&v6->_callbackDictLock, 0);
    v7->_callbacksDict = CFDictionaryCreateMutable(0, 0, 0, &v9);
    pthread_mutex_init(&v7->_controlInfoPoolLock, 0);
    v7->_controlInfoPool = objc_opt_new();
  }

  return v7;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  pthread_mutex_destroy(&self->_controlInfoPoolLock);
  CFRelease(self->_callbacksDict);
  pthread_rwlock_destroy(&self->_callbackDictLock);
  v3.receiver = self;
  v3.super_class = VCMediaControlInfoGenerator;
  [(VCMediaControlInfoGenerator *)&v3 dealloc];
}

- (int)registerFillBlobCallback:(void *)callback processBlobCallback:(void *)blobCallback context:(void *)context
{
  v9 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v9 = callback;
  v9[1] = blobCallback;
  pthread_rwlock_wrlock(&self->_callbackDictLock);
  CFDictionarySetValue(self->_callbacksDict, context, v9);
  pthread_rwlock_unlock(&self->_callbackDictLock);
  return 0;
}

- (int)deregisterCallbacksWithContext:(void *)context
{
  pthread_rwlock_wrlock(&self->_callbackDictLock);
  CFDictionaryRemoveValue(self->_callbacksDict, context);
  pthread_rwlock_unlock(&self->_callbackDictLock);
  return 0;
}

- (unint64_t)feedbackSize
{
  if (self->_type)
  {
    return 0;
  }

  optionBitmap = self->_optionBitmap;
  v4 = 10;
  if ((optionBitmap & 1) == 0)
  {
    v4 = 6;
  }

  return v4 + ((2 * optionBitmap) & 4);
}

@end