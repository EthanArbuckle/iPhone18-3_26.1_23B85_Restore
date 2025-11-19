@interface SZExtractor(HMFDigest)
+ (id)optionsForArchiveURL:()HMFDigest digest:;
@end

@implementation SZExtractor(HMFDigest)

+ (id)optionsForArchiveURL:()HMFDigest digest:
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v7 algorithm] - 2;
  if (v8 < 7 && ((0x79u >> v8) & 1) != 0)
  {
    v9 = **(&unk_1E754E340 + v8);
    v10 = [MEMORY[0x1E696AC08] defaultManager];
    v11 = [v6 path];
    v32 = 0;
    v12 = [v10 attributesOfItemAtPath:v11 error:&v32];
    v13 = v32;

    if (v12)
    {
      v14 = *MEMORY[0x1E69D4DF0];
      v35[0] = v9;
      v15 = *MEMORY[0x1E69D4E00];
      v34[0] = v14;
      v34[1] = v15;
      v16 = [v7 value];
      v17 = [v16 hmf_hexadecimalRepresentation];
      v33 = v17;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
      v35[1] = v18;
      v34[2] = *MEMORY[0x1E69D4DF8];
      v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v12, "fileSize")}];
      v34[3] = *MEMORY[0x1E69D4DE8];
      v35[2] = v19;
      v35[3] = MEMORY[0x1E695E118];
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:4];
    }

    else
    {
      v26 = objc_autoreleasePoolPush();
      v27 = a1;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        *buf = 138543618;
        v37 = v29;
        v38 = 2112;
        v39 = v13;
        _os_log_impl(&dword_19BB39000, v28, OS_LOG_TYPE_ERROR, "%{public}@Unable to get file size with error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v26);
      v20 = 0;
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = a1;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      [v7 algorithm];
      v25 = HMFDigestAlgorithmToString();
      *buf = 138543618;
      v37 = v24;
      v38 = 2112;
      v39 = v25;
      _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_INFO, "%{public}@Invalid digest algorithm: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    v20 = 0;
  }

  v30 = *MEMORY[0x1E69E9840];

  return v20;
}

@end