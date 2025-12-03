@interface AVTStickerCamera
+ (id)cameraFromDictionary:(id)dictionary assetsPath:(id)path;
+ (id)stickerCameraCache;
- (AVTStickerCamera)initWithCameraNode:(id)node;
- (id)buildNode;
@end

@implementation AVTStickerCamera

+ (id)stickerCameraCache
{
  if (stickerCameraCache_onceToken != -1)
  {
    +[AVTStickerCamera stickerCameraCache];
  }

  v3 = stickerCameraCache_kCache;

  return v3;
}

uint64_t __38__AVTStickerCamera_stickerCameraCache__block_invoke()
{
  stickerCameraCache_kCache = objc_alloc_init(MEMORY[0x1E695DEE0]);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)cameraFromDictionary:(id)dictionary assetsPath:(id)path
{
  pathCopy = path;
  dictionaryCopy = dictionary;
  v8 = [dictionaryCopy objectForKey:@"scene"];
  v9 = [dictionaryCopy objectForKey:@"name"];

  v10 = [pathCopy stringByAppendingPathComponent:v8];

  v11 = [MEMORY[0x1E695DFF8] fileURLWithPath:v10 isDirectory:0];
  v12 = MEMORY[0x1E696AEC0];
  standardizedURL = [v11 standardizedURL];
  v14 = [v12 stringWithFormat:@"%@.%@", standardizedURL, v9];

  stickerCameraCache = [self stickerCameraCache];
  v16 = [stickerCameraCache objectForKey:v14];
  if (!v16)
  {
    v22 = 0;
    v17 = [MEMORY[0x1E69DF388] avt_nodeNamed:v9 forWorldAtURL:v11 options:0 error:&v22];
    v18 = v22;
    v19 = v18;
    if (!v17 || v18)
    {
      v20 = avt_default_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [(AVTStickerCamera *)v10 cameraFromDictionary:v19 assetsPath:v20];
      }

      v16 = 0;
    }

    else
    {
      v16 = [[AVTStickerCamera alloc] initWithCameraNode:v17];
      [stickerCameraCache setObject:v16 forKey:v14];
      v19 = v17;
    }
  }

  return v16;
}

- (AVTStickerCamera)initWithCameraNode:(id)node
{
  nodeCopy = node;
  v9.receiver = self;
  v9.super_class = AVTStickerCamera;
  v6 = [(AVTStickerCamera *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_node, node);
  }

  return v7;
}

- (id)buildNode
{
  node = [(AVTStickerCamera *)self node];
  clone = [node clone];

  [clone enumerateHierarchyUsingBlock:&__block_literal_global_35];

  return clone;
}

void __29__AVTStickerCamera_buildNode__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = [v2 camera];
  v3 = [v4 copy];
  [v2 setCamera:v3];
}

+ (void)cameraFromDictionary:(NSObject *)a3 assetsPath:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [a2 description];
  v7 = 138412546;
  v8 = a1;
  v9 = 2112;
  v10 = v5;
  _os_log_error_impl(&dword_1BB472000, a3, OS_LOG_TYPE_ERROR, "Error: could not load sticker camera scene at %@ with error: %@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

@end