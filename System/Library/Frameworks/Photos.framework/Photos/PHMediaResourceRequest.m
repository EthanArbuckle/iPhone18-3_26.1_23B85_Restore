@interface PHMediaResourceRequest
- (BOOL)retryAssetResourceRequest:(id)a3 afterFailureWithError:(id)a4;
- (NSString)description;
- (PHMediaResourceRequest)initWithRequestID:(int)a3 requestIndex:(unint64_t)a4 contextType:(int64_t)a5 managerID:(unint64_t)a6 asset:(id)a7 assetResource:(id)a8 networkAccessAllowed:(BOOL)a9 downloadIntent:(int64_t)a10 downloadPriority:(int64_t)a11 wantsURLOnly:(BOOL)a12 synchronous:(BOOL)a13 delegate:(id)a14;
- (void)_finishWithError:(id)a3;
- (void)_handleDidFindFileURL:(id)a3;
- (void)_receiveAssetResourceDataPart:(id)a3;
- (void)assetResourceRequest:(id)a3 didFinishWithError:(id)a4;
- (void)cancel;
- (void)startRequest;
@end

@implementation PHMediaResourceRequest

- (BOOL)retryAssetResourceRequest:(id)a3 afterFailureWithError:(id)a4
{
  v5 = a4;
  v6 = [(PHMediaRequest *)self delegate];
  LOBYTE(self) = [v6 retryMediaRequest:self afterFailureWithError:v5];

  return self;
}

- (void)assetResourceRequest:(id)a3 didFinishWithError:(id)a4
{
  [(PHMediaResourceResult *)self->_dataResult setAssetResourceData:self->_compositeData, a4];
  dataResult = self->_dataResult;
  v6 = [(PHAssetResourceRequest *)self->_internalRequest info];
  [(PHCompositeMediaResult *)dataResult addInfoFromDictionary:v6];

  v7 = [(PHMediaRequest *)self delegate];
  [v7 mediaRequest:self didFinishWithResult:self->_dataResult];
}

- (void)_finishWithError:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  progressHandler = self->_progressHandler;
  if (progressHandler)
  {
    progressHandler[2](progressHandler, 1, v4, 1.0);
  }

  v6 = PLImageManagerGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = [(PHMediaRequest *)self identifierString];
    v8 = 138412546;
    v9 = v7;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_19C86F000, v6, OS_LOG_TYPE_DEBUG, "[RM] %@ Media resource request finished with error: %@", &v8, 0x16u);
  }

  [(PHCompositeMediaResult *)self->_dataResult setError:v4];
}

- (void)_receiveAssetResourceDataPart:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLImageManagerGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [(PHMediaRequest *)self identifierString];
    v10 = 138412546;
    v11 = v6;
    v12 = 2048;
    v13 = [v4 length];
    _os_log_impl(&dword_19C86F000, v5, OS_LOG_TYPE_DEBUG, "[RM] %@ Media resource request receiving data with length: %ld", &v10, 0x16u);
  }

  compositeData = self->_compositeData;
  if (!compositeData)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF88]);
    v9 = self->_compositeData;
    self->_compositeData = v8;

    compositeData = self->_compositeData;
  }

  [(NSMutableData *)compositeData appendData:v4];
}

- (void)_handleDidFindFileURL:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLImageManagerGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [(PHMediaRequest *)self identifierString];
    v7 = 138412546;
    v8 = v6;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_19C86F000, v5, OS_LOG_TYPE_DEBUG, "[RM] %@ Media resource request determined resource url: %@", &v7, 0x16u);
  }

  [(PHMediaResourceResult *)self->_dataResult setAssetResourceFileURL:v4];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = _PHAssetResourceTypeDescription([(PHAssetResource *)self->_resource type]);
  v7 = v6;
  v8 = @"N";
  if (self->_networkAccessAllowed)
  {
    v9 = @"Y";
  }

  else
  {
    v9 = @"N";
  }

  if (self->_wantsURLOnly)
  {
    v8 = @"Y";
  }

  v10 = [v3 stringWithFormat:@"<%@ %p> - type: %@, net: %@, url-only: %@", v5, self, v6, v9, v8];

  return v10;
}

- (void)cancel
{
  v3.receiver = self;
  v3.super_class = PHMediaResourceRequest;
  [(PHMediaRequest *)&v3 cancel];
  [(PHAssetResourceRequest *)self->_internalRequest cancel];
}

- (void)startRequest
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = PLImageManagerGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(PHMediaRequest *)self identifierString];
    v5 = _PHAssetResourceTypeDescription([(PHMediaResourceRequest *)self resourceType]);
    *buf = 138412546;
    v25 = v4;
    v26 = 2112;
    v27 = v5;
    _os_log_impl(&dword_19C86F000, v3, OS_LOG_TYPE_DEFAULT, "[RM] %@ Starting media resource request for resource type %@", buf, 0x16u);
  }

  if (self->_networkAccessAllowed && self->_synchronous)
  {
    v6 = PLImageManagerGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = [(PHMediaRequest *)self identifierString];
      *buf = 138412290;
      v25 = v7;
      _os_log_impl(&dword_19C86F000, v6, OS_LOG_TYPE_DEBUG, "[RM] %@ resource request starting with both synchronous and network access allowed - warning, result may block for a long time", buf, 0xCu);
    }
  }

  v8 = objc_alloc_init(PHAssetResourceRequestOptions);
  [(PHAssetResourceRequestOptions *)v8 setNetworkAccessAllowed:self->_networkAccessAllowed];
  [(PHAssetResourceRequestOptions *)v8 setDownloadIntent:self->_downloadIntent];
  [(PHAssetResourceRequestOptions *)v8 setDownloadPriority:self->_downloadPriority];
  objc_initWeak(buf, self);
  if (self->_progressHandler)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __38__PHMediaResourceRequest_startRequest__block_invoke;
    v22[3] = &unk_1E75AAFD0;
    objc_copyWeak(&v23, buf);
    [(PHAssetResourceRequestOptions *)v8 setProgressHandler:v22];
    objc_destroyWeak(&v23);
  }

  v9 = [PHAssetResourceRequest alloc];
  resource = self->_resource;
  v11 = [(PHMediaRequest *)self requestID];
  v12 = [(PHMediaRequest *)self managerID];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __38__PHMediaResourceRequest_startRequest__block_invoke_2;
  v20[3] = &unk_1E75AAFF8;
  objc_copyWeak(&v21, buf);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __38__PHMediaResourceRequest_startRequest__block_invoke_3;
  v18[3] = &unk_1E75AB020;
  objc_copyWeak(&v19, buf);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __38__PHMediaResourceRequest_startRequest__block_invoke_4;
  v16[3] = &unk_1E75AB048;
  objc_copyWeak(&v17, buf);
  v13 = [(PHAssetResourceRequest *)v9 initWithAssetResource:resource options:v8 requestID:v11 managerID:v12 delegate:self urlReceivedHandler:v20 dataReceivedHandler:v18 completionHandler:v16];
  internalRequest = self->_internalRequest;
  self->_internalRequest = v13;

  v15 = [(PHMediaRequest *)self identifierString];
  [(PHAssetResourceRequest *)self->_internalRequest setTaskIdentifier:v15];

  [(PHAssetResourceRequest *)self->_internalRequest setLoadURLOnly:self->_wantsURLOnly];
  [(PHAssetResourceRequest *)self->_internalRequest setSynchronous:self->_synchronous];
  [(PHAssetResourceRequest *)self->_internalRequest startRequest];
  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&v21);
  objc_destroyWeak(buf);
}

void __38__PHMediaResourceRequest_startRequest__block_invoke(uint64_t a1, double a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reportProgress:a2];
}

void __38__PHMediaResourceRequest_startRequest__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleDidFindFileURL:v3];
}

void __38__PHMediaResourceRequest_startRequest__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _receiveAssetResourceDataPart:v3];
}

void __38__PHMediaResourceRequest_startRequest__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _finishWithError:v3];
}

- (PHMediaResourceRequest)initWithRequestID:(int)a3 requestIndex:(unint64_t)a4 contextType:(int64_t)a5 managerID:(unint64_t)a6 asset:(id)a7 assetResource:(id)a8 networkAccessAllowed:(BOOL)a9 downloadIntent:(int64_t)a10 downloadPriority:(int64_t)a11 wantsURLOnly:(BOOL)a12 synchronous:(BOOL)a13 delegate:(id)a14
{
  v18 = *&a3;
  v21 = a7;
  v22 = a8;
  v23 = a14;
  if (v21)
  {
    if (v22)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v29 = [MEMORY[0x1E696AAA8] currentHandler];
    [v29 handleFailureInMethod:a2 object:self file:@"PHMediaResourceRequest.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"asset"}];

    if (v22)
    {
      goto LABEL_3;
    }
  }

  v30 = [MEMORY[0x1E696AAA8] currentHandler];
  [v30 handleFailureInMethod:a2 object:self file:@"PHMediaResourceRequest.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"assetResource"}];

LABEL_3:
  v31.receiver = self;
  v31.super_class = PHMediaResourceRequest;
  v24 = [(PHMediaRequest *)&v31 initWithRequestID:v18 requestIndex:a4 contextType:a5 managerID:a6 asset:v21 delegate:v23];
  v25 = v24;
  if (v24)
  {
    v24->_resource = v22;
    v24->_networkAccessAllowed = a9;
    v24->_downloadIntent = a10;
    v24->_downloadPriority = a11;
    v24->_synchronous = a13;
    v24->_wantsURLOnly = a12;
    v26 = [[PHMediaResourceResult alloc] initWithRequestID:v18 assetResource:v22];
    dataResult = v25->_dataResult;
    v25->_dataResult = v26;
  }

  return v25;
}

@end