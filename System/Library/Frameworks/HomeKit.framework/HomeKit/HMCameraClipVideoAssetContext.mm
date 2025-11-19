@interface HMCameraClipVideoAssetContext
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3;
- (HMCameraClipVideoAssetContext)initWithCoder:(id)a3;
- (HMCameraClipVideoAssetContext)initWithURL:(id)a3 expirationDate:(id)a4 requiredHTTPHeaders:(id)a5 videoSegments:(id)a6 hlsPlaylist:(id)a7;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMCameraClipVideoAssetContext

- (NSArray)attributeDescriptions
{
  v14[1] = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = HMCameraClipVideoAssetContext;
  v3 = [(HMCameraClipAssetContext *)&v13 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  v5 = MEMORY[0x1E696AD98];
  v6 = [(HMCameraClipVideoAssetContext *)self hlsPlaylist];
  v7 = [v5 numberWithUnsignedInteger:{objc_msgSend(v6, "length")}];
  v8 = [v4 initWithName:@"HLS Playlist Byte Count" value:v7];
  v14[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v10 = [v3 arrayByAddingObjectsFromArray:v9];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = HMCameraClipVideoAssetContext;
  v4 = a3;
  [(HMCameraClipAssetContext *)&v6 encodeWithCoder:v4];
  v5 = [(HMCameraClipVideoAssetContext *)self hlsPlaylist:v6.receiver];
  [v4 encodeObject:v5 forKey:@"HMCCV.hp"];
}

- (HMCameraClipVideoAssetContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [[HMCameraClipAssetContext alloc] initWithCoder:v4];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMCCV.hp"];

  if (v5)
  {
    v7 = [(HMCameraClipAssetContext *)v5 url];
    v8 = [(HMCameraClipAssetContext *)v5 expirationDate];
    v9 = [(HMCameraClipAssetContext *)v5 requiredHTTPHeaders];
    v10 = [(HMCameraClipAssetContext *)v5 videoSegments];
    self = [(HMCameraClipVideoAssetContext *)self initWithURL:v7 expirationDate:v8 requiredHTTPHeaders:v9 videoSegments:v10 hlsPlaylist:v6];

    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = HMCameraClipVideoAssetContext;
  v3 = [(HMCameraClipAssetContext *)&v7 hash];
  v4 = [(HMCameraClipVideoAssetContext *)self hlsPlaylist];
  v5 = [v4 hash];

  return v5 ^ v3;
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
    if (v6 && (v11.receiver = self, v11.super_class = HMCameraClipVideoAssetContext, [(HMCameraClipAssetContext *)&v11 isEqual:v6]))
    {
      v7 = [(HMCameraClipVideoAssetContext *)self hlsPlaylist];
      v8 = [(HMCameraClipVideoAssetContext *)v6 hlsPlaylist];
      v9 = [v7 isEqualToData:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (HMCameraClipVideoAssetContext)initWithURL:(id)a3 expirationDate:(id)a4 requiredHTTPHeaders:(id)a5 videoSegments:(id)a6 hlsPlaylist:(id)a7
{
  v12 = a7;
  v17.receiver = self;
  v17.super_class = HMCameraClipVideoAssetContext;
  v13 = [(HMCameraClipAssetContext *)&v17 initWithURL:a3 expirationDate:a4 requiredHTTPHeaders:a5 videoSegments:a6];
  if (v13)
  {
    v14 = [v12 copy];
    hlsPlaylist = v13->_hlsPlaylist;
    v13->_hlsPlaylist = v14;
  }

  return v13;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end