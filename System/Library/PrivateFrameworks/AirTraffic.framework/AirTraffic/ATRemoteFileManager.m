@interface ATRemoteFileManager
- (ATRemoteFileManager)initWithMessageLink:(id)a3;
- (BOOL)copyItemAtPath:(id)a3 toPath:(id)a4 options:(id)a5 error:(id *)a6;
- (BOOL)createDirectoryAtPath:(id)a3 options:(id)a4 error:(id *)a5;
- (BOOL)downloadFileAtPath:(id)a3 toPath:(id)a4 options:(id)a5 error:(id *)a6;
- (BOOL)downloadFilesAtPaths:(id)a3 options:(id)a4 results:(id *)a5 error:(id *)a6;
- (BOOL)freeSpace:(unint64_t *)a3 error:(id *)a4;
- (BOOL)moveItemAtPath:(id)a3 toPath:(id)a4 options:(id)a5 error:(id *)a6;
- (BOOL)moveItemsAtPaths:(id)a3 options:(id)a4 results:(id *)a5 error:(id *)a6;
- (BOOL)removeItemAtPath:(id)a3 options:(id)a4 error:(id *)a5;
- (BOOL)removeItemsAtPaths:(id)a3 options:(id)a4 results:(id *)a5 error:(id *)a6;
- (BOOL)uploadData:(id)a3 toPath:(id)a4 options:(id)a5 error:(id *)a6;
- (BOOL)uploadFileAtPath:(id)a3 toPath:(id)a4 options:(id)a5 error:(id *)a6;
- (BOOL)uploadFilesAtPaths:(id)a3 options:(id)a4 results:(id *)a5 error:(id *)a6;
- (BOOL)usageOfDirectoryAtPath:(id)a3 count:(unint64_t *)a4 size:(unint64_t *)a5 options:(id)a6 error:(id *)a7;
- (id)_readStreamData:(id)a3 error:(id *)a4;
- (id)_sendRequest:(id)a3 error:(id *)a4;
- (id)contentsOfDirectoryAtPath:(id)a3 options:(id)a4 error:(id *)a5;
- (id)dataAtPath:(id)a3 options:(id)a4 error:(id *)a5;
- (void)progressUpdatedWithPercentage:(double)a3 size:(unint64_t)a4;
@end

@implementation ATRemoteFileManager

- (BOOL)freeSpace:(unint64_t *)a3 error:(id *)a4
{
  v7 = [[ATRequest alloc] initWithCommand:@"freeSpace" dataClass:@"Drive" parameters:0];
  v8 = [(ATRemoteFileManager *)self _sendRequest:v7 error:a4];
  v9 = [v8 parameters];
  v10 = v9;
  if (a3 && v9)
  {
    v11 = [v9 objectForKeyedSubscript:@"size"];
    *a3 = [v11 unsignedIntegerValue];
  }

  if (v8)
  {
    v12 = [v8 error];
    v13 = v12 == 0;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)copyItemAtPath:(id)a3 toPath:(id)a4 options:(id)a5 error:(id *)a6
{
  v23[1] = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a3;
  v11 = [ATRequest alloc];
  v21[1] = v9;
  v22 = @"paths";
  v21[0] = v10;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
  v23[0] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];

  v14 = [(ATRequest *)v11 initWithCommand:@"moveItem" dataClass:@"Drive" parameters:v13];
  v15 = [(ATRemoteFileManager *)self _sendRequest:v14 error:a6];
  v16 = v15;
  if (v15)
  {
    v17 = [v15 error];
    v18 = v17 == 0;
  }

  else
  {
    v18 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (BOOL)removeItemsAtPaths:(id)a3 options:(id)a4 results:(id *)a5 error:(id *)a6
{
  v37[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = [ATRequest alloc];
  v36 = @"paths";
  v37[0] = v9;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:&v36 count:1];
  v12 = [(ATRequest *)v10 initWithCommand:@"removeItem" dataClass:@"Drive" parameters:v11];

  v34 = 0;
  v13 = [(ATRemoteFileManager *)self _sendRequest:v12 error:&v34];
  v14 = v34;
  v15 = [MEMORY[0x277CBEB38] dictionary];
  v16 = [v13 parameters];
  v17 = v16;
  if (v16)
  {
    v28 = a6;
    v29 = v9;
    v18 = [v16 objectForKeyedSubscript:@"results"];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v19 = [v18 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v31;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v31 != v21)
          {
            objc_enumerationMutation(v18);
          }

          [v15 setObject:v14 forKeyedSubscript:*(*(&v30 + 1) + 8 * i)];
        }

        v20 = [v18 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v20);
    }

    a6 = v28;
    v9 = v29;
  }

  if (a5 && [v15 count])
  {
    v23 = v15;
    *a5 = v15;
  }

  if (a6 && [v15 count])
  {
    *a6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:22 userInfo:0];
  }

  if (v13)
  {
    v24 = [v13 error];
    v25 = v24 == 0;
  }

  else
  {
    v25 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v25;
}

- (BOOL)removeItemAtPath:(id)a3 options:(id)a4 error:(id *)a5
{
  v15[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v15[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v14 = 0;
  v9 = [(ATRemoteFileManager *)self removeItemsAtPaths:v8 options:0 results:&v14 error:a5];
  v10 = v14;

  if (a5 && !v9)
  {
    v11 = [v10 allValues];
    *a5 = [v11 lastObject];
  }

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)moveItemsAtPaths:(id)a3 options:(id)a4 results:(id *)a5 error:(id *)a6
{
  v35[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [ATRequest alloc];
  v34 = @"paths";
  v35[0] = v8;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
  v11 = [(ATRequest *)v9 initWithCommand:@"moveItem" dataClass:@"Drive" parameters:v10];

  v32 = 0;
  v12 = [(ATRemoteFileManager *)self _sendRequest:v11 error:&v32];
  v13 = v32;
  v14 = [MEMORY[0x277CBEB38] dictionary];
  v15 = [v12 parameters];
  v16 = v15;
  if (v15)
  {
    v27 = a5;
    v17 = [v15 objectForKeyedSubscript:@"results"];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v18 = [v17 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v29;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v29 != v20)
          {
            objc_enumerationMutation(v17);
          }

          [v14 setObject:v13 forKeyedSubscript:*(*(&v28 + 1) + 8 * i)];
        }

        v19 = [v17 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v19);
    }

    a5 = v27;
  }

  if (a5 && [v14 count])
  {
    v22 = v14;
    *a5 = v14;
  }

  if (v12)
  {
    v23 = [v12 error];
    v24 = v23 == 0;
  }

  else
  {
    v24 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

- (BOOL)moveItemAtPath:(id)a3 toPath:(id)a4 options:(id)a5 error:(id *)a6
{
  v10 = MEMORY[0x277CBEAC0];
  v11 = a5;
  v12 = [v10 dictionaryWithObject:a4 forKey:a3];
  v18 = 0;
  v13 = [(ATRemoteFileManager *)self moveItemsAtPaths:v12 options:v11 results:&v18 error:a6];

  v14 = v18;
  v15 = v14;
  if (a6 && !v13)
  {
    v16 = [v14 allValues];
    *a6 = [v16 lastObject];
  }

  return v13;
}

- (id)dataAtPath:(id)a3 options:(id)a4 error:(id *)a5
{
  v20[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [ATRequest alloc];
  v18 = v7;
  v19 = @"paths";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
  v20[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];

  v11 = [(ATRequest *)v8 initWithCommand:@"downloadFile" dataClass:@"Drive" parameters:v10];
  v12 = [(ATRemoteFileManager *)self _sendRequest:v11 error:a5];
  v13 = [v12 dataStream];

  if (v13)
  {
    v14 = [v12 dataStream];
    v15 = [(ATRemoteFileManager *)self _readStreamData:v14 error:a5];
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (BOOL)uploadData:(id)a3 toPath:(id)a4 options:(id)a5 error:(id *)a6
{
  v24[1] = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a3;
  v11 = [ATRequest alloc];
  v22 = v9;
  v23 = @"paths";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
  v24[0] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
  v14 = [(ATRequest *)v11 initWithCommand:@"uploadFile" dataClass:@"Drive" parameters:v13];

  v15 = [MEMORY[0x277CBEAE0] inputStreamWithData:v10];

  [(ATMessage *)v14 setDataStream:v15];
  v16 = [(ATRemoteFileManager *)self _sendRequest:v14 error:a6];
  v17 = v16;
  if (v16)
  {
    v18 = [v16 error];
    v19 = v18 == 0;
  }

  else
  {
    v19 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

- (BOOL)downloadFilesAtPaths:(id)a3 options:(id)a4 results:(id *)a5 error:(id *)a6
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v27 = a4;
  v9 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:0];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v24 = a6;
    v13 = 0;
    v14 = *v30;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v30 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v29 + 1) + 8 * i);
        v17 = [v10 objectForKey:v16];
        v28 = v13;
        v18 = [(ATRemoteFileManager *)self downloadFileAtPath:v16 toPath:v17 options:v27 error:&v28];
        v19 = v28;

        if (v18)
        {
          v13 = v19;
        }

        else
        {
          [v9 setObject:v19 forKeyedSubscript:v16];

          if (a5)
          {
            v20 = v9;
            *a5 = v9;
          }

          if (v24)
          {
            [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:22 userInfo:0];
            *v24 = v13 = 0;
          }

          else
          {
            v13 = 0;
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v12);
  }

  else
  {
    v13 = 0;
  }

  v21 = [v9 count] == 0;
  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

- (BOOL)downloadFileAtPath:(id)a3 toPath:(id)a4 options:(id)a5 error:(id *)a6
{
  v25[1] = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a3;
  v11 = [ATRequest alloc];
  v23 = v10;
  v24 = @"paths";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
  v25[0] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];

  v14 = [(ATRequest *)v11 initWithCommand:@"downloadFile" dataClass:@"Drive" parameters:v13];
  v15 = [(ATRemoteFileManager *)self _sendRequest:v14 error:a6];
  v16 = [v15 dataStream];

  if (v16)
  {
    v17 = [v15 dataStream];
    v18 = [(ATRemoteFileManager *)self _readStreamData:v17 error:a6];

    [v18 writeToFile:v9 atomically:1];
  }

  if (v15)
  {
    v19 = [v15 error];
    v20 = v19 == 0;
  }

  else
  {
    v20 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

- (BOOL)uploadFilesAtPaths:(id)a3 options:(id)a4 results:(id *)a5 error:(id *)a6
{
  v32 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v25 = a4;
  v10 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:0];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v28;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v27 + 1) + 8 * i);
        v17 = [v11 objectForKey:v16];
        v26 = 0;
        [(ATRemoteFileManager *)self uploadFileAtPath:v16 toPath:v17 options:v25 error:&v26];
        v18 = v26;
        if (v18)
        {
          v19 = v18;
          [v10 setObject:v18 forKey:v16];
          if (a5)
          {
            v20 = v10;
            *a5 = v10;
          }

          if (a6)
          {
            *a6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:22 userInfo:0];
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v13);
  }

  v21 = [v10 count] == 0;
  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

- (BOOL)uploadFileAtPath:(id)a3 toPath:(id)a4 options:(id)a5 error:(id *)a6
{
  v50[1] = *MEMORY[0x277D85DE8];
  v29 = a3;
  v10 = a4;
  v28 = a5;
  v11 = NSPageSize();
  v12 = [ATRequest alloc];
  v48 = v10;
  v49 = @"paths";
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v48 count:1];
  v50[0] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:&v49 count:1];
  v15 = [(ATRequest *)v12 initWithCommand:@"uploadFile" dataClass:@"Drive" parameters:v14];

  v46 = 0;
  v47 = 0;
  [MEMORY[0x277CBEBA0] getBoundStreamsWithBufferSize:v11 inputStream:&v47 outputStream:&v46];
  v16 = v47;
  v17 = v46;
  v18 = [MEMORY[0x277CBEAE0] inputStreamWithFileAtPath:v29];
  [(ATMessage *)v15 setDataStream:v18];

  v19 = dispatch_semaphore_create(0);
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__1186;
  v44 = __Block_byref_object_dispose__1187;
  v45 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__1186;
  v38 = __Block_byref_object_dispose__1187;
  v39 = 0;
  v20 = [(ATRemoteFileManager *)self messageLink];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __61__ATRemoteFileManager_uploadFileAtPath_toPath_options_error___block_invoke;
  v30[3] = &unk_278C6D998;
  v32 = &v40;
  v33 = &v34;
  v21 = v19;
  v31 = v21;
  [v20 sendRequest:v15 withCompletion:v30];

  dispatch_semaphore_wait(v21, 0xFFFFFFFFFFFFFFFFLL);
  if (a6)
  {
    v22 = v35[5];
    if (v22)
    {
      *a6 = v22;
    }
  }

  v23 = v41[5];
  if (v23)
  {
    v24 = [v23 error];
    v25 = v24 == 0;
  }

  else
  {
    v25 = 0;
  }

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v40, 8);

  v26 = *MEMORY[0x277D85DE8];
  return v25;
}

void __61__ATRemoteFileManager_uploadFileAtPath_toPath_options_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)usageOfDirectoryAtPath:(id)a3 count:(unint64_t *)a4 size:(unint64_t *)a5 options:(id)a6 error:(id *)a7
{
  v27[1] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = [ATRequest alloc];
  v25 = v11;
  v26 = @"paths";
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
  v27[0] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];

  v15 = [(ATRequest *)v12 initWithCommand:@"usage" dataClass:@"Drive" parameters:v14];
  v16 = [(ATRemoteFileManager *)self _sendRequest:v15 error:a7];
  v17 = [v16 parameters];
  v18 = v17;
  if (v17)
  {
    if (a4)
    {
      v19 = [v17 objectForKeyedSubscript:@"count"];
      *a4 = [v19 unsignedIntegerValue];
    }

    if (a5)
    {
      v20 = [v18 objectForKeyedSubscript:@"size"];
      *a5 = [v20 unsignedIntegerValue];
    }
  }

  if (v16)
  {
    v21 = [v16 error];
    v22 = v21 == 0;
  }

  else
  {
    v22 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

- (id)contentsOfDirectoryAtPath:(id)a3 options:(id)a4 error:(id *)a5
{
  v19[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [ATRequest alloc];
  v17 = v7;
  v18 = @"paths";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
  v19[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];

  v11 = [(ATRequest *)v8 initWithCommand:@"directoryContents" dataClass:@"Drive" parameters:v10];
  v12 = [(ATRemoteFileManager *)self _sendRequest:v11 error:a5];
  v13 = [v12 parameters];
  v14 = [v13 objectForKeyedSubscript:@"results"];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (BOOL)createDirectoryAtPath:(id)a3 options:(id)a4 error:(id *)a5
{
  v20[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [ATRequest alloc];
  v18 = v7;
  v19 = @"paths";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
  v20[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];

  v11 = [(ATRequest *)v8 initWithCommand:@"createDirectory" dataClass:@"Drive" parameters:v10];
  v12 = [(ATRemoteFileManager *)self _sendRequest:v11 error:a5];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 error];
    v15 = v14 == 0;
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)progressUpdatedWithPercentage:(double)a3 size:(unint64_t)a4
{
  v15[2] = *MEMORY[0x277D85DE8];
  v7 = [ATRequest alloc];
  v14[0] = @"percentage";
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  v14[1] = @"size";
  v15[0] = v8;
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a4];
  v15[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v11 = [(ATRequest *)v7 initWithCommand:@"progress" dataClass:@"Drive" parameters:v10];

  v12 = [(ATRemoteFileManager *)self _sendRequest:v11 error:0];
  v13 = *MEMORY[0x277D85DE8];
}

- (id)_readStreamData:(id)a3 error:(id *)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [v4 open];
  v5 = objc_alloc_init(MEMORY[0x277CBEB28]);
  v6 = [v4 read:v10 maxLength:1024];
  if (v6 >= 1)
  {
    for (i = v6; i > 0; i = [v4 read:v10 maxLength:1024])
    {
      [v5 appendBytes:v10 length:i];
    }
  }

  v8 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_sendRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__1186;
  v30 = __Block_byref_object_dispose__1187;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__1186;
  v24 = __Block_byref_object_dispose__1187;
  v25 = 0;
  v7 = dispatch_semaphore_create(0);
  v8 = [(ATRemoteFileManager *)self messageLink];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __42__ATRemoteFileManager__sendRequest_error___block_invoke;
  v16[3] = &unk_278C6D998;
  v18 = &v20;
  v19 = &v26;
  v9 = v7;
  v17 = v9;
  [v8 sendRequest:v6 withCompletion:v16];

  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  v10 = [v21[5] error];

  if (v10)
  {
    v11 = [v21[5] error];
    v12 = v27[5];
    v27[5] = v11;
  }

  if (a4)
  {
    v13 = v27[5];
    if (v13)
    {
      *a4 = v13;
    }
  }

  v14 = v21[5];

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v14;
}

void __42__ATRemoteFileManager__sendRequest_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (ATRemoteFileManager)initWithMessageLink:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATRemoteFileManager;
  v6 = [(ATRemoteFileManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_messageLink, a3);
  }

  return v7;
}

@end