@interface MFWebKitMainThread
+ (id)sharedInstance;
- (MFWebKitMainThread)init;
- (int)dictValueForMimeType:(id)a3;
- (void)_mainThreadPopulateDictForMimeType:(id)a3;
- (void)dealloc;
@end

@implementation MFWebKitMainThread

+ (id)sharedInstance
{
  v2 = sWKMTSharedInstance;
  if (!sWKMTSharedInstance)
  {
    v3 = objc_alloc_init(MFWebKitMainThread);
    v4 = sWKMTSharedInstance;
    sWKMTSharedInstance = v3;

    v2 = sWKMTSharedInstance;
  }

  return v2;
}

- (MFWebKitMainThread)init
{
  v6.receiver = self;
  v6.super_class = MFWebKitMainThread;
  v2 = [(MFWebKitMainThread *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E69AD6D8]) initWithName:@"MFWebKitMainThread_Lock" andDelegate:v2];
    visibleDictLock = v2->_visibleDictLock;
    v2->_visibleDictLock = v3;

    v2->_visibleDict = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], 0);
  }

  return v2;
}

- (void)dealloc
{
  visibleDict = self->_visibleDict;
  if (visibleDict)
  {
    CFRelease(visibleDict);
  }

  v4.receiver = self;
  v4.super_class = MFWebKitMainThread;
  [(MFWebKitMainThread *)&v4 dealloc];
}

- (void)_mainThreadPopulateDictForMimeType:(id)a3
{
  key = a3;
  WebThreadLock();
  v4 = [MEMORY[0x1E69E2FB8] canShowMIMEType:key];
  [(MFLock *)self->_visibleDictLock lock];
  CFDictionarySetValue(self->_visibleDict, key, v4);
  [(MFLock *)self->_visibleDictLock unlock];
}

- (int)dictValueForMimeType:(id)a3
{
  v4 = a3;
  value = 0;
  [(MFLock *)self->_visibleDictLock lock];
  visibleDict = self->_visibleDict;
  if (!visibleDict || !CFDictionaryGetValueIfPresent(visibleDict, v4, &value))
  {
    [(MFLock *)self->_visibleDictLock unlock];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __43__MFWebKitMainThread_dictValueForMimeType___block_invoke;
    v11[3] = &unk_1E806C520;
    v11[4] = self;
    v6 = v4;
    v12 = v6;
    v7 = [MEMORY[0x1E699B978] mainThreadScheduler];
    [v7 performSyncBlock:v11];

    [(MFLock *)self->_visibleDictLock lock];
    v8 = self->_visibleDict;
    if (v8)
    {
      value = CFDictionaryGetValue(v8, v6);
    }
  }

  [(MFLock *)self->_visibleDictLock unlock];
  v9 = value;

  return v9;
}

@end