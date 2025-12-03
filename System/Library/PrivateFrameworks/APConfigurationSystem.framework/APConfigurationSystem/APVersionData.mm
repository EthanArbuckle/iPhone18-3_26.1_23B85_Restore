@interface APVersionData
- (APVersionData)init;
- (id)subdirectoriesAtURL:(id)l;
@end

@implementation APVersionData

- (APVersionData)init
{
  v8.receiver = self;
  v8.super_class = APVersionData;
  v4 = [(APVersionData *)&v8 init];
  if (v4)
  {
    v5 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v2, v3);
    fileManager = v4->_fileManager;
    v4->_fileManager = v5;
  }

  return v4;
}

- (id)subdirectoriesAtURL:(id)l
{
  v19 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v7 = objc_msgSend_fileManager(self, v5, v6);
  v9 = objc_msgSend_enumeratorAtURL_includingPropertiesForKeys_options_errorHandler_(v7, v8, lCopy, 0, 1, 0);

  if (v9)
  {
    v12 = objc_msgSend_allObjects(v9, v10, v11);
  }

  else
  {
    v13 = APLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v17 = 138477827;
      v18 = objc_opt_class();
      v14 = v18;
      _os_log_impl(&dword_1CA1CE000, v13, OS_LOG_TYPE_ERROR, "[%{private}@] Error: Unable to create Enumerator from URL.", &v17, 0xCu);
    }

    v12 = MEMORY[0x1E695E0F0];
  }

  v15 = *MEMORY[0x1E69E9840];

  return v12;
}

@end