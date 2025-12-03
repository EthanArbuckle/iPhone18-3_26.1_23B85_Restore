@interface WFImgurSessionManager
- (WFImgurSessionManager)initWithClientID:(id)d configuration:(id)configuration;
- (void)URLSession:(id)session task:(id)task didSendBodyData:(int64_t)data totalBytesSent:(int64_t)sent totalBytesExpectedToSend:(int64_t)send;
- (void)createAlbumWithIDs:(id)ds title:(id)title description:(id)description layout:(id)layout privacy:(id)privacy completionHandler:(id)handler;
- (void)getAlbumLinkFromID:(id)d completionHandler:(id)handler;
- (void)sendRequest:(id)request progress:(id)progress completionHandler:(id)handler;
- (void)uploadImage:(id)image title:(id)title description:(id)description progress:(id)progress completionHandler:(id)handler;
@end

@implementation WFImgurSessionManager

- (void)URLSession:(id)session task:(id)task didSendBodyData:(int64_t)data totalBytesSent:(int64_t)sent totalBytesExpectedToSend:(int64_t)send
{
  taskCopy = task;
  progressTable = [(WFImgurSessionManager *)self progressTable];
  v12 = [progressTable objectForKey:taskCopy];

  [v12 setTotalUnitCount:send];
  [v12 setCompletedUnitCount:sent];
}

- (void)sendRequest:(id)request progress:(id)progress completionHandler:(id)handler
{
  requestCopy = request;
  progressCopy = progress;
  handlerCopy = handler;
  credential = [(WFImgurSessionManager *)self credential];

  if (credential)
  {
    credential2 = [(WFImgurSessionManager *)self credential];
    [requestCopy wfo_setAuthorizationWithCredential:credential2];
  }

  else
  {
    v13 = MEMORY[0x277CCACA8];
    credential2 = [(WFImgurSessionManager *)self clientID];
    v14 = [v13 stringWithFormat:@"Client-ID %@", credential2];
    [requestCopy setValue:v14 forHTTPHeaderField:@"Authorization"];
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x3042000000;
  v26 = __Block_byref_object_copy__8734;
  v27 = __Block_byref_object_dispose__8735;
  v28 = 0;
  session = [(WFImgurSessionManager *)self session];
  hTTPBody = [requestCopy HTTPBody];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __64__WFImgurSessionManager_sendRequest_progress_completionHandler___block_invoke;
  v20[3] = &unk_278C21E20;
  v20[4] = self;
  v22 = &v23;
  v17 = handlerCopy;
  v21 = v17;
  v18 = [session uploadTaskWithRequest:requestCopy fromData:hTTPBody completionHandler:v20];

  objc_storeWeak(v24 + 5, v18);
  if (progressCopy)
  {
    progressTable = [(WFImgurSessionManager *)self progressTable];
    [progressTable setObject:progressCopy forKey:v18];
  }

  [v18 resume];

  _Block_object_dispose(&v23, 8);
  objc_destroyWeak(&v28);
}

void __64__WFImgurSessionManager_sendRequest_progress_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  v8 = [*(a1 + 32) progressTable];
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 48) + 8) + 40));
  v10 = [v8 objectForKey:WeakRetained];

  [v10 setCompletedUnitCount:{objc_msgSend(v10, "totalUnitCount")}];
  v11 = [*(a1 + 32) progressTable];
  v12 = objc_loadWeakRetained((*(*(a1 + 48) + 8) + 40));
  [v11 removeObjectForKey:v12];

  if ([v6 length])
  {
    v32 = v7;
    v13 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v6 options:0 error:&v32];
    v14 = v32;

    if (v13)
    {
      v15 = [v13 objectForKeyedSubscript:@"data"];
      v16 = [v15 objectForKeyedSubscript:@"error"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = v16;
        v18 = 0;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = v16;
          v22 = [v21 objectForKeyedSubscript:@"message"];
          v23 = objc_opt_class();
          v24 = v22;
          if (v24 && (objc_opt_isKindOfClass() & 1) == 0)
          {
            v25 = getWFGeneralLogObject();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
            {
              v26 = objc_opt_class();
              *buf = 136315906;
              v36 = "WFEnforceClass";
              v37 = 2114;
              v38 = v24;
              v39 = 2114;
              v40 = v26;
              v41 = 2114;
              v42 = v23;
              v27 = v26;
              _os_log_impl(&dword_23DE30000, v25, OS_LOG_TYPE_FAULT, "%s Warning: %{public}@ is of type %{public}@, not %{public}@! Falling back to nil.", buf, 0x2Au);
            }

            v17 = 0;
          }

          else
          {
            v17 = v24;
          }

          v28 = [v21 objectForKeyedSubscript:@"code"];
          v18 = [v28 integerValue];
        }

        else
        {
          v18 = 0;
          v17 = 0;
        }
      }

      if (v17 | v18 && !v14)
      {
        if (v17)
        {
          v33 = *MEMORY[0x277CCA470];
          v34 = v17;
          v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
        }

        else
        {
          v29 = 0;
        }

        v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"WFImgurErrorDomain" code:v18 userInfo:v29];
      }

      v30 = *(a1 + 40);
      if (v30)
      {
        (*(v30 + 16))(v30, v13, v14);
      }
    }

    else
    {
      v20 = *(a1 + 40);
      if (v20)
      {
        (*(v20 + 16))(v20, 0, v14);
      }
    }

    v7 = v14;
  }

  else
  {
    v19 = *(a1 + 40);
    if (v19)
    {
      (*(v19 + 16))(v19, 0, v7);
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)getAlbumLinkFromID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = MEMORY[0x277CBAB50];
  dCopy = d;
  baseURL = [(WFImgurSessionManager *)self baseURL];
  dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"album/%@", dCopy];

  v11 = [baseURL URLByAppendingPathComponent:dCopy];
  v12 = [v7 requestWithURL:v11];

  [v12 _setNonAppInitiated:1];
  data = [MEMORY[0x277CBEA90] data];
  [v12 setHTTPBody:data];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __62__WFImgurSessionManager_getAlbumLinkFromID_completionHandler___block_invoke;
  v15[3] = &unk_278C21CE8;
  v16 = handlerCopy;
  v14 = handlerCopy;
  [(WFImgurSessionManager *)self sendRequest:v12 progress:0 completionHandler:v15];
}

void __62__WFImgurSessionManager_getAlbumLinkFromID_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a3;
    v6 = a2;
    v11 = [v6 objectForKey:@"success"];
    v7 = [v11 BOOLValue];
    v8 = MEMORY[0x277CBEBC0];
    v9 = [v6 valueForKeyPath:@"data.link"];

    v10 = [v8 URLWithString:v9];
    (*(v3 + 16))(v3, v7, v10, v5);
  }
}

- (void)createAlbumWithIDs:(id)ds title:(id)title description:(id)description layout:(id)layout privacy:(id)privacy completionHandler:(id)handler
{
  handlerCopy = handler;
  privacyCopy = privacy;
  layoutCopy = layout;
  descriptionCopy = description;
  titleCopy = title;
  dsCopy = ds;
  v20 = objc_opt_new();
  [v20 setValue:titleCopy forKey:@"title"];

  [v20 setValue:descriptionCopy forKey:@"description"];
  [v20 setValue:layoutCopy forKey:@"layout"];

  [v20 setValue:privacyCopy forKey:@"privacy"];
  v21 = [dsCopy componentsJoinedByString:{@", "}];

  [v20 setValue:v21 forKey:@"ids"];
  v22 = MEMORY[0x277CCACE0];
  baseURL = [(WFImgurSessionManager *)self baseURL];
  v24 = [baseURL URLByAppendingPathComponent:@"album"];
  v25 = [v22 componentsWithURL:v24 resolvingAgainstBaseURL:0];

  v26 = [MEMORY[0x277CBEBC0] dc_queryStringWithQueryDictionary:v20];
  [v25 setPercentEncodedQuery:v26];

  v27 = MEMORY[0x277CBAB50];
  v28 = [v25 URL];
  v29 = [v27 requestWithURL:v28];

  [v29 _setNonAppInitiated:1];
  [v29 setHTTPMethod:@"POST"];
  v30 = [MEMORY[0x277CBEBC0] dc_queryStringWithQueryDictionary:v20];
  v31 = [v30 dataUsingEncoding:4];
  [v29 setHTTPBody:v31];

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __95__WFImgurSessionManager_createAlbumWithIDs_title_description_layout_privacy_completionHandler___block_invoke;
  v33[3] = &unk_278C1E6E8;
  v33[4] = self;
  v34 = handlerCopy;
  v32 = handlerCopy;
  [(WFImgurSessionManager *)self sendRequest:v29 progress:0 completionHandler:v33];
}

void __95__WFImgurSessionManager_createAlbumWithIDs_title_description_layout_privacy_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 40))
  {
    v3 = *(a1 + 32);
    v4 = [a2 valueForKeyPath:@"data.id"];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __95__WFImgurSessionManager_createAlbumWithIDs_title_description_layout_privacy_completionHandler___block_invoke_2;
    v5[3] = &unk_278C1A220;
    v6 = *(a1 + 40);
    [v3 getAlbumLinkFromID:v4 completionHandler:v5];
  }
}

- (void)uploadImage:(id)image title:(id)title description:(id)description progress:(id)progress completionHandler:(id)handler
{
  handlerCopy = handler;
  progressCopy = progress;
  descriptionCopy = description;
  titleCopy = title;
  imageCopy = image;
  v16 = objc_opt_new();
  [v16 setValue:titleCopy forKey:@"title"];

  [v16 setValue:descriptionCopy forKey:@"description"];
  v17 = MEMORY[0x277CCACA8];
  v18 = arc4random();
  v19 = [v17 stringWithFormat:@"Boundary+%08X%08X", v18, arc4random()];
  data = [MEMORY[0x277CBEB28] data];
  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"--%@\r\n", v19];
  v22 = [v21 dataUsingEncoding:4];
  [data appendData:v22];

  v23 = MEMORY[0x277CCACA8];
  filename = [imageCopy filename];
  v25 = [v23 stringWithFormat:@"Content-Disposition: form-data name=image; filename=%@\r\n", filename];;
  v26 = [v25 dataUsingEncoding:4];
  [data appendData:v26];

  v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"Content-Type: application/octet-stream\r\n\r\n"];
  v28 = [v27 dataUsingEncoding:4];
  [data appendData:v28];

  mappedData = [imageCopy mappedData];

  [data appendData:mappedData];
  v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"\r\n"];
  v31 = [v30 dataUsingEncoding:4];
  [data appendData:v31];

  v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"--%@--\r\n", v19];
  v33 = [v32 dataUsingEncoding:4];
  [data appendData:v33];

  v34 = MEMORY[0x277CCACE0];
  baseURL = [(WFImgurSessionManager *)self baseURL];
  v36 = [baseURL URLByAppendingPathComponent:@"image"];
  v37 = [v34 componentsWithURL:v36 resolvingAgainstBaseURL:0];

  v38 = [MEMORY[0x277CBEBC0] dc_queryStringWithQueryDictionary:v16];
  [v37 setPercentEncodedQuery:v38];

  v39 = MEMORY[0x277CBAB50];
  v40 = [v37 URL];
  v41 = [v39 requestWithURL:v40];

  [v41 _setNonAppInitiated:1];
  [v41 setHTTPMethod:@"POST"];
  [v41 setHTTPBody:data];
  v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"multipart/form-data boundary=%@", v19];;
  [v41 setValue:v42 forHTTPHeaderField:@"Content-Type"];

  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __82__WFImgurSessionManager_uploadImage_title_description_progress_completionHandler___block_invoke;
  v45[3] = &unk_278C21CE8;
  v46 = handlerCopy;
  v43 = handlerCopy;
  [(WFImgurSessionManager *)self sendRequest:v41 progress:progressCopy completionHandler:v45];
}

void __82__WFImgurSessionManager_uploadImage_title_description_progress_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a3;
    v6 = a2;
    v12 = [v6 objectForKey:@"success"];
    v7 = [v12 BOOLValue];
    v8 = MEMORY[0x277CBEBC0];
    v9 = [v6 valueForKeyPath:@"data.link"];
    v10 = [v8 URLWithString:v9];
    v11 = [v6 valueForKeyPath:@"data.id"];

    (*(v3 + 16))(v3, v7, v10, v11, v5);
  }
}

- (WFImgurSessionManager)initWithClientID:(id)d configuration:(id)configuration
{
  dCopy = d;
  configurationCopy = configuration;
  v21.receiver = self;
  v21.super_class = WFImgurSessionManager;
  v8 = [(WFImgurSessionManager *)&v21 init];
  if (v8)
  {
    v9 = [dCopy copy];
    clientID = v8->_clientID;
    v8->_clientID = v9;

    v11 = MEMORY[0x277CBABB8];
    wf_defaultSessionConfiguration = configurationCopy;
    if (!configurationCopy)
    {
      wf_defaultSessionConfiguration = [MEMORY[0x277CBABC8] wf_defaultSessionConfiguration];
    }

    v13 = [v11 sessionWithConfiguration:wf_defaultSessionConfiguration delegate:v8 delegateQueue:0];
    session = v8->_session;
    v8->_session = v13;

    if (!configurationCopy)
    {
    }

    v15 = [MEMORY[0x277CBEBC0] URLWithString:@"https://api.imgur.com/3/"];
    baseURL = v8->_baseURL;
    v8->_baseURL = v15;

    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    progressTable = v8->_progressTable;
    v8->_progressTable = weakToStrongObjectsMapTable;

    v19 = v8;
  }

  return v8;
}

@end