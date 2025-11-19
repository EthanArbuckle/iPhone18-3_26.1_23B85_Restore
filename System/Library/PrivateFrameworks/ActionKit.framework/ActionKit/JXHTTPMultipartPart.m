@interface JXHTTPMultipartPart
- (id)filePath;
- (int64_t)contentLength;
- (int64_t)dataLength;
- (unint64_t)loadMutableData:(id)a3 withDataInRange:(_NSRange)a4;
@end

@implementation JXHTTPMultipartPart

- (unint64_t)loadMutableData:(id)a3 withDataInRange:(_NSRange)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v29 = a3;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v5 = [(JXHTTPMultipartPart *)self preData];
  v38[0] = v5;
  v6 = [(JXHTTPMultipartPart *)self contentData];
  v38[1] = v6;
  v7 = [(JXHTTPMultipartPart *)self postData];
  v38[2] = v7;
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
        v14 = [(JXHTTPMultipartPart *)self contentData];
        if (v13 == v14)
        {
          v15 = [(JXHTTPMultipartPart *)self contentLength];
        }

        else
        {
          v15 = [v13 length];
        }

        v16 = v15;

        v41.location = v11;
        v41.length = v16;
        v17 = NSIntersectionRange(v41, a4);
        if (v17.length)
        {
          v18 = v17.location - v11;
          v19 = [(JXHTTPMultipartPart *)self preData];
          v20 = v19;
          if (v13 == v19)
          {

LABEL_19:
            v26 = [v13 subdataWithRange:{v18, v17.length}];
            if (!v26)
            {
              goto LABEL_21;
            }

LABEL_20:
            [v29 appendData:v26];
            v31 += [v26 length];

            goto LABEL_21;
          }

          v21 = [(JXHTTPMultipartPart *)self postData];

          if (v13 == v21)
          {
            goto LABEL_19;
          }

          v22 = [(JXHTTPMultipartPart *)self contentData];

          if (v13 != v22)
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
            v24 = [(JXHTTPMultipartPart *)self filePath];
            v25 = [v23 fileHandleForReadingAtPath:v24];

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

    v3 = [MEMORY[0x277CCAA00] defaultManager];
    v4 = [(JXHTTPMultipartPart *)self filePath];
    v16 = 0;
    v5 = [v3 attributesOfItemAtPath:v4 error:&v16];
    v6 = v16;

    if (v6)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/JXHTTP/JXHTTP/JXHTTPMultipartBody.m"];
      v8 = [v7 lastPathComponent];
      v9 = [v6 localizedDescription];
      NSLog(&cfstr_DError.isa, v8, 78, v9);
    }

    v10 = [v5 objectForKey:*MEMORY[0x277CCA1C0]];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 longLongValue];
    }

    else
    {
      v12 = 0;
    }

    return v12;
  }

  else
  {
    v13 = [(JXHTTPMultipartPart *)self contentData];
    v14 = [v13 length];

    return v14;
  }
}

- (int64_t)dataLength
{
  v3 = [(JXHTTPMultipartPart *)self preData];
  v4 = [v3 length];

  v5 = [(JXHTTPMultipartPart *)self contentLength]+ v4;
  v6 = [(JXHTTPMultipartPart *)self postData];
  v7 = [v6 length];

  return v5 + v7;
}

- (id)filePath
{
  if ([(JXHTTPMultipartPart *)self multipartType]== 1)
  {
    v3 = objc_alloc(MEMORY[0x277CCACA8]);
    v4 = [(JXHTTPMultipartPart *)self contentData];
    v5 = [v3 initWithData:v4 encoding:4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end