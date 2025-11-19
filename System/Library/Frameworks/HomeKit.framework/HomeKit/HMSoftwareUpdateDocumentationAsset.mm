@interface HMSoftwareUpdateDocumentationAsset
+ (HMSoftwareUpdateDocumentationAsset)assetWithURL:(id)a3;
+ (NSURL)assetDirectoryURL;
+ (id)logCategory;
- (BOOL)isEqual:(id)a3;
- (BOOL)saveWithError:(id *)a3;
- (HMSoftwareUpdateDocumentation)documentation;
- (HMSoftwareUpdateDocumentationAsset)init;
- (HMSoftwareUpdateDocumentationAsset)initWithCoder:(id)a3;
- (HMSoftwareUpdateDocumentationAsset)initWithDocumentationMetadata:(id)a3 urlSession:(id)a4 extractor:(id)a5;
- (HMSoftwareUpdateDocumentationAssetDelegate)delegate;
- (HMSoftwareUpdateDocumentationAssetExtractor)extractor;
- (NSError)error;
- (NSString)propertyDescription;
- (NSString)shortDescription;
- (NSURL)URL;
- (id)archiveURL;
- (id)bundleURL;
- (id)logIdentifier;
- (id)metadataURL;
- (int64_t)state;
- (unint64_t)hash;
- (void)URLSession:(id)a3 downloadTask:(id)a4 didFinishDownloadingToURL:(id)a5;
- (void)URLSession:(id)a3 downloadTask:(id)a4 didWriteData:(int64_t)a5 totalBytesWritten:(int64_t)a6 totalBytesExpectedToWrite:(int64_t)a7;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)cancelDownload;
- (void)cancelUnarchiveWithError:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)finishDownload;
- (void)finishUnarchive;
- (void)setError:(id)a3;
- (void)setExtractionProgress:(double)a3;
- (void)setState:(int64_t)a3;
- (void)startCaching;
- (void)startDownload;
- (void)startUnarchive;
@end

@implementation HMSoftwareUpdateDocumentationAsset

- (HMSoftwareUpdateDocumentationAssetDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setExtractionProgress:(double)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v8;
    v12 = 2048;
    v13 = a3 * 100.0;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Unarchive progress: %.1f%%", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = *MEMORY[0x1E69E9840];
}

- (void)URLSession:(id)a3 downloadTask:(id)a4 didFinishDownloadingToURL:(id)a5
{
  v58 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v15 = [v10 path];
    *buf = 138543618;
    v53 = v14;
    v54 = 2112;
    v55 = v15;
    _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@Finished downloading archived asset to: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  v16 = [v9 response];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  if (v18 && ([v18 statusCode] > 399 || objc_msgSend(v18, "statusCode") <= 199))
  {
    v19 = objc_autoreleasePoolPush();
    v20 = v12;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      v23 = [(HMSoftwareUpdateDocumentationAsset *)v20 archiveURL];
      v24 = [v23 path];
      *buf = 138543874;
      v53 = v22;
      v54 = 2112;
      v55 = v24;
      v56 = 2112;
      v57 = v18;
      _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to download asset to '%@' due to bad response status: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v19);
    [(HMSoftwareUpdateDocumentationAsset *)v20 cancelDownload];
    v25 = 0;
  }

  else
  {
    v26 = [MEMORY[0x1E696AC08] defaultManager];
    v27 = [(HMSoftwareUpdateDocumentationAsset *)v12 archiveURL];
    v51 = 0;
    v28 = [v26 moveItemAtURL:v10 toURL:v27 error:&v51];
    v29 = v51;

    if (v28)
    {
      queue = v12->_queue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __88__HMSoftwareUpdateDocumentationAsset_URLSession_downloadTask_didFinishDownloadingToURL___block_invoke;
      block[3] = &unk_1E754E2A8;
      block[4] = v12;
      dispatch_async(queue, block);
      v25 = v29;
    }

    else
    {
      v48 = v8;
      v31 = objc_autoreleasePoolPush();
      v32 = v12;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = HMFGetLogIdentifier();
        v35 = [(HMSoftwareUpdateDocumentationAsset *)v32 archiveURL];
        v36 = [v35 path];
        *buf = 138543874;
        v53 = v34;
        v54 = 2112;
        v55 = v36;
        v56 = 2112;
        v57 = v29;
        _os_log_impl(&dword_19BB39000, v33, OS_LOG_TYPE_ERROR, "%{public}@Failed to move downloaded asset to '%@' with error: %@. Removing existing assets at that path.", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v31);
      v37 = [MEMORY[0x1E696AC08] defaultManager];
      v38 = [(HMSoftwareUpdateDocumentationAsset *)v32 archiveURL];
      v50 = v29;
      v39 = [v37 removeItemAtURL:v38 error:&v50];
      v25 = v50;

      v8 = v48;
      if ((v39 & 1) == 0)
      {
        v40 = objc_autoreleasePoolPush();
        v41 = v32;
        v42 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          v43 = HMFGetLogIdentifier();
          v44 = [(HMSoftwareUpdateDocumentationAsset *)v41 archiveURL];
          [v44 path];
          v45 = v47 = v40;
          *buf = 138543874;
          v53 = v43;
          v54 = 2112;
          v55 = v45;
          v56 = 2112;
          v57 = v25;
          _os_log_impl(&dword_19BB39000, v42, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove existing asset at url '%@' with error: %@.", buf, 0x20u);

          v40 = v47;
          v8 = v48;
        }

        objc_autoreleasePoolPop(v40);
      }

      [(HMSoftwareUpdateDocumentationAsset *)v32 cancelDownload];
    }
  }

  v46 = *MEMORY[0x1E69E9840];
}

uint64_t __88__HMSoftwareUpdateDocumentationAsset_URLSession_downloadTask_didFinishDownloadingToURL___block_invoke(uint64_t a1)
{
  [*(a1 + 32) finishDownload];
  v2 = *(a1 + 32);

  return [v2 startUnarchive];
}

- (void)URLSession:(id)a3 downloadTask:(id)a4 didWriteData:(int64_t)a5 totalBytesWritten:(int64_t)a6 totalBytesExpectedToWrite:(int64_t)a7
{
  v23 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = objc_autoreleasePoolPush();
  v14 = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = a6 / a7;
    v17 = HMFGetLogIdentifier();
    v19 = 138543618;
    v20 = v17;
    v21 = 2048;
    v22 = (v16 * 100.0);
    _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_INFO, "%{public}@Download progress: %.1f%%", &v19, 0x16u);
  }

  objc_autoreleasePoolPop(v13);
  v18 = *MEMORY[0x1E69E9840];
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v14;
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to download asset with error: %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    [(HMSoftwareUpdateDocumentationAsset *)v12 setError:v10];
    [(HMSoftwareUpdateDocumentationAsset *)v12 setState:5];
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)encodeWithCoder:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [(HMSoftwareUpdateDocumentationAsset *)v6 identifier];
    v10 = [(HMSoftwareUpdateDocumentationAsset *)v6 metadata];
    v14 = 138544130;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    v18 = 2112;
    v19 = v10;
    v20 = 2048;
    v21 = [(HMSoftwareUpdateDocumentationAsset *)v6 state];
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Encoding software update documentation asset with identifier: %@, metadata: %@, state: %ld", &v14, 0x2Au);
  }

  objc_autoreleasePoolPop(v5);
  v11 = [(HMSoftwareUpdateDocumentationAsset *)v6 identifier];
  [v4 encodeObject:v11 forKey:@"HM.identifier"];

  v12 = [(HMSoftwareUpdateDocumentationAsset *)v6 metadata];
  [v4 encodeObject:v12 forKey:@"HM.metadata"];

  [v4 encodeInteger:-[HMSoftwareUpdateDocumentationAsset state](v6 forKey:{"state"), @"HM.state"}];
  v13 = *MEMORY[0x1E69E9840];
}

- (HMSoftwareUpdateDocumentationAsset)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.metadata"];
  v6 = [(HMSoftwareUpdateDocumentationAsset *)self initWithDocumentationMetadata:v5];
  if (v6)
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.identifier"];
    identifier = v6->_identifier;
    v6->_identifier = v7;

    v6->_state = [v4 decodeIntegerForKey:@"HM.state"];
  }

  return v6;
}

- (id)logIdentifier
{
  v2 = [(HMSoftwareUpdateDocumentationAsset *)self identifier];
  v3 = [v2 UUIDString];

  return v3;
}

- (void)finishUnarchive
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(HMSoftwareUpdateDocumentationAsset *)self state]== 3;
  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v7)
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v16 = v8;
      _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Finishing unarchive", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    objc_initWeak(buf, v5);
    v9 = [(HMSoftwareUpdateDocumentationAsset *)v5 extractor];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __53__HMSoftwareUpdateDocumentationAsset_finishUnarchive__block_invoke;
    v13[3] = &unk_1E754E2F8;
    objc_copyWeak(&v14, buf);
    [v9 finishStreamWithCompletionBlock:v13];

    v10 = [(HMSoftwareUpdateDocumentationAsset *)v5 archivedFileStream];
    [v10 close];

    [(HMSoftwareUpdateDocumentationAsset *)v5 setArchivedFileStream:0];
    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);
  }

  else
  {
    if (v7)
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v16 = v11;
      _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Unable to finish unarchive, not currently unarchiving", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __53__HMSoftwareUpdateDocumentationAsset_finishUnarchive__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = v3;
  if (v4)
  {
    v6 = v4[2];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = ____handleFinishedUnarchive_block_invoke;
    v7[3] = &unk_1E754E5C0;
    v8 = v4;
    v9 = v5;
    dispatch_async(v6, v7);
  }
}

- (void)cancelUnarchiveWithError:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v22 = v8;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Cancelling unarchive", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  [(HMSoftwareUpdateDocumentationAsset *)v6 setExtractor:0];
  v9 = [(HMSoftwareUpdateDocumentationAsset *)v6 archivedFileStream];
  [v9 close];

  [(HMSoftwareUpdateDocumentationAsset *)v6 setArchivedFileStream:0];
  v10 = [MEMORY[0x1E696AC08] defaultManager];
  v11 = [(HMSoftwareUpdateDocumentationAsset *)v6 bundleURL];
  v20 = 0;
  v12 = [v10 removeItemAtURL:v11 error:&v20];
  v13 = v20;

  if (v12)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = v6;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v17;
      v23 = 2112;
      v24 = v13;
      _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_INFO, "%{public}@Failed to remove bundle with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
  }

  if (v4)
  {
    [(HMSoftwareUpdateDocumentationAsset *)v6 setError:v4];
  }

  else
  {
    v18 = [MEMORY[0x1E696ABC0] hmErrorWithCode:23];
    [(HMSoftwareUpdateDocumentationAsset *)v6 setError:v18];
  }

  [(HMSoftwareUpdateDocumentationAsset *)v6 setState:5];

  v19 = *MEMORY[0x1E69E9840];
}

- (void)startUnarchive
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__HMSoftwareUpdateDocumentationAsset_startUnarchive__block_invoke;
  block[3] = &unk_1E754E2A8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __52__HMSoftwareUpdateDocumentationAsset_startUnarchive__block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) state] == 2;
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v6)
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v21 = v7;
      _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Starting unarchive", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    [*(a1 + 32) setState:3];
    v8 = [*(a1 + 32) extractor];
    if (v8)
    {
      objc_initWeak(buf, *(a1 + 32));
      v9 = [*(a1 + 32) bundleURL];
      v10 = [v9 path];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __52__HMSoftwareUpdateDocumentationAsset_startUnarchive__block_invoke_127;
      v18[3] = &unk_1E754E2D0;
      objc_copyWeak(&v19, buf);
      [v8 prepareForExtractionToPath:v10 completionBlock:v18];

      objc_destroyWeak(&v19);
      objc_destroyWeak(buf);
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      v13 = *(a1 + 32);
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543362;
        v21 = v15;
        _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to create extractor", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v12);
      v16 = [MEMORY[0x1E696ABC0] hmErrorWithCode:20];
      [*(a1 + 32) setError:v16];

      [*(a1 + 32) setState:5];
    }
  }

  else
  {
    if (v6)
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v21 = v11;
      _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Unable to unarchive, asset is not downloaded", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __52__HMSoftwareUpdateDocumentationAsset_startUnarchive__block_invoke_127(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_loadWeakRetained((a1 + 32));
  v6 = v4;
  if (v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = v5;
    v9 = HMFGetOSLogHandle();
    v10 = v9;
    if (v6)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        v16 = 138543618;
        v17 = v11;
        v18 = 2112;
        v19 = v6;
        _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to start unarchive with error: %@", &v16, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
      [v8 cancelUnarchiveWithError:v6];
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v12 = HMFGetLogIdentifier();
        v16 = 138543362;
        v17 = v12;
        _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Started unarchive", &v16, 0xCu);
      }

      objc_autoreleasePoolPop(v7);
      v13 = [v8 extractor];
      [v13 setExtractorDelegate:v8];

      v14 = [v8 archivedFileStream];
      [v14 open];

      __processNextArchivedData(v8);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (HMSoftwareUpdateDocumentationAssetExtractor)extractor
{
  v38 = *MEMORY[0x1E69E9840];
  extractor = self->_extractor;
  if (extractor)
  {
    v3 = extractor;
  }

  else
  {
    v5 = MEMORY[0x1E69D4DD8];
    v6 = [(HMSoftwareUpdateDocumentationAsset *)self archiveURL];
    v7 = [(HMSoftwareUpdateDocumentationAsset *)self metadata];
    v8 = [v7 digest];
    v9 = [v5 optionsForArchiveURL:v6 digest:v8];

    if (v9)
    {
      v10 = MEMORY[0x1E695DF48];
      v11 = [(HMSoftwareUpdateDocumentationAsset *)self archiveURL];
      v12 = [v10 inputStreamWithURL:v11];

      if (v12)
      {
        [(HMSoftwareUpdateDocumentationAsset *)self setArchivedFileStream:v12];
        v13 = objc_autoreleasePoolPush();
        v14 = self;
        v15 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = HMFGetLogIdentifier();
          v34 = 138543618;
          v35 = v16;
          v36 = 2112;
          v37 = v9;
          _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_INFO, "%{public}@Starting extraction using options: %@", &v34, 0x16u);
        }

        objc_autoreleasePoolPop(v13);
        v17 = objc_alloc(MEMORY[0x1E69D4DD8]);
        v18 = [(HMSoftwareUpdateDocumentationAsset *)v14 bundleURL];
        v19 = [v18 path];
        v20 = [v17 initWithPath:v19 options:v9];
        v21 = self->_extractor;
        self->_extractor = v20;

        v3 = self->_extractor;
      }

      else
      {
        v28 = objc_autoreleasePoolPush();
        v29 = self;
        v30 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v31 = HMFGetLogIdentifier();
          v34 = 138543362;
          v35 = v31;
          _os_log_impl(&dword_19BB39000, v30, OS_LOG_TYPE_ERROR, "%{public}@Failed to create input stream", &v34, 0xCu);
        }

        objc_autoreleasePoolPop(v28);
        v3 = 0;
      }
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      v23 = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = HMFGetLogIdentifier();
        v26 = [(HMSoftwareUpdateDocumentationAsset *)v23 metadata];
        v27 = [v26 digest];
        v34 = 138543618;
        v35 = v25;
        v36 = 2112;
        v37 = v27;
        _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_INFO, "%{public}@Failed to create validation options for unarchiving with digest: %@", &v34, 0x16u);
      }

      objc_autoreleasePoolPop(v22);
      v3 = 0;
    }
  }

  v32 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)finishDownload
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Finished download", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMSoftwareUpdateDocumentationAsset *)v4 URLSession];
  [v7 invalidateAndCancel];

  [(HMSoftwareUpdateDocumentationAsset *)v4 setURLSession:0];
  [(HMSoftwareUpdateDocumentationAsset *)v4 setState:2];
  v8 = *MEMORY[0x1E69E9840];
}

- (void)cancelDownload
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v11 = v6;
    _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Cancelling download", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  queue = v4->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__HMSoftwareUpdateDocumentationAsset_cancelDownload__block_invoke;
  block[3] = &unk_1E754E2A8;
  block[4] = v4;
  dispatch_async(queue, block);
  v8 = *MEMORY[0x1E69E9840];
}

uint64_t __52__HMSoftwareUpdateDocumentationAsset_cancelDownload__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) URLSession];
  [v2 invalidateAndCancel];

  [*(a1 + 32) setURLSession:0];
  v3 = [MEMORY[0x1E696ABC0] hmErrorWithCode:23];
  [*(a1 + 32) setError:v3];

  v4 = *(a1 + 32);

  return [v4 setState:5];
}

- (void)startDownload
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__HMSoftwareUpdateDocumentationAsset_startDownload__block_invoke;
  block[3] = &unk_1E754E2A8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __51__HMSoftwareUpdateDocumentationAsset_startDownload__block_invoke(uint64_t a1)
{
  v48 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) state];
  if (v2)
  {
    v3 = v2 == 5;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    v4 = *(a1 + 32);
    v43 = 0;
    v5 = [v4 saveWithError:&v43];
    v6 = v43;
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    v10 = v9;
    if (v5)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = HMFGetLogIdentifier();
        *buf = 138543362;
        v45 = v11;
        _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Starting download", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v7);
      [*(a1 + 32) setState:1];
      v12 = [*(a1 + 32) URLSession];

      if (!v12)
      {
        v13 = [MEMORY[0x1E696AF80] ephemeralSessionConfiguration];
        v14 = MEMORY[0x1E696AF78];
        v15 = *(a1 + 32);
        v16 = [MEMORY[0x1E696ADC8] mainQueue];
        v17 = [v14 sessionWithConfiguration:v13 delegate:v15 delegateQueue:v16];

        [*(a1 + 32) setURLSession:v17];
      }

      v18 = [*(a1 + 32) metadata];
      v19 = [v18 URL];

      if (v19)
      {
        v20 = [*(a1 + 32) URLSession];
        v21 = [*(a1 + 32) metadata];
        v22 = [v21 URL];
        v23 = [v20 downloadTaskWithURL:v22];

        v24 = objc_autoreleasePoolPush();
        v25 = *(a1 + 32);
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v27 = HMFGetLogIdentifier();
          *buf = 138543618;
          v45 = v27;
          v46 = 2112;
          v47 = v23;
          _os_log_impl(&dword_19BB39000, v26, OS_LOG_TYPE_INFO, "%{public}@Resuming task: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v24);
        [(__CFString *)v23 resume];
      }

      else
      {
        v36 = objc_autoreleasePoolPush();
        v37 = *(a1 + 32);
        v38 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          v39 = HMFGetLogIdentifier();
          *buf = 138543362;
          v45 = v39;
          _os_log_impl(&dword_19BB39000, v38, OS_LOG_TYPE_ERROR, "%{public}@Cannot download software update from nil url", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v36);
        v40 = [MEMORY[0x1E696ABC0] hmErrorWithCode:20];
        [*(a1 + 32) setError:v40];

        [*(a1 + 32) setState:5];
      }
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        *buf = 138543618;
        v45 = v28;
        v46 = 2112;
        v47 = v6;
        _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to save asset with error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
      [*(a1 + 32) setError:v6];
      [*(a1 + 32) setState:5];
    }
  }

  else
  {
    v29 = v2;
    v30 = objc_autoreleasePoolPush();
    v31 = *(a1 + 32);
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v34 = HMFGetLogIdentifier();
      if (v29 > 5)
      {
        v35 = @"unknown";
      }

      else
      {
        v35 = off_1E754E378[v29];
      }

      v41 = v35;
      *buf = 138543618;
      v45 = v34;
      v46 = 2112;
      v47 = v41;
      _os_log_impl(&dword_19BB39000, v32, OS_LOG_TYPE_INFO, "%{public}@Not starting new download in state: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v30);
  }

  v42 = *MEMORY[0x1E69E9840];
}

- (void)startCaching
{
  v3 = [(HMSoftwareUpdateDocumentationAsset *)self state];
  if (v3 == 5)
  {
LABEL_4:
    [(HMSoftwareUpdateDocumentationAsset *)self setError:0];

    [(HMSoftwareUpdateDocumentationAsset *)self startDownload];
    return;
  }

  if (v3 != 2)
  {
    if (v3)
    {
      return;
    }

    goto LABEL_4;
  }

  [(HMSoftwareUpdateDocumentationAsset *)self startUnarchive];
}

- (BOOL)saveWithError:(id *)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [(HMSoftwareUpdateDocumentationAsset *)v6 URL];
    *buf = 138543618;
    v35 = v8;
    v36 = 2112;
    v37 = v9;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@creating directory at: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = [MEMORY[0x1E696AC08] defaultManager];
  v11 = [(HMSoftwareUpdateDocumentationAsset *)v6 URL];
  v33 = 0;
  v12 = [v10 createDirectoryAtURL:v11 withIntermediateDirectories:1 attributes:0 error:&v33];
  v13 = v33;

  if (v12)
  {
    v14 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:a3];
    if (v14)
    {
      v15 = [(HMSoftwareUpdateDocumentationAsset *)v6 metadataURL];
      v16 = 1;
      v17 = [v14 writeToURL:v15 atomically:1];

      if (v17)
      {
LABEL_18:

        goto LABEL_20;
      }

      v18 = objc_autoreleasePoolPush();
      v19 = v6;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        *buf = 138543362;
        v35 = v21;
        _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to archive asset metadata (write)", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v18);
      if (a3)
      {
        [MEMORY[0x1E696ABC0] hmErrorWithCode:52];
        *a3 = v16 = 0;
        goto LABEL_18;
      }
    }

    else
    {
      v27 = objc_autoreleasePoolPush();
      v28 = v6;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = HMFGetLogIdentifier();
        *buf = 138543362;
        v35 = v30;
        _os_log_impl(&dword_19BB39000, v29, OS_LOG_TYPE_ERROR, "%{public}@Failed to archive asset metadata (encode)", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v27);
    }

    v16 = 0;
    goto LABEL_18;
  }

  v22 = objc_autoreleasePoolPush();
  v23 = v6;
  v24 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v25 = HMFGetLogIdentifier();
    *buf = 138543618;
    v35 = v25;
    v36 = 2112;
    v37 = v13;
    _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_ERROR, "%{public}@Failed to create asset directory with error: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v22);
  if (a3)
  {
    v26 = v13;
    v16 = 0;
    *a3 = v13;
  }

  else
  {
    v16 = 0;
  }

LABEL_20:

  v31 = *MEMORY[0x1E69E9840];
  return v16;
}

- (HMSoftwareUpdateDocumentation)documentation
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v22 = 138543362;
    v23 = v6;
    _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Parsing documentation", &v22, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMSoftwareUpdateDocumentationAsset *)v4 state];
  v8 = objc_autoreleasePoolPush();
  if (v7 == 4)
  {
    v9 = MEMORY[0x1E696AAE8];
    v10 = [(HMSoftwareUpdateDocumentationAsset *)v4 bundleURL];
    v11 = [v9 bundleWithURL:v10];

    if (v11)
    {
      v12 = [[HMSoftwareUpdateDocumentation alloc] initWithBundle:v11];

      goto LABEL_13;
    }

    v16 = objc_autoreleasePoolPush();
    v17 = v4;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      v22 = 138543362;
      v23 = v19;
      _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_INFO, "%{public}@Failed to find documentation bundle", &v22, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
  }

  else
  {
    v13 = v4;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v22 = 138543362;
      v23 = v15;
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_INFO, "%{public}@Documentation not cached", &v22, 0xCu);
    }
  }

  v12 = 0;
LABEL_13:
  objc_autoreleasePoolPop(v8);
  v20 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)bundleURL
{
  v2 = [(HMSoftwareUpdateDocumentationAsset *)self URL];
  v3 = [v2 URLByAppendingPathComponent:@"Asset"];

  return v3;
}

- (id)archiveURL
{
  v2 = [(HMSoftwareUpdateDocumentationAsset *)self URL];
  v3 = [v2 URLByAppendingPathComponent:@"Asset.zip"];

  return v3;
}

- (id)metadataURL
{
  v2 = [(HMSoftwareUpdateDocumentationAsset *)self URL];
  v3 = [v2 URLByAppendingPathComponent:@"metadata.plist"];

  return v3;
}

- (NSURL)URL
{
  v3 = +[HMSoftwareUpdateDocumentationAsset assetDirectoryURL];
  v4 = [(HMSoftwareUpdateDocumentationAsset *)self identifier];
  v5 = [v4 UUIDString];
  v6 = [v3 URLByAppendingPathComponent:v5];

  return v6;
}

- (void)setError:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  error = self->_error;
  self->_error = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSError)error
{
  os_unfair_lock_lock_with_options();
  v3 = self->_error;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setState:(int64_t)a3
{
  os_unfair_lock_lock_with_options();
  if (self->_state == a3)
  {

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    self->_state = a3;
    os_unfair_lock_unlock(&self->_lock);
    v5 = [(HMSoftwareUpdateDocumentationAsset *)self delegate];
    [v5 didUpdateDocumentationAssetState:self];
    if (a3 <= 4 && ((1 << a3) & 0x15) != 0)
    {
      queue = self->_queue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __47__HMSoftwareUpdateDocumentationAsset_setState___block_invoke;
      block[3] = &unk_1E754E2A8;
      block[4] = self;
      dispatch_async(queue, block);
    }
  }
}

- (int64_t)state
{
  os_unfair_lock_lock_with_options();
  state = self->_state;
  os_unfair_lock_unlock(&self->_lock);
  return state;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      v7 = [(HMSoftwareUpdateDocumentationAsset *)self metadata];
      v8 = [(HMSoftwareUpdateDocumentationAsset *)v6 metadata];
      v9 = HMFEqualObjects();
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v2 = [(HMSoftwareUpdateDocumentationAsset *)self metadata];
  v3 = [v2 hash];

  return v3;
}

- (NSString)propertyDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(HMSoftwareUpdateDocumentationAsset *)self identifier];
  v5 = [v4 UUIDString];
  v6 = [(HMSoftwareUpdateDocumentationAsset *)self state];
  if (v6 > 5)
  {
    v7 = @"unknown";
  }

  else
  {
    v7 = off_1E754E378[v6];
  }

  v8 = v7;
  v9 = [(HMSoftwareUpdateDocumentationAsset *)self metadata];
  v10 = [v3 stringWithFormat:@", Identifier = %@, State = %@, Metadata = %@", v5, v8, v9];

  return v10;
}

- (NSString)shortDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [objc_opt_class() shortDescription];
  v5 = [(HMSoftwareUpdateDocumentationAsset *)self identifier];
  v6 = [v5 UUIDString];
  v7 = [v3 stringWithFormat:@"%@ %@", v4, v6];

  return v7;
}

- (HMSoftwareUpdateDocumentationAsset)initWithDocumentationMetadata:(id)a3 urlSession:(id)a4 extractor:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    v23 = _HMFPreconditionFailure();
    [(HMSoftwareUpdateDocumentationAsset *)v23 init];
  }

  v12 = v11;
  v25.receiver = self;
  v25.super_class = HMSoftwareUpdateDocumentationAsset;
  v13 = [(HMSoftwareUpdateDocumentationAsset *)&v25 init];
  if (v13)
  {
    v14 = [v9 metadataDigestUUID];
    identifier = v13->_identifier;
    v13->_identifier = v14;

    objc_storeStrong(&v13->_metadata, a3);
    v16 = HMDispatchQueueNameString(v13, 0);
    v17 = [v16 UTF8String];
    v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_queue_create(v17, v18);
    queue = v13->_queue;
    v13->_queue = v19;

    objc_storeStrong(&v13->_extractor, a5);
    objc_storeStrong(&v13->_URLSession, a4);
    URLSession = v13->_URLSession;
    if (URLSession)
    {
      [(HMSoftwareUpdateUrlSession *)URLSession setUrlSessionDelegate:v13];
    }
  }

  return v13;
}

- (HMSoftwareUpdateDocumentationAsset)init
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t57 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t57, &__block_literal_global_65602);
  }

  v3 = logCategory__hmf_once_v58;

  return v3;
}

uint64_t __49__HMSoftwareUpdateDocumentationAsset_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v58;
  logCategory__hmf_once_v58 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

+ (HMSoftwareUpdateDocumentationAsset)assetWithURL:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = MEMORY[0x1E695DEF0];
    v7 = [v4 URLByAppendingPathComponent:@"metadata.plist"];
    v8 = [v6 dataWithContentsOfURL:v7];

    if (v8)
    {
      v37 = 0;
      v9 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v8 error:&v37];
      v10 = v37;
      if (v9)
      {
        if ([v9 state] != 4)
        {
          goto LABEL_12;
        }

        v11 = [MEMORY[0x1E696AC08] defaultManager];
        v12 = [v9 bundleURL];
        v13 = [v12 path];
        v14 = [v11 fileExistsAtPath:v13];

        if (v14)
        {
          v15 = 4;
        }

        else
        {
LABEL_12:
          if ([v9 state] == 2 || objc_msgSend(v9, "state") == 4)
          {
            v21 = [MEMORY[0x1E696AC08] defaultManager];
            v22 = [v9 archiveURL];
            v23 = [v22 path];
            v24 = [v21 fileExistsAtPath:v23];

            if (v24)
            {
              v15 = 2;
            }

            else
            {
              v15 = 0;
            }
          }

          else
          {
            v15 = 0;
          }
        }

        if (v15 != [v9 state])
        {
          v29 = objc_autoreleasePoolPush();
          v30 = a1;
          v31 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v32 = HMFGetLogIdentifier();
            v33 = off_1E754E378[v15];
            *buf = 138543618;
            v39 = v32;
            v40 = 2112;
            v41 = v33;
            _os_log_impl(&dword_19BB39000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@Setting state to: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v29);
          [v9 setState:v15];
        }

        v34 = v9;
      }

      else
      {
        v25 = objc_autoreleasePoolPush();
        v26 = a1;
        v27 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = HMFGetLogIdentifier();
          *buf = 138543618;
          v39 = v28;
          v40 = 2112;
          v41 = v10;
          _os_log_impl(&dword_19BB39000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive software update documentation asset from serialized object data: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v25);
      }
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      v17 = a1;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        v20 = [v5 path];
        *buf = 138543618;
        v39 = v19;
        v40 = 2112;
        v41 = v20;
        _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to find metadata at path: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v35 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (NSURL)assetDirectoryURL
{
  v2 = HMCreateSoftwareUpdateCacheDirectory();
  v3 = HMSoftwareUpdateCacheDirectory();
  v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3];
  v5 = [v4 URLByAppendingPathComponent:@"SoftwareUpdateDocumentation"];

  return v5;
}

@end