@interface AMSMockURLResponse
+ (AMSMockURLResponse)responseWithError:(id)a3;
+ (AMSMockURLResponse)responseWithHARFile:(id)a3;
+ (AMSMockURLResponse)responseWithStatus:(unint64_t)a3 headers:(id)a4 body:(id)a5;
+ (id)responseFromActualResponse;
- ($E6850AB11FD6883D5322B0A2111D5812)handleReceivedRequest:(SEL)a3;
- (AMSMockURLResponse)init;
- (void)addResponseHandler:(id)a3;
- (void)stopRunningTasks;
@end

@implementation AMSMockURLResponse

- (AMSMockURLResponse)init
{
  v6.receiver = self;
  v6.super_class = AMSMockURLResponse;
  v2 = [(AMSMockURLResponse *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    responseHandlerBlocks = v2->_responseHandlerBlocks;
    v2->_responseHandlerBlocks = v3;
  }

  return v2;
}

+ (id)responseFromActualResponse
{
  v2 = objc_alloc_init(AMSMockURLResponse);
  [(AMSMockURLResponse *)v2 setPerformActualRequest:1];

  return v2;
}

+ (AMSMockURLResponse)responseWithError:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(AMSMockURLResponse);
  [(AMSMockURLResponse *)v4 setError:v3];

  return v4;
}

+ (AMSMockURLResponse)responseWithStatus:(unint64_t)a3 headers:(id)a4 body:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = objc_alloc_init(AMSMockURLResponse);
  [(AMSMockURLResponse *)v9 setStatusCode:a3];
  [(AMSMockURLResponse *)v9 setHeaders:v8];

  [(AMSMockURLResponse *)v9 setBody:v7];

  return v9;
}

+ (AMSMockURLResponse)responseWithHARFile:(id)a3
{
  v84 = *MEMORY[0x1E69E9840];
  v3 = [a3 objectForKeyedSubscript:@"log"];
  v4 = [v3 objectForKeyedSubscript:@"entries"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 firstObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = [v7 objectForKeyedSubscript:@"request"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = [v7 objectForKeyedSubscript:@"response"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_18;
  }

  v11 = v10;

  if (!v11)
  {
LABEL_18:
    v18 = 0;
    v19 = 0;
    goto LABEL_78;
  }

  v12 = objc_alloc_init(AMSMockURLResponse);
  v67 = v9;
  v68 = v7;
  v69 = v5;
  v70 = v11;
  v71 = v12;
  if (v9)
  {
    v13 = [v9 objectForKeyedSubscript:@"url"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;

      if (v14)
      {
        obj = v14;
        v65 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v14];
        v15 = [objc_alloc(MEMORY[0x1E695AC18]) initWithURL:v65];
        v16 = [v9 objectForKeyedSubscript:@"method"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = v16;
        }

        else
        {
          v17 = 0;
        }

        [v15 setHTTPMethod:v17];
        v21 = [v9 objectForKeyedSubscript:@"headers"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v22 = v21;
        }

        else
        {
          v22 = 0;
        }

        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v23 = v22;
        v24 = [v23 countByEnumeratingWithState:&v78 objects:v83 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v79;
          do
          {
            for (i = 0; i != v25; ++i)
            {
              if (*v79 != v26)
              {
                objc_enumerationMutation(v23);
              }

              v28 = *(*(&v78 + 1) + 8 * i);
              v29 = [v28 objectForKeyedSubscript:@"name"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v30 = v29;
              }

              else
              {
                v30 = 0;
              }

              v31 = [v28 objectForKeyedSubscript:@"value"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v32 = v31;

                if (v30 && v32)
                {
                  [v15 setValue:v32 forHTTPHeaderField:v30];
                }
              }

              else
              {

                v32 = 0;
              }
            }

            v25 = [v23 countByEnumeratingWithState:&v78 objects:v83 count:16];
          }

          while (v25);
        }

        v33 = [v15 copy];
        v12 = v71;
        [(AMSMockURLResponse *)v71 setOriginalRequest:v33];

        v11 = v70;
        v20 = obj;
        goto LABEL_41;
      }
    }

    else
    {
    }

    v20 = 0;
LABEL_41:
  }

  [(AMSMockURLResponse *)v12 setStatusCode:500];
  v34 = [v11 objectForKeyedSubscript:@"status"];
  if (objc_opt_respondsToSelector())
  {
    -[AMSMockURLResponse setStatusCode:](v12, "setStatusCode:", [v34 integerValue]);
  }

  v35 = [v11 objectForKeyedSubscript:@"headers"];
  objc_opt_class();
  v66 = v34;
  if (objc_opt_isKindOfClass())
  {
    v36 = v35;
  }

  else
  {
    v36 = 0;
  }

  v37 = objc_opt_new();
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  obja = v36;
  v38 = [obja countByEnumeratingWithState:&v74 objects:v82 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v75;
    do
    {
      for (j = 0; j != v39; ++j)
      {
        if (*v75 != v40)
        {
          objc_enumerationMutation(obja);
        }

        v42 = *(*(&v74 + 1) + 8 * j);
        v43 = [v42 objectForKeyedSubscript:@"name"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v44 = v43;
        }

        else
        {
          v44 = 0;
        }

        v45 = [v44 lowercaseString];

        v46 = [v42 objectForKeyedSubscript:@"value"];
        v47 = v46;
        if (v45 && v46)
        {
          v48 = [v37 objectForKeyedSubscript:v45];

          if (v48)
          {
            v49 = [v37 objectForKeyedSubscript:v45];
            v50 = [v49 stringByAppendingFormat:@", %@", v47, v66];
            [v37 setObject:v50 forKeyedSubscript:v45];
          }

          else
          {
            [v37 setObject:v47 forKeyedSubscript:v45];
          }
        }
      }

      v39 = [obja countByEnumeratingWithState:&v74 objects:v82 count:16];
    }

    while (v39);
  }

  v19 = v71;
  if (v37)
  {
    [(AMSMockURLResponse *)v71 setHeaders:v37];
  }

  v18 = v70;
  v51 = [v70 objectForKeyedSubscript:@"content"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v52 = v51;
  }

  else
  {
    v52 = 0;
  }

  v9 = v67;

  v53 = [v52 objectForKeyedSubscript:@"text"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v54 = v53;

    if (v54 && ((v55 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v54 options:0]) == 0 || (v56 = v55, v57 = objc_msgSend(objc_alloc(MEMORY[0x1E696AEC0]), "initWithData:encoding:", v55, 4), v54, v56, (v54 = v57) != 0)))
    {
      v58 = [v54 dataUsingEncoding:4];
    }

    else
    {
      v58 = 0;
    }
  }

  else
  {

    v58 = 0;
    v54 = 0;
  }

  [(AMSMockURLResponse *)v71 setBody:v58];
  v59 = [v37 ams_objectForCaseInsensitiveKey:@"content-encoding"];
  v60 = [(AMSMockURLResponse *)v71 body];
  if (v60)
  {
    v61 = v60;
    v62 = [v59 containsString:@"gzip"];

    if (v62)
    {
      v63 = [AMSData compressedGzippedDataWithData:v58];
      [(AMSMockURLResponse *)v71 setBody:v63];
    }
  }

  v7 = v68;
  v5 = v69;
LABEL_78:

  return v19;
}

- ($E6850AB11FD6883D5322B0A2111D5812)handleReceivedRequest:(SEL)a3
{
  v68 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(AMSMockURLResponse *)self error];

  if (v7)
  {
    retstr->var0 = 0;
    retstr->var1 = 0;
    retstr->var2 = [(AMSMockURLResponse *)self error];
  }

  else
  {
    v61 = 0;
    v62 = &v61;
    v63 = 0x3032000000;
    v64 = __Block_byref_object_copy__48;
    v65 = __Block_byref_object_dispose__48;
    v66 = 0;
    v55 = 0;
    v56 = &v55;
    v57 = 0x3032000000;
    v58 = __Block_byref_object_copy__48;
    v59 = __Block_byref_object_dispose__48;
    v60 = 0;
    v49 = 0;
    v50 = &v49;
    v51 = 0x3032000000;
    v52 = __Block_byref_object_copy__48;
    v53 = __Block_byref_object_dispose__48;
    v54 = 0;
    if ([(AMSMockURLResponse *)self performActualRequest])
    {
      v8 = [MEMORY[0x1E695AC80] defaultSessionConfiguration];
      v9 = [MEMORY[0x1E695AC78] sessionWithConfiguration:v8];
      v10 = dispatch_semaphore_create(0);
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = __44__AMSMockURLResponse_handleReceivedRequest___block_invoke;
      v44[3] = &unk_1E73BA2F8;
      v46 = &v61;
      v47 = &v55;
      v48 = &v49;
      v11 = v10;
      v45 = v11;
      v12 = [v9 dataTaskWithRequest:v6 completionHandler:v44];
      [(AMSMockURLResponse *)self setRunningTask:v12];

      v13 = [(AMSMockURLResponse *)self runningTask];
      [v13 resume];

      dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
      [v9 finishTasksAndInvalidate];
      v14 = [(AMSMockURLResponse *)self statusCode];
      v15 = self;
      if (!v14)
      {
        v15 = v62[5];
      }

      v16 = [(AMSMockURLResponse *)v15 statusCode];
      v17 = [(AMSMockURLResponse *)self headers];
      v18 = v17;
      if (v17)
      {
        v19 = v17;
      }

      else
      {
        v19 = [v62[5] allHeaderFields];
      }

      v27 = v19;

      v28 = [(AMSMockURLResponse *)self body];
      v29 = v28;
      if (!v28)
      {
        v29 = v56[5];
      }

      objc_storeStrong(v56 + 5, v29);

      v30 = objc_alloc(MEMORY[0x1E695AC08]);
      v31 = [v62[5] URL];
      v32 = [v30 initWithURL:v31 statusCode:v16 HTTPVersion:@"1.1" headerFields:v27];
      v33 = v62[5];
      v62[5] = v32;
    }

    else
    {
      v20 = objc_alloc(MEMORY[0x1E695AC08]);
      v21 = [v6 URL];
      v22 = [(AMSMockURLResponse *)self statusCode];
      v23 = [(AMSMockURLResponse *)self headers];
      v24 = [v20 initWithURL:v21 statusCode:v22 HTTPVersion:@"1.1" headerFields:v23];
      v25 = v62[5];
      v62[5] = v24;

      v26 = [(AMSMockURLResponse *)self body];
      v8 = v56[5];
      v56[5] = v26;
    }

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v34 = [(AMSMockURLResponse *)self responseHandlerBlocks];
    v35 = [v34 countByEnumeratingWithState:&v40 objects:v67 count:16];
    if (v35)
    {
      v36 = *v41;
      do
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v41 != v36)
          {
            objc_enumerationMutation(v34);
          }

          v38 = (*(*(*(&v40 + 1) + 8 * i) + 16))();
          if (v38)
          {
            objc_storeStrong(v62 + 5, v38);
          }
        }

        v35 = [v34 countByEnumeratingWithState:&v40 objects:v67 count:16];
      }

      while (v35);
    }

    retstr->var0 = v56[5];
    retstr->var1 = v62[5];
    retstr->var2 = v50[5];
    _Block_object_dispose(&v49, 8);

    _Block_object_dispose(&v55, 8);
    _Block_object_dispose(&v61, 8);
  }

  return result;
}

void __44__AMSMockURLResponse_handleReceivedRequest___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v19 = v8;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v19;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v13 = *(*(a1 + 48) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v7;
  v15 = v7;

  v16 = *(*(a1 + 56) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v9;
  v18 = v9;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)addResponseHandler:(id)a3
{
  v4 = a3;
  v6 = [(AMSMockURLResponse *)self responseHandlerBlocks];
  v5 = [v4 copy];

  [v6 addObject:v5];
}

- (void)stopRunningTasks
{
  v2 = [(AMSMockURLResponse *)self runningTask];
  [v2 cancel];
}

@end