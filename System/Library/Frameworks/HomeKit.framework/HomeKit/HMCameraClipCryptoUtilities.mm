@interface HMCameraClipCryptoUtilities
+ (id)secureRandomZeroingDataWithLength:(unint64_t)length;
+ (id)zeroingDataFromData:(id)data;
@end

@implementation HMCameraClipCryptoUtilities

+ (id)secureRandomZeroingDataWithLength:(unint64_t)length
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = NSRandomData();
  v6 = 0;
  if (!v5)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543874;
      v14 = v10;
      v15 = 2048;
      lengthCopy = length;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_ERROR, "%{public}@Could not generate random data of length %lu: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)zeroingDataFromData:(id)data
{
  v3 = MEMORY[0x1E695DEF0];
  dataCopy = data;
  bytes = [dataCopy bytes];
  v6 = [dataCopy length];

  v7 = [v3 _newZeroingDataWithBytes:bytes length:v6];

  return v7;
}

@end