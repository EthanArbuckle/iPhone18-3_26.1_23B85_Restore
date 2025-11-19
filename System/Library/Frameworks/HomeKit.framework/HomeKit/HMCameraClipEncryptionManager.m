@interface HMCameraClipEncryptionManager
- (HMCameraClipEncryptionManager)init;
- (HMCameraClipEncryptionManager)initWithKey:(id)a3;
- (id)encryptedDataContextFromData:(id)a3;
@end

@implementation HMCameraClipEncryptionManager

- (id)encryptedDataContextFromData:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF88] dataWithLength:{objc_msgSend(v4, "length")}];
  v6 = [MEMORY[0x1E695DF88] dataWithLength:16];
  v7 = [HMCameraClipCryptoUtilities secureRandomZeroingDataWithLength:16];
  if (v7)
  {
    v8 = [(HMCameraClipEncryptionManager *)self key];
    [v8 bytes];
    v29 = self;
    v9 = [(HMCameraClipEncryptionManager *)self key];
    [v9 length];
    [v7 bytes];
    [v7 length];
    [v4 bytes];
    v10 = [v4 length];
    v11 = [v5 mutableBytes];
    v27 = [v6 mutableBytes];
    v28 = [v6 length];
    v25 = v10;
    v26 = v11;
    v12 = CCCryptorGCMOneshotEncrypt();

    if (v12)
    {
      v13 = v6;
      v14 = objc_autoreleasePoolPush();
      v15 = v29;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138543874;
        v31 = v17;
        v32 = 2048;
        v33 = [v4 length];
        v34 = 1024;
        v35 = v12;
        _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to encrypt %lu bytes: %d", buf, 0x1Cu);
      }

      objc_autoreleasePoolPop(v14);
      v18 = 0;
      v6 = v13;
    }

    else
    {
      v18 = [[HMCameraClipEncryptedDataContext alloc] initWithInitializationVector:v7 ciphertext:v5 tag:v6, v25, v11, v27, v28];
    }
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v31 = v22;
      _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_INFO, "%{public}@Failed to generate initialization vector", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
    v18 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];

  return v18;
}

- (HMCameraClipEncryptionManager)initWithKey:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v6 = v5;
  if ([v5 length] != 32)
  {
LABEL_7:
    v10 = _HMFPreconditionFailure();
    return [(HMCameraClipEncryptionManager *)v10 init];
  }

  v12.receiver = self;
  v12.super_class = HMCameraClipEncryptionManager;
  v7 = [(HMCameraClipEncryptionManager *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_key, a3);
  }

  return v8;
}

- (HMCameraClipEncryptionManager)init
{
  v3 = [HMCameraClipCryptoUtilities secureRandomZeroingDataWithLength:32];
  v4 = [(HMCameraClipEncryptionManager *)self initWithKey:v3];

  return v4;
}

@end