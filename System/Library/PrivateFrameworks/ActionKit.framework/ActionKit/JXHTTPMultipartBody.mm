@interface JXHTTPMultipartBody
+ (id)withDictionary:(id)a3;
- (JXHTTPMultipartBody)init;
- (JXHTTPMultipartBody)initWithDictionary:(id)a3;
- (int64_t)httpContentLength;
- (unint64_t)loadMutableData:(id)a3 withDataInRange:(_NSRange)a4;
- (void)addFile:(id)a3 forKey:(id)a4 contentType:(id)a5 fileName:(id)a6;
- (void)addString:(id)a3 forKey:(id)a4;
- (void)dealloc;
- (void)httpOperationDidFail:(id)a3;
- (void)httpOperationDidFinishLoading:(id)a3;
- (void)recreateStreamsForOperation:(id)a3;
- (void)scheduleOutputStreamOnThread:(id)a3;
- (void)setFile:(id)a3 forKey:(id)a4 contentType:(id)a5 fileName:(id)a6;
- (void)setPartWithType:(int)a3 forKey:(id)a4 contentType:(id)a5 fileName:(id)a6 data:(id)a7;
- (void)setString:(id)a3 forKey:(id)a4;
- (void)stream:(id)a3 handleEvent:(unint64_t)a4;
@end

@implementation JXHTTPMultipartBody

- (void)setFile:(id)a3 forKey:(id)a4 contentType:(id)a5 fileName:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [a3 dataUsingEncoding:4];
  [(JXHTTPMultipartBody *)self setPartWithType:1 forKey:v12 contentType:v11 fileName:v10 data:v13];
}

- (void)addFile:(id)a3 forKey:(id)a4 contentType:(id)a5 fileName:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [a3 dataUsingEncoding:4];
  [(JXHTTPMultipartBody *)self addPartWithType:1 forKey:v12 contentType:v11 fileName:v10 data:v13];
}

- (void)setString:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = [a3 dataUsingEncoding:4];
  [(JXHTTPMultipartBody *)self setData:v7 forKey:v6 contentType:@"text/plain; charset=utf-8" fileName:0];
}

- (void)addString:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = [a3 dataUsingEncoding:4];
  [(JXHTTPMultipartBody *)self addData:v7 forKey:v6 contentType:@"text/plain; charset=utf-8" fileName:0];
}

- (unint64_t)loadMutableData:(id)a3 withDataInRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v32 = *MEMORY[0x277D85DE8];
  v26 = a3;
  [v26 setLength:0];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = self;
  v7 = [(JXHTTPMultipartBody *)self partsArray];
  v8 = [v7 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = 0;
    v12 = *v28;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v27 + 1) + 8 * i);
        v15 = [v14 dataLength];
        v33.location = v11;
        v33.length = v15;
        v35.location = location;
        v35.length = length;
        v16 = NSIntersectionRange(v33, v35);
        if (v16.length)
        {
          v10 += [v14 loadMutableData:v26 withDataInRange:{v16.location - v11, v16.length}];
        }

        v11 += v15;
      }

      v9 = [v7 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  v17 = [(JXHTTPMultipartBody *)v25 finalBoundaryData];
  v18 = [v17 length];

  v34.location = v11;
  v34.length = v18;
  v36.location = location;
  v36.length = length;
  v19 = NSIntersectionRange(v34, v36);
  if (v19.length)
  {
    v20 = v19.location - v11;
    v21 = [(JXHTTPMultipartBody *)v25 finalBoundaryData];
    v22 = [v21 subdataWithRange:{v20, v19.length}];

    if (v22)
    {
      [v26 appendData:v22];
      v10 += [v22 length];
    }
  }

  v23 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)stream:(id)a3 handleEvent:(unint64_t)a4
{
  v22 = a3;
  v6 = [(JXHTTPMultipartBody *)self httpOutputStream];

  v7 = v22;
  if (v6 == v22)
  {
    if (a4 == 4)
    {
      v13 = [(JXHTTPMultipartBody *)self bytesWritten];
      if (v13 != [(JXHTTPMultipartBody *)self httpContentLength])
      {
        v14 = [(JXHTTPMultipartBody *)self httpContentLength];
        v15 = v14 - [(JXHTTPMultipartBody *)self bytesWritten];
        if (v15 >= [(JXHTTPMultipartBody *)self streamBufferLength])
        {
          v15 = [(JXHTTPMultipartBody *)self streamBufferLength];
        }

        v16 = [(JXHTTPMultipartBody *)self bodyDataBuffer];
        v17 = [(JXHTTPMultipartBody *)self loadMutableData:v16 withDataInRange:[(JXHTTPMultipartBody *)self bytesWritten], v15];

        if (v17)
        {
          v18 = [(JXHTTPMultipartBody *)self httpOutputStream];
          v19 = [(JXHTTPMultipartBody *)self bodyDataBuffer];
          v20 = [v18 write:objc_msgSend(v19 maxLength:{"bytes"), v17}];

          if (v20 >= 1)
          {
            [(JXHTTPMultipartBody *)self setBytesWritten:[(JXHTTPMultipartBody *)self bytesWritten]+ v20];
LABEL_13:
            v7 = v22;
            goto LABEL_14;
          }
        }
      }
    }

    else
    {
      if (a4 != 8)
      {
        goto LABEL_14;
      }

      v8 = [v22 streamError];

      if (v8)
      {
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/JXHTTP/JXHTTP/JXHTTPMultipartBody.m"];
        v10 = [v9 lastPathComponent];
        v11 = [v22 streamError];
        v12 = [v11 localizedDescription];
        NSLog(&cfstr_DError.isa, v10, 305, v12);
      }
    }

    v21 = [(JXHTTPMultipartBody *)self httpOutputStream];
    [v21 close];

    goto LABEL_13;
  }

LABEL_14:
}

- (void)setPartWithType:(int)a3 forKey:(id)a4 contentType:(id)a5 fileName:(id)a6 data:(id)a7
{
  v34 = *MEMORY[0x277D85DE8];
  v11 = a4;
  v28 = a5;
  v26 = a6;
  v25 = a7;
  v12 = objc_alloc(MEMORY[0x277CBEB18]);
  v13 = [(JXHTTPMultipartBody *)self partsArray];
  v14 = [v12 initWithCapacity:{objc_msgSend(v13, "count")}];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v15 = [(JXHTTPMultipartBody *)self partsArray];
  v16 = [v15 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v30;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v30 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v29 + 1) + 8 * i);
        v21 = [v20 key];
        v22 = [v21 isEqualToString:v11];

        if (v22)
        {
          [v14 addObject:v20];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v17);
  }

  v23 = [(JXHTTPMultipartBody *)self partsArray];
  [v23 removeObjectsInArray:v14];

  [(JXHTTPMultipartBody *)self addPartWithType:a3 forKey:v11 contentType:v28 fileName:v26 data:v25];
  v24 = *MEMORY[0x277D85DE8];
}

- (void)scheduleOutputStreamOnThread:(id)a3
{
  v8 = a3;
  if (!v8 || ([MEMORY[0x277CCACC8] currentThread], v4 = objc_claimAutoreleasedReturnValue(), v4, v4 == v8))
  {
    v5 = [(JXHTTPMultipartBody *)self httpOutputStream];
    v6 = [MEMORY[0x277CBEB88] currentRunLoop];
    [v5 scheduleInRunLoop:v6 forMode:*MEMORY[0x277CBE738]];

    v7 = [(JXHTTPMultipartBody *)self httpOutputStream];
    [v7 open];
  }

  else
  {
    [(JXHTTPMultipartBody *)self performSelector:sel_scheduleOutputStreamOnThread_ onThread:v8 withObject:v8 waitUntilDone:1];
  }
}

- (void)recreateStreamsForOperation:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:{-[JXHTTPMultipartBody streamBufferLength](self, "streamBufferLength")}];
  [(JXHTTPMultipartBody *)self setBodyDataBuffer:v5];

  [(JXHTTPMultipartBody *)self setHttpContentLength:-1];
  [(JXHTTPMultipartBody *)self setBytesWritten:0];
  v6 = [(JXHTTPMultipartBody *)self httpOutputStream];
  [v6 setDelegate:0];

  v7 = [(JXHTTPMultipartBody *)self httpOutputStream];
  [v7 close];

  [(JXHTTPMultipartBody *)self setHttpInputStream:0];
  [(JXHTTPMultipartBody *)self setHttpOutputStream:0];
  cf = 0;
  readStream = 0;
  CFStreamCreateBoundPair(*MEMORY[0x277CBECE8], &readStream, &cf, [(JXHTTPMultipartBody *)self streamBufferLength]);
  v8 = cf;
  v9 = readStream;
  if (readStream && cf)
  {
    [(JXHTTPMultipartBody *)self setHttpInputStream:readStream];

    v10 = cf;
    [(JXHTTPMultipartBody *)self setHttpOutputStream:cf];

    v11 = [(JXHTTPMultipartBody *)self httpOutputStream];
    [v11 setDelegate:self];

    v12 = [objc_opt_class() networkThread];
    [(JXHTTPMultipartBody *)self scheduleOutputStreamOnThread:v12];
  }

  else
  {
    if (readStream)
    {
      CFRelease(readStream);
      v8 = cf;
    }

    if (v8)
    {
      CFRelease(v8);
    }
  }
}

- (void)httpOperationDidFail:(id)a3
{
  v3 = [(JXHTTPMultipartBody *)self httpOutputStream];
  [v3 close];
}

- (void)httpOperationDidFinishLoading:(id)a3
{
  v3 = [(JXHTTPMultipartBody *)self httpOutputStream];
  [v3 close];
}

- (int64_t)httpContentLength
{
  v16 = *MEMORY[0x277D85DE8];
  result = self->_httpContentLength;
  if (result == -1)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = [(JXHTTPMultipartBody *)self partsArray];
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v12;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v7 += [*(*(&v11 + 1) + 8 * i) dataLength];
        }

        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);

      if (v7 < 1)
      {
        goto LABEL_13;
      }

      v4 = [(JXHTTPMultipartBody *)self finalBoundaryData];
      v7 += [v4 length];
    }

    else
    {
      v7 = 0;
    }

LABEL_13:
    [(JXHTTPMultipartBody *)self setHttpContentLength:v7];
    result = self->_httpContentLength;
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (JXHTTPMultipartBody)initWithDictionary:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(JXHTTPMultipartBody *)self init];
  if (v5)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [v4 allKeys];
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          v12 = [v4 objectForKey:v11];
          [(JXHTTPMultipartBody *)v5 addString:v12 forKey:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v5;
}

- (JXHTTPMultipartBody)init
{
  v17.receiver = self;
  v17.super_class = JXHTTPMultipartBody;
  v2 = [(JXHTTPMultipartBody *)&v17 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CCACA8]);
    v4 = objc_alloc_init(MEMORY[0x277CBEAA8]);
    [v4 timeIntervalSince1970];
    v6 = [v3 initWithFormat:@"%.0f", v5];

    v7 = objc_alloc(MEMORY[0x277CCACA8]);
    v8 = [MEMORY[0x277CCAC38] processInfo];
    v9 = [v8 globallyUniqueString];
    v10 = [v7 initWithFormat:@"JXHTTP-%@-%@", v9, v6];

    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"--%@", v10];
    [(JXHTTPMultipartBody *)v2 setBoundaryString:v11];

    v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"--%@--\r\n", v10];
    v13 = [v12 dataUsingEncoding:4];
    [(JXHTTPMultipartBody *)v2 setFinalBoundaryData:v13];

    v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"multipart/form-data; charset=utf-8; boundary=%@", v10];
    [(JXHTTPMultipartBody *)v2 setHttpContentType:v14];

    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(JXHTTPMultipartBody *)v2 setPartsArray:v15];

    [(JXHTTPMultipartBody *)v2 setStreamBufferLength:0x10000];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [(JXHTTPMultipartBody *)self httpOutputStream];
  [v3 setDelegate:0];

  v4 = [(JXHTTPMultipartBody *)self httpOutputStream];
  [v4 close];

  v5.receiver = self;
  v5.super_class = JXHTTPMultipartBody;
  [(JXHTTPMultipartBody *)&v5 dealloc];
}

+ (id)withDictionary:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithDictionary:v4];

  return v5;
}

@end