@interface HMCameraClipDecryptionManager
- (HMCameraClipDecryptionManager)initWithKey:(id)a3;
- (id)dataFromEncryptedDataContext:(id)a3;
@end

@implementation HMCameraClipDecryptionManager

- (id)dataFromEncryptedDataContext:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E695DF88];
  v6 = [v4 ciphertext];
  v7 = [v5 dataWithLength:{objc_msgSend(v6, "length")}];

  v33 = [(HMCameraClipDecryptionManager *)self key];
  [v33 bytes];
  v31 = self;
  v32 = [(HMCameraClipDecryptionManager *)self key];
  [v32 length];
  v8 = [v4 initializationVector];
  [v8 bytes];
  v9 = [v4 initializationVector];
  [v9 length];
  v10 = [v4 ciphertext];
  [v10 bytes];
  v11 = [v4 ciphertext];
  v12 = [v11 length];
  v34 = v7;
  v13 = [v7 mutableBytes];
  v14 = [v4 tag];
  v15 = [v14 bytes];
  v16 = [v4 tag];
  v29 = v15;
  v30 = [v16 length];
  v27 = v12;
  v28 = v13;
  v17 = CCCryptorGCMOneshotDecrypt();

  if (v17)
  {
    v18 = v34;
    v19 = objc_autoreleasePoolPush();
    v20 = v31;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      v23 = [v4 ciphertext];
      *buf = 138543874;
      v36 = v22;
      v37 = 2048;
      v38 = [v23 length];
      v39 = 1024;
      v40 = v17;
      _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to decrypt %lu bytes: %d", buf, 0x1Cu);
    }

    objc_autoreleasePoolPop(v19);
    v24 = 0;
  }

  else
  {
    v18 = v34;
    v24 = [v34 copy];
  }

  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

- (HMCameraClipDecryptionManager)initWithKey:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    v12.receiver = self;
    v12.super_class = HMCameraClipDecryptionManager;
    v6 = [(HMCameraClipDecryptionManager *)&v12 init];
    if (v6)
    {
      v7 = [HMCameraClipCryptoUtilities zeroingDataFromData:v5];
      key = v6->_key;
      v6->_key = v7;
    }

    return v6;
  }

  else
  {
    v10 = _HMFPreconditionFailure();
    [(HMObjectMergeCollection *)v10 .cxx_destruct];
  }

  return result;
}

@end