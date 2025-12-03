@interface ABAssistantSyncInfoPersistence
+ (BOOL)saveFileForDictionary:(id)dictionary;
+ (id)filePath;
+ (id)infoDictionary;
+ (id)stringForKey:(id)key;
+ (id)valueForKey:(id)key;
+ (void)saveString:(id)string forKey:(id)key;
+ (void)saveValue:(id)value forKey:(id)key;
@end

@implementation ABAssistantSyncInfoPersistence

+ (id)filePath
{
  v2 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v5 = objc_msgSend_firstObject(v2, v3, v4);

  v7 = objc_msgSend_stringByAppendingPathComponent_(v5, v6, @"com.apple.assistant.Contacts");

  v10 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v8, v9);
  objc_msgSend_createDirectoryAtPath_withIntermediateDirectories_attributes_error_(v10, v11, v7, 1, 0, 0);
  v13 = objc_msgSend_stringByAppendingPathComponent_(v7, v12, @"CNAssistantSyncInfo.plist");

  return v13;
}

+ (id)infoDictionary
{
  v3 = objc_msgSend_filePath(self, a2, v2);
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

+ (BOOL)saveFileForDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v7 = objc_msgSend_filePath(self, v5, v6);
  v10 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v8, v9);
  if (objc_msgSend_fileExistsAtPath_(v10, v11, v7))
  {
    v14 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v12, v13);
    isWritableFileAtPath = objc_msgSend_isWritableFileAtPath_(v14, v15, v7);

    if (!isWritableFileAtPath)
    {
      if (os_log_type_enabled(*MEMORY[0x277CEF0D0], OS_LOG_TYPE_ERROR))
      {
        sub_2334C2D90();
      }

      v18 = 0;
      goto LABEL_11;
    }
  }

  else
  {
  }

  v19 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v17, v7);
  v23 = 0;
  v18 = objc_msgSend_writeToURL_error_(dictionaryCopy, v20, v19, &v23);
  v21 = v23;
  if (v21 && os_log_type_enabled(*MEMORY[0x277CEF0D0], OS_LOG_TYPE_ERROR))
  {
    sub_2334C2E10();
  }

LABEL_11:
  return v18;
}

+ (void)saveString:(id)string forKey:(id)key
{
  keyCopy = key;
  stringCopy = string;
  v12 = objc_msgSend_infoDictionary(self, v8, v9);
  objc_msgSend_setObject_forKeyedSubscript_(v12, v10, stringCopy, keyCopy);

  objc_msgSend_saveFileForDictionary_(self, v11, v12);
}

+ (id)stringForKey:(id)key
{
  keyCopy = key;
  v7 = objc_msgSend_infoDictionary(self, v5, v6);
  v9 = objc_msgSend_objectForKeyedSubscript_(v7, v8, keyCopy);

  return v9;
}

+ (void)saveValue:(id)value forKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  v12 = objc_msgSend_infoDictionary(self, v8, v9);
  objc_msgSend_setObject_forKeyedSubscript_(v12, v10, valueCopy, keyCopy);

  objc_msgSend_saveFileForDictionary_(self, v11, v12);
}

+ (id)valueForKey:(id)key
{
  keyCopy = key;
  v7 = objc_msgSend_infoDictionary(self, v5, v6);
  v9 = objc_msgSend_objectForKeyedSubscript_(v7, v8, keyCopy);

  return v9;
}

@end