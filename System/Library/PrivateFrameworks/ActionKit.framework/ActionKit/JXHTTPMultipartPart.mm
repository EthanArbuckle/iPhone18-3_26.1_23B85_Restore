@interface JXHTTPMultipartPart
- (id)filePath;
- (int64_t)contentLength;
- (int64_t)dataLength;
- (unint64_t)loadMutableData:(id)data withDataInRange:(_NSRange)range;
@end

@implementation JXHTTPMultipartPart

- (unint64_t)loadMutableData:(id)data withDataInRange:(_NSRange)range
{
  v40 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  preData = [(JXHTTPMultipartPart *)self preData];
  v38[0] = preData;
  contentData = [(JXHTTPMultipartPart *)self contentData];
  v38[1] = contentData;
  postData = [(JXHTTPMultipartPart *)self postData];
  v38[2] = postData;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:3];

  obj = v8;
  v9 = [v8 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v31 = 0;
    v32 = *v35;
    while (1)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v35 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v34 + 1) + 8 * i);
        contentData2 = [(JXHTTPMultipartPart *)self contentData];
        if (v13 == contentData2)
        {
          contentLength = [(JXHTTPMultipartPart *)self contentLength];
        }

        else
        {
          contentLength = [v13 length];
        }

        v16 = contentLength;

        v41.location = v11;
        v41.length = v16;
        v17 = NSIntersectionRange(v41, range);
        if (v17.length)
        {
          v18 = v17.location - v11;
          preData2 = [(JXHTTPMultipartPart *)self preData];
          v20 = preData2;
          if (v13 == preData2)
          {

LABEL_19:
            v26 = [v13 subdataWithRange:{v18, v17.length}];
            if (!v26)
            {
              goto LABEL_21;
            }

LABEL_20:
            [dataCopy appendData:v26];
            v31 += [v26 length];

            goto LABEL_21;
          }

          postData2 = [(JXHTTPMultipartPart *)self postData];

          if (v13 == postData2)
          {
            goto LABEL_19;
          }

          contentData3 = [(JXHTTPMultipartPart *)self contentData];

          if (v13 != contentData3)
          {
            goto LABEL_21;
          }

          if (![(JXHTTPMultipartPart *)self multipartType])
          {
            goto LABEL_19;
          }

          if ([(JXHTTPMultipartPart *)self multipartType]== 1)
          {
            v23 = MEMORY[0x277CCA9F8];
            filePath = [(JXHTTPMultipartPart *)self filePath];
            v25 = [v23 fileHandleForReadingAtPath:filePath];

            if (!v25)
            {
              goto LABEL_25;
            }

            [v25 seekToFileOffset:v18];
            v26 = [v25 readDataOfLength:v17.length];
            [v25 closeFile];

            if (v26)
            {
              goto LABEL_20;
            }
          }
        }

LABEL_21:
        v11 += v16;
      }

      v10 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (!v10)
      {
        goto LABEL_25;
      }
    }
  }

  v31 = 0;
LABEL_25:

  v27 = *MEMORY[0x277D85DE8];
  return v31;
}

- (int64_t)contentLength
{
  if ([(JXHTTPMultipartPart *)self multipartType])
  {
    if ([(JXHTTPMultipartPart *)self multipartType]!= 1)
    {
      return 0;
    }

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    filePath = [(JXHTTPMultipartPart *)self filePath];
    v16 = 0;
    v5 = [defaultManager attributesOfItemAtPath:filePath error:&v16];
    v6 = v16;

    if (v6)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/JXHTTP/JXHTTP/JXHTTPMultipartBody.m"];
      lastPathComponent = [v7 lastPathComponent];
      localizedDescription = [v6 localizedDescription];
      NSLog(&cfstr_DError.isa, lastPathComponent, 78, localizedDescription);
    }

    v10 = [v5 objectForKey:*MEMORY[0x277CCA1C0]];
    v11 = v10;
    if (v10)
    {
      longLongValue = [v10 longLongValue];
    }

    else
    {
      longLongValue = 0;
    }

    return longLongValue;
  }

  else
  {
    contentData = [(JXHTTPMultipartPart *)self contentData];
    v14 = [contentData length];

    return v14;
  }
}

- (int64_t)dataLength
{
  preData = [(JXHTTPMultipartPart *)self preData];
  v4 = [preData length];

  v5 = [(JXHTTPMultipartPart *)self contentLength]+ v4;
  postData = [(JXHTTPMultipartPart *)self postData];
  v7 = [postData length];

  return v5 + v7;
}

- (id)filePath
{
  if ([(JXHTTPMultipartPart *)self multipartType]== 1)
  {
    v3 = objc_alloc(MEMORY[0x277CCACA8]);
    contentData = [(JXHTTPMultipartPart *)self contentData];
    v5 = [v3 initWithData:contentData encoding:4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end