@interface CNAssistantCache
+ (BOOL)addUpdate:(id)update forAssistantUrl:(id)url;
+ (BOOL)removeAllUpdates;
+ (BOOL)removeUpdatesForAssistantUrl:(id)url;
+ (BOOL)saveCache:(id)cache;
+ (id)cacheDictionary;
+ (id)cachePath;
+ (id)updatesForAssistantUrl:(id)url;
@end

@implementation CNAssistantCache

+ (BOOL)removeAllUpdates
{
  v3 = objc_msgSend_cachePath(self, a2, v2);
  v6 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v4, v5);
  v8 = v6;
  if (v3 && objc_msgSend_fileExistsAtPath_(v6, v7, v3))
  {
    v11 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v9, v10);
    v13 = objc_msgSend_removeItemAtPath_error_(v11, v12, v3, 0);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)cachePath
{
  v2 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v5 = objc_msgSend_firstObject(v2, v3, v4);

  v7 = objc_msgSend_stringByAppendingPathComponent_(v5, v6, @"com.apple.AssistantServices");

  v10 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v8, v9);
  objc_msgSend_createDirectoryAtPath_withIntermediateDirectories_attributes_error_(v10, v11, v7, 1, 0, 0);
  v13 = objc_msgSend_stringByAppendingPathComponent_(v7, v12, @"CNAssistantUpdatesCache.plist");

  return v13;
}

+ (id)cacheDictionary
{
  v3 = objc_msgSend_cachePath(self, a2, v2);
  v6 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v4, v5);
  if ((objc_msgSend_fileExistsAtPath_(v6, v7, v3) & 1) == 0)
  {

LABEL_6:
    v15 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v13, v14);
    goto LABEL_7;
  }

  v10 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v8, v9);
  isReadableFileAtPath = objc_msgSend_isReadableFileAtPath_(v10, v11, v3);

  if (!isReadableFileAtPath)
  {
    goto LABEL_6;
  }

  v15 = objc_msgSend_dictionaryWithContentsOfFile_(MEMORY[0x277CBEB38], v13, v3);
  if (!v15)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v15;
}

+ (BOOL)saveCache:(id)cache
{
  cacheCopy = cache;
  v7 = objc_msgSend_cachePath(self, v5, v6);
  v10 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v8, v9);
  if ((objc_msgSend_fileExistsAtPath_(v10, v11, v7) & 1) == 0)
  {

    goto LABEL_5;
  }

  v14 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v12, v13);
  isWritableFileAtPath = objc_msgSend_isWritableFileAtPath_(v14, v15, v7);

  if (isWritableFileAtPath)
  {
LABEL_5:
    v18 = objc_msgSend_writeToFile_atomically_(cacheCopy, v17, v7, 1);
    goto LABEL_6;
  }

  v18 = 0;
LABEL_6:

  return v18;
}

+ (BOOL)addUpdate:(id)update forAssistantUrl:(id)url
{
  updateCopy = update;
  urlCopy = url;
  v10 = objc_msgSend_cacheDictionary(self, v8, v9);
  v13 = objc_msgSend_absoluteString(urlCopy, v11, v12);
  v15 = v13;
  v16 = 0;
  if (v10 && v13)
  {
    v17 = objc_msgSend_objectForKeyedSubscript_(v10, v14, v13);
    v20 = objc_msgSend_mutableCopy(v17, v18, v19);

    if (!v20)
    {
      v22 = objc_alloc(MEMORY[0x277CBEB18]);
      v20 = objc_msgSend_initWithCapacity_(v22, v23, 1);
    }

    objc_msgSend_addObject_(v20, v21, updateCopy);
    v26 = objc_msgSend_absoluteString(urlCopy, v24, v25);
    objc_msgSend_setObject_forKeyedSubscript_(v10, v27, v20, v26);

    v16 = objc_msgSend_saveCache_(self, v28, v10);
  }

  return v16;
}

+ (BOOL)removeUpdatesForAssistantUrl:(id)url
{
  urlCopy = url;
  v7 = objc_msgSend_cacheDictionary(self, v5, v6);
  v10 = objc_msgSend_absoluteString(urlCopy, v8, v9);

  v12 = 0;
  if (v7 && v10)
  {
    objc_msgSend_removeObjectForKey_(v7, v11, v10);
    v12 = objc_msgSend_saveCache_(self, v13, v7);
  }

  return v12;
}

+ (id)updatesForAssistantUrl:(id)url
{
  urlCopy = url;
  v7 = objc_msgSend_cacheDictionary(self, v5, v6);
  v10 = objc_msgSend_absoluteString(urlCopy, v8, v9);

  v12 = 0;
  if (v7 && v10)
  {
    v12 = objc_msgSend_objectForKeyedSubscript_(v7, v11, v10);
  }

  return v12;
}

@end