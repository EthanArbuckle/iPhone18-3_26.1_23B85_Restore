@interface HMCameraClipVideoHLSPlaylistGenerator
+ (id)_hlsPlaylistEncryptionMethodNameForScheme:(unint64_t)a3;
- (HMCameraClipVideoHLSPlaylistGenerator)initWithClip:(id)a3 url:(id)a4;
- (NSData)hlsPlaylist;
- (void)addSegment:(id)a3;
- (void)addSegments:(id)a3;
- (void)finish;
@end

@implementation HMCameraClipVideoHLSPlaylistGenerator

- (void)finish
{
  v2 = [(HMCameraClipVideoHLSPlaylistGenerator *)self hlsPlaylistString];
  [v2 appendString:@"#EXT-X-ENDLIST\n"];
}

- (void)addSegments:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(HMCameraClipVideoHLSPlaylistGenerator *)self addSegment:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)addSegment:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
    v7 = [(HMCameraClipVideoHLSPlaylistGenerator *)self hlsPlaylistString];
    v8 = [(HMCameraClipVideoHLSPlaylistGenerator *)self url];
    v9 = [v8 absoluteString];
    [v7 appendFormat:@"#EXT-X-MAP:URI=%@, ", v9];

    v10 = [(HMCameraClipVideoHLSPlaylistGenerator *)self hlsPlaylistString];
    [v10 appendFormat:@"BYTERANGE=%llu@%llu\n", objc_msgSend(v6, "byteLength"), objc_msgSend(v6, "byteOffset")];
  }

  else
  {
    v11 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v10 = v12;

    if (v10)
    {
      v13 = [(HMCameraClipVideoHLSPlaylistGenerator *)self hlsPlaylistString];
      [v10 duration];
      [v13 appendFormat:@"#EXTINF:%.6f, \n", v14];

      v15 = [(HMCameraClipVideoHLSPlaylistGenerator *)self hlsPlaylistString];
      [v15 appendFormat:@"#EXT-X-BYTERANGE:%llu@%llu\n", objc_msgSend(v10, "byteLength"), objc_msgSend(v10, "byteOffset")];

      v16 = [(HMCameraClipVideoHLSPlaylistGenerator *)self hlsPlaylistString];
      v17 = [(HMCameraClipVideoHLSPlaylistGenerator *)self url];
      v18 = [v17 absoluteString];
      [v16 appendFormat:@"%@\n", v18];
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      v20 = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543874;
        v25 = v22;
        v26 = 2112;
        v27 = v11;
        v28 = 2112;
        v29 = objc_opt_class();
        _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_ERROR, "%{public}@Unknown segment type: %@ (%@)", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v19);
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (NSData)hlsPlaylist
{
  v2 = [(HMCameraClipVideoHLSPlaylistGenerator *)self hlsPlaylistString];
  v3 = [v2 dataUsingEncoding:4];

  return v3;
}

- (HMCameraClipVideoHLSPlaylistGenerator)initWithClip:(id)a3 url:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v28.receiver = self;
  v28.super_class = HMCameraClipVideoHLSPlaylistGenerator;
  v8 = [(HMCameraClipVideoHLSPlaylistGenerator *)&v28 init];
  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = [MEMORY[0x1E696AD60] string];
  hlsPlaylistString = v8->_hlsPlaylistString;
  v8->_hlsPlaylistString = v9;

  objc_storeStrong(&v8->_url, a4);
  [(NSMutableString *)v8->_hlsPlaylistString appendString:@"#EXTM3U\n"];
  [(NSMutableString *)v8->_hlsPlaylistString appendFormat:@"#EXT-X-VERSION:%u\n", 7];
  v11 = v8->_hlsPlaylistString;
  [v6 targetFragmentDuration];
  [(NSMutableString *)v11 appendFormat:@"#EXT-X-TARGETDURATION:%u\n", v12];
  v13 = v8->_hlsPlaylistString;
  v14 = [v6 isComplete];
  v15 = @"EVENT";
  if (v14)
  {
    v15 = @"VOD";
  }

  [(NSMutableString *)v13 appendFormat:@"#EXT-X-PLAYLIST-TYPE:%@\n", v15];
  [(NSMutableString *)v8->_hlsPlaylistString appendString:@"#EXT-X-INDEPENDENT-SEGMENTS\n"];
  v16 = objc_opt_class();
  v17 = [v6 encryptionContext];
  v18 = [v16 _hlsPlaylistEncryptionMethodNameForScheme:{objc_msgSend(v17, "scheme")}];

  if (v18)
  {
    [(NSMutableString *)v8->_hlsPlaylistString appendFormat:@"#EXT-X-KEY:METHOD=%@", v18];
    [(NSMutableString *)v8->_hlsPlaylistString appendFormat:@", URI=%@\n", @"HMCC://encryptionKey"];

LABEL_6:
    v19 = v8;
    goto LABEL_10;
  }

  v20 = objc_autoreleasePoolPush();
  v21 = v8;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v23 = HMFGetLogIdentifier();
    v24 = [v6 encryptionContext];
    v25 = [v24 scheme];
    *buf = 138543618;
    v30 = v23;
    v31 = 2048;
    v32 = v25;
    _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_ERROR, "%{public}@Could not determine HLS playlist encryption method name for scheme: %lu", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v20);
  v19 = 0;
LABEL_10:

  v26 = *MEMORY[0x1E69E9840];
  return v19;
}

+ (id)_hlsPlaylistEncryptionMethodNameForScheme:(unint64_t)a3
{
  if (a3 == 1)
  {
    return @"AES-256-GCM";
  }

  else
  {
    return 0;
  }
}

@end