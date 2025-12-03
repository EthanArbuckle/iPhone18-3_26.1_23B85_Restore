@interface APVersionTestData
- (APVersionTestData)init;
- (id)subdirectoriesAtURL:(id)l;
@end

@implementation APVersionTestData

- (APVersionTestData)init
{
  v12.receiver = self;
  v12.super_class = APVersionTestData;
  v4 = [(APVersionTestData *)&v12 init];
  if (v4)
  {
    v5 = objc_msgSend_array(MEMORY[0x1E695DEC8], v2, v3);
    testURLS = v4->_testURLS;
    v4->_testURLS = v5;

    v9 = objc_msgSend_array(MEMORY[0x1E695DEC8], v7, v8);
    directoryURLs = v4->_directoryURLs;
    v4->_directoryURLs = v9;
  }

  return v4;
}

- (id)subdirectoriesAtURL:(id)l
{
  lCopy = l;
  v7 = objc_msgSend_directoryURLs(self, v5, v6);
  if (v7 && (v10 = v7, objc_msgSend_lastPathComponent(lCopy, v8, v9), v11 = objc_claimAutoreleasedReturnValue(), isEqualToString = objc_msgSend_isEqualToString_(v11, v12, @"APCS"), v11, v10, isEqualToString))
  {
    v14 = objc_msgSend_directoryURLs(self, v8, v9);
  }

  else
  {
    v14 = objc_msgSend_testURLS(self, v8, v9);
  }

  v15 = v14;

  return v15;
}

@end