@interface HMCameraClipVideoAssetContext
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (HMCameraClipVideoAssetContext)initWithCoder:(id)coder;
- (HMCameraClipVideoAssetContext)initWithURL:(id)l expirationDate:(id)date requiredHTTPHeaders:(id)headers videoSegments:(id)segments hlsPlaylist:(id)playlist;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMCameraClipVideoAssetContext

- (NSArray)attributeDescriptions
{
  v14[1] = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = HMCameraClipVideoAssetContext;
  attributeDescriptions = [(HMCameraClipAssetContext *)&v13 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  v5 = MEMORY[0x1E696AD98];
  hlsPlaylist = [(HMCameraClipVideoAssetContext *)self hlsPlaylist];
  v7 = [v5 numberWithUnsignedInteger:{objc_msgSend(hlsPlaylist, "length")}];
  v8 = [v4 initWithName:@"HLS Playlist Byte Count" value:v7];
  v14[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v10 = [attributeDescriptions arrayByAddingObjectsFromArray:v9];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = HMCameraClipVideoAssetContext;
  coderCopy = coder;
  [(HMCameraClipAssetContext *)&v6 encodeWithCoder:coderCopy];
  v5 = [(HMCameraClipVideoAssetContext *)self hlsPlaylist:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"HMCCV.hp"];
}

- (HMCameraClipVideoAssetContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [[HMCameraClipAssetContext alloc] initWithCoder:coderCopy];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMCCV.hp"];

  if (v5)
  {
    v7 = [(HMCameraClipAssetContext *)v5 url];
    expirationDate = [(HMCameraClipAssetContext *)v5 expirationDate];
    requiredHTTPHeaders = [(HMCameraClipAssetContext *)v5 requiredHTTPHeaders];
    videoSegments = [(HMCameraClipAssetContext *)v5 videoSegments];
    self = [(HMCameraClipVideoAssetContext *)self initWithURL:v7 expirationDate:expirationDate requiredHTTPHeaders:requiredHTTPHeaders videoSegments:videoSegments hlsPlaylist:v6];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = HMCameraClipVideoAssetContext;
  v3 = [(HMCameraClipAssetContext *)&v7 hash];
  hlsPlaylist = [(HMCameraClipVideoAssetContext *)self hlsPlaylist];
  v5 = [hlsPlaylist hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
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
    if (v6 && (v11.receiver = self, v11.super_class = HMCameraClipVideoAssetContext, [(HMCameraClipAssetContext *)&v11 isEqual:v6]))
    {
      hlsPlaylist = [(HMCameraClipVideoAssetContext *)self hlsPlaylist];
      hlsPlaylist2 = [(HMCameraClipVideoAssetContext *)v6 hlsPlaylist];
      v9 = [hlsPlaylist isEqualToData:hlsPlaylist2];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (HMCameraClipVideoAssetContext)initWithURL:(id)l expirationDate:(id)date requiredHTTPHeaders:(id)headers videoSegments:(id)segments hlsPlaylist:(id)playlist
{
  playlistCopy = playlist;
  v17.receiver = self;
  v17.super_class = HMCameraClipVideoAssetContext;
  v13 = [(HMCameraClipAssetContext *)&v17 initWithURL:l expirationDate:date requiredHTTPHeaders:headers videoSegments:segments];
  if (v13)
  {
    v14 = [playlistCopy copy];
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