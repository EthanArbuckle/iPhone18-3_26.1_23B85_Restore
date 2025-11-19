@interface HMCameraClipDownloadAssetDataTask
- (HMCameraClipDownloadAssetDataTask)initWithURL:(id)a3 httpHeaderFields:(id)a4;
- (HMCameraClipDownloadAssetDataTask)initWithURL:(id)a3 httpHeaderFields:(id)a4 handler:(id)a5;
- (id)downloadDataForByteRange:(_NSRange)a3;
@end

@implementation HMCameraClipDownloadAssetDataTask

- (id)downloadDataForByteRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v32 = *MEMORY[0x1E69E9840];
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v33.location = location;
    v33.length = length;
    v10 = NSStringFromRange(v33);
    v11 = [(HMCameraClipDownloadAssetDataTask *)v7 urlRequest];
    *buf = 138543874;
    v27 = v9;
    v28 = 2112;
    v29 = v10;
    v30 = 2112;
    v31 = v11;
    _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, "%{public}@Downloading data with byte range %@ for URL request %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  v12 = objc_alloc_init(MEMORY[0x1E69B3780]);
  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"bytes=%lu-%lu", location, length + location - 1];
  v14 = [(HMCameraClipDownloadAssetDataTask *)v7 urlRequest];
  [v14 setValue:v13 forHTTPHeaderField:@"Range"];

  v15 = [(HMCameraClipDownloadAssetDataTask *)v7 handler];
  v16 = [(HMCameraClipDownloadAssetDataTask *)v7 urlRequest];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __62__HMCameraClipDownloadAssetDataTask_downloadDataForByteRange___block_invoke;
  v22[3] = &unk_1E7548848;
  v22[4] = v7;
  v17 = v12;
  v23 = v17;
  v24 = location;
  v25 = length;
  [v15 resumeDataTaskWithRequest:v16 completionHandler:v22];

  v18 = v23;
  v19 = v17;

  v20 = *MEMORY[0x1E69E9840];
  return v17;
}

void __62__HMCameraClipDownloadAssetDataTask_downloadDataForByteRange___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    v10 = v8;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    if (v12)
    {
      if ([v12 statusCode] == 200 || objc_msgSend(v12, "statusCode") == 206)
      {
        v13 = objc_autoreleasePoolPush();
        v14 = *(a1 + 32);
        v15 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = HMFGetLogIdentifier();
          v17 = NSStringFromRange(*(a1 + 48));
          v33 = 138543618;
          v34 = v16;
          v35 = 2112;
          v36 = v17;
          _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_INFO, "%{public}@Successfully downloaded asset data with byte range %@", &v33, 0x16u);
        }

        objc_autoreleasePoolPop(v13);
        [*(a1 + 40) finishWithResult:v7];
        goto LABEL_21;
      }

      v22 = objc_autoreleasePoolPush();
      v27 = *(a1 + 32);
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        v33 = 138543618;
        v34 = v29;
        v35 = 2048;
        v36 = [v12 statusCode];
        _os_log_impl(&dword_19BB39000, v28, OS_LOG_TYPE_ERROR, "%{public}@Received bad HTTP response status code from asset data download: %lu", &v33, 0x16u);
      }
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      v23 = *(a1 + 32);
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        v33 = 138543874;
        v34 = v25;
        v35 = 2112;
        v36 = objc_opt_class();
        v37 = 2112;
        v38 = v10;
        v26 = v36;
        _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_ERROR, "%{public}@Response was not of class NSHTTPURLResponse (class=%@): %@", &v33, 0x20u);
      }
    }

    objc_autoreleasePoolPop(v22);
    v30 = *(a1 + 40);
    v31 = [MEMORY[0x1E696ABC0] hmfErrorWithCode:15];
    [v30 finishWithError:v31];

LABEL_21:
    goto LABEL_22;
  }

  v18 = objc_autoreleasePoolPush();
  v19 = *(a1 + 32);
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v21 = HMFGetLogIdentifier();
    v33 = 138543618;
    v34 = v21;
    v35 = 2112;
    v36 = v9;
    _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@Download of asset data failed: %@", &v33, 0x16u);
  }

  objc_autoreleasePoolPop(v18);
  [*(a1 + 40) finishWithError:v9];
LABEL_22:

  v32 = *MEMORY[0x1E69E9840];
}

- (HMCameraClipDownloadAssetDataTask)initWithURL:(id)a3 httpHeaderFields:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = HMCameraClipDownloadAssetDataTask;
  v11 = [(HMCameraClipDownloadAssetDataTask *)&v15 init];
  if (v11)
  {
    v12 = [objc_alloc(MEMORY[0x1E696AD68]) initWithURL:v8];
    urlRequest = v11->_urlRequest;
    v11->_urlRequest = v12;

    [(NSMutableURLRequest *)v11->_urlRequest setAllHTTPHeaderFields:v9];
    objc_storeStrong(&v11->_handler, a5);
  }

  return v11;
}

- (HMCameraClipDownloadAssetDataTask)initWithURL:(id)a3 httpHeaderFields:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(HMCameraClipDownloadAssetDataTaskHandler);
  v9 = [(HMCameraClipDownloadAssetDataTask *)self initWithURL:v7 httpHeaderFields:v6 handler:v8];

  return v9;
}

@end