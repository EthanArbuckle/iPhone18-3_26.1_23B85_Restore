@interface HMCameraClipAssetContext
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (HMCameraClipAssetContext)initWithCoder:(id)coder;
- (HMCameraClipAssetContext)initWithURL:(id)l expirationDate:(id)date requiredHTTPHeaders:(id)headers videoSegments:(id)segments;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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
  expirationDate = [(HMCameraClipAssetContext *)self expirationDate];
  v8 = [v6 initWithName:@"Expiration Date" value:expirationDate];
  v20[1] = v8;
  v9 = objc_alloc(MEMORY[0x1E69A29C8]);
  requiredHTTPHeaders = [(HMCameraClipAssetContext *)self requiredHTTPHeaders];
  v11 = [v9 initWithName:@"Required HTTP Headers" value:requiredHTTPHeaders];
  v20[2] = v11;
  v12 = objc_alloc(MEMORY[0x1E69A29C8]);
  v13 = MEMORY[0x1E696AD98];
  videoSegments = [(HMCameraClipAssetContext *)self videoSegments];
  v15 = [v13 numberWithUnsignedInteger:{objc_msgSend(videoSegments, "count")}];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(HMCameraClipAssetContext *)self url];
  [coderCopy encodeObject:v5 forKey:@"HMCCV.u"];

  expirationDate = [(HMCameraClipAssetContext *)self expirationDate];
  [coderCopy encodeObject:expirationDate forKey:@"HMCCV.ed"];

  requiredHTTPHeaders = [(HMCameraClipAssetContext *)self requiredHTTPHeaders];
  [coderCopy encodeObject:requiredHTTPHeaders forKey:@"HMCCV.rhh"];

  videoSegments = [(HMCameraClipAssetContext *)self videoSegments];
  [coderCopy encodeObject:videoSegments forKey:@"HMCCV.vs"];
}

- (HMCameraClipAssetContext)initWithCoder:(id)coder
{
  v32[3] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMCCV.u"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMCCV.ed"];
  v7 = MEMORY[0x1E695DFD8];
  v32[0] = objc_opt_class();
  v32[1] = objc_opt_class();
  v32[2] = objc_opt_class();
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:3];
  v9 = [v7 setWithArray:v8];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"HMCCV.rhh"];

  v11 = MEMORY[0x1E695DFD8];
  v12 = objc_opt_class();
  v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
  v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"HMCCV.vs"];

  if (v5 && v6 && v10 && v14)
  {
    selfCopy = [(HMCameraClipAssetContext *)self initWithURL:v5 expirationDate:v6 requiredHTTPHeaders:v10 videoSegments:v14];
    v16 = selfCopy;
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  expirationDate = [(HMCameraClipAssetContext *)self expirationDate];
  v6 = [expirationDate hash] ^ v4;

  requiredHTTPHeaders = [(HMCameraClipAssetContext *)self requiredHTTPHeaders];
  v8 = [requiredHTTPHeaders hash];

  videoSegments = [(HMCameraClipAssetContext *)self videoSegments];
  v10 = v8 ^ [videoSegments hash];

  return v6 ^ v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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
        expirationDate = [(HMCameraClipAssetContext *)self expirationDate];
        expirationDate2 = [(HMCameraClipAssetContext *)v6 expirationDate];
        if ([expirationDate isEqualToDate:expirationDate2])
        {
          requiredHTTPHeaders = [(HMCameraClipAssetContext *)self requiredHTTPHeaders];
          requiredHTTPHeaders2 = [(HMCameraClipAssetContext *)v6 requiredHTTPHeaders];
          if ([requiredHTTPHeaders isEqualToDictionary:requiredHTTPHeaders2])
          {
            videoSegments = [(HMCameraClipAssetContext *)self videoSegments];
            videoSegments2 = [(HMCameraClipAssetContext *)v6 videoSegments];
            v14 = [videoSegments isEqualToArray:videoSegments2];
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

- (HMCameraClipAssetContext)initWithURL:(id)l expirationDate:(id)date requiredHTTPHeaders:(id)headers videoSegments:(id)segments
{
  lCopy = l;
  dateCopy = date;
  headersCopy = headers;
  segmentsCopy = segments;
  v22.receiver = self;
  v22.super_class = HMCameraClipAssetContext;
  v15 = [(HMCameraClipAssetContext *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_url, l);
    objc_storeStrong(&v16->_expirationDate, date);
    v17 = [headersCopy copy];
    requiredHTTPHeaders = v16->_requiredHTTPHeaders;
    v16->_requiredHTTPHeaders = v17;

    v19 = [segmentsCopy copy];
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