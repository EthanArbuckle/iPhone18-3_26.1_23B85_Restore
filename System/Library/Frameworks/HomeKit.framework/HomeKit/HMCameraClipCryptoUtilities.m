@interface HMCameraClipCryptoUtilities
+ (id)secureRandomZeroingDataWithLength:(unint64_t)a3;
+ (id)zeroingDataFromData:(id)a3;
@end

@implementation HMCameraClipCryptoUtilities

+ (id)secureRandomZeroingDataWithLength:(unint64_t)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = NSRandomData();
  v6 = 0;
  if (!v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = a1;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543874;
      v14 = v10;
      v15 = 2048;
      v16 = a3;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_ERROR, "%{public}@Could not generate random data of length %lu: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)zeroingDataFromData:(id)a3
{
  v3 = MEMORY[0x1E695DEF0];
  v4 = a3;
  v5 = [v4 bytes];
  v6 = [v4 length];

  v7 = [v3 _newZeroingDataWithBytes:v5 length:v6];

  return v7;
}

@end