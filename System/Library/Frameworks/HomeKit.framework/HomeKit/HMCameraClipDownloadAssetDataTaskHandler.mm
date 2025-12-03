@interface HMCameraClipDownloadAssetDataTaskHandler
- (void)resumeDataTaskWithRequest:(id)request completionHandler:(id)handler;
@end

@implementation HMCameraClipDownloadAssetDataTaskHandler

- (void)resumeDataTaskWithRequest:(id)request completionHandler:(id)handler
{
  v21 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  handlerCopy = handler;
  mEMORY[0x1E696AF78] = [MEMORY[0x1E696AF78] sharedSession];
  v9 = [mEMORY[0x1E696AF78] dataTaskWithRequest:requestCopy completionHandler:handlerCopy];

  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v15 = 138543874;
    v16 = v13;
    v17 = 2112;
    v18 = requestCopy;
    v19 = 2112;
    v20 = v9;
    _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@Resuming data task for URL request %@: %@", &v15, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  [v9 resume];

  v14 = *MEMORY[0x1E69E9840];
}

@end