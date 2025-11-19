@interface HMCameraClipAssetContext
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3;
- (HMCameraClipAssetContext)initWithCoder:(id)a3;
- (HMCameraClipAssetContext)initWithURL:(id)a3 expirationDate:(id)a4 requiredHTTPHeaders:(id)a5 videoSegments:(id)a6;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMCameraClipAssetContext

- (NSArray)attributeDescriptions
{
  v20[4] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  v4 = [(HMCameraClipAssetContext *)self url];
  v5 = [v3 initWithName:@"URL" value:v4];
  v20[0] = v5;
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  v7 = [(HMCameraClipAssetContext *)self expirationDate];
  v8 = [v6 initWithName:@"Expiration Date" value:v7];
  v20[1] = v8;
  v9 = objc_alloc(MEMORY[0x1E69A29C8]);
  v10 = [(HMCameraClipAssetContext *)self requiredHTTPHeaders];
  v11 = [v9 initWithName:@"Required HTTP Headers" value:v10];
  v20[2] = v11;
  v12 = objc_alloc(MEMORY[0x1E69A29C8]);
  v13 = MEMORY[0x1E696AD98];
  v14 = [(HMCameraClipAssetContext *)self videoSegments];
  v15 = [v13 numberWithUnsignedInteger:{objc_msgSend(v14, "count")}];
  v16 = [v12 initWithName:@"Video Segments Count" value:v15];
  v20[3] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:4];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMCameraClipAssetContext *)self url];
  [v4 encodeObject:v5 forKey:@"HMCCV.u"];

  v6 = [(HMCameraClipAssetContext *)self expirationDate];
  [v4 encodeObject:v6 forKey:@"HMCCV.ed"];

  v7 = [(HMCameraClipAssetContext *)self requiredHTTPHeaders];
  [v4 encodeObject:v7 forKey:@"HMCCV.rhh"];

  v8 = [(HMCameraClipAssetContext *)self videoSegments];
  [v4 encodeObject:v8 forKey:@"HMCCV.vs"];
}

- (HMCameraClipAssetContext)initWithCoder:(id)a3
{
  v32[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMCCV.u"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMCCV.ed"];
  v7 = MEMORY[0x1E695DFD8];
  v32[0] = objc_opt_class();
  v32[1] = objc_opt_class();
  v32[2] = objc_opt_class();
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:3];
  v9 = [v7 setWithArray:v8];
  v10 = [v4 decodeObjectOfClasses:v9 forKey:@"HMCCV.rhh"];

  v11 = MEMORY[0x1E695DFD8];
  v12 = objc_opt_class();
  v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
  v14 = [v4 decodeObjectOfClasses:v13 forKey:@"HMCCV.vs"];

  if (v5 && v6 && v10 && v14)
  {
    v15 = [(HMCameraClipAssetContext *)self initWithURL:v5 expirationDate:v6 requiredHTTPHeaders:v10 videoSegments:v14];
    v16 = v15;
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v15 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138544386;
      v23 = v19;
      v24 = 2112;
      v25 = v5;
      v26 = 2112;
      v27 = v6;
      v28 = 2112;
      v29 = v10;
      v30 = 2112;
      v31 = v14;
      _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize from decoded url: %@ expirationDate: %@ requiredHTTPHeaders: %@ videoSegments: %@", buf, 0x34u);
    }

    objc_autoreleasePoolPop(v17);
    v16 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v16;
}

- (unint64_t)hash
{
  v3 = [(HMCameraClipAssetContext *)self url];
  v4 = [v3 hash];

  v5 = [(HMCameraClipAssetContext *)self expirationDate];
  v6 = [v5 hash] ^ v4;

  v7 = [(HMCameraClipAssetContext *)self requiredHTTPHeaders];
  v8 = [v7 hash];

  v9 = [(HMCameraClipAssetContext *)self videoSegments];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v14 = 1;
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
      v7 = [(HMCameraClipAssetContext *)self url];
      v8 = [(HMCameraClipAssetContext *)v6 url];
      if ([v7 isEqual:v8])
      {
        v9 = [(HMCameraClipAssetContext *)self expirationDate];
        v10 = [(HMCameraClipAssetContext *)v6 expirationDate];
        if ([v9 isEqualToDate:v10])
        {
          v11 = [(HMCameraClipAssetContext *)self requiredHTTPHeaders];
          v12 = [(HMCameraClipAssetContext *)v6 requiredHTTPHeaders];
          if ([v11 isEqualToDictionary:v12])
          {
            v16 = [(HMCameraClipAssetContext *)self videoSegments];
            v13 = [(HMCameraClipAssetContext *)v6 videoSegments];
            v14 = [v16 isEqualToArray:v13];
          }

          else
          {
            v14 = 0;
          }
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (HMCameraClipAssetContext)initWithURL:(id)a3 expirationDate:(id)a4 requiredHTTPHeaders:(id)a5 videoSegments:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v22.receiver = self;
  v22.super_class = HMCameraClipAssetContext;
  v15 = [(HMCameraClipAssetContext *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_url, a3);
    objc_storeStrong(&v16->_expirationDate, a4);
    v17 = [v13 copy];
    requiredHTTPHeaders = v16->_requiredHTTPHeaders;
    v16->_requiredHTTPHeaders = v17;

    v19 = [v14 copy];
    videoSegments = v16->_videoSegments;
    v16->_videoSegments = v19;
  }

  return v16;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end