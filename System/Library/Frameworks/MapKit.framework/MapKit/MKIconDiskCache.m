@interface MKIconDiskCache
@end

@implementation MKIconDiskCache

void __114___MKIconDiskCache_imageForStyleAttributes_size_scale_isCarplay_isTransit_isTransparent_isNightMode_drawingBlock___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 24) lock];
  v2 = [*(*(a1 + 32) + 32) containsObject:*(a1 + 40)];
  [*(*(a1 + 32) + 24) unlock];
  if (v2)
  {
    v3 = UIImagePNGRepresentation(*(a1 + 48));
    v4 = [MEMORY[0x1E696AC08] defaultManager];
    v5 = [*(*(a1 + 32) + 8) path];
    v6 = [v4 fileExistsAtPath:v5];

    if ((v6 & 1) == 0)
    {
      v7 = [MEMORY[0x1E696AC08] defaultManager];
      v8 = *(*(a1 + 32) + 8);
      v19 = 0;
      v9 = [v7 createDirectoryAtURL:v8 withIntermediateDirectories:1 attributes:0 error:&v19];
      v10 = v19;

      if ((v9 & 1) == 0)
      {
        v11 = GEOGetMKIconManagerLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v21 = v10;
          _os_log_impl(&dword_1A2EA0000, v11, OS_LOG_TYPE_ERROR, "Failed to create image cache directory: %@", buf, 0xCu);
        }
      }
    }

    v12 = *(a1 + 56);
    v18 = 0;
    v13 = [v3 writeToFile:v12 options:1 error:&v18];
    v14 = v18;
    if ((v13 & 1) == 0)
    {
      v15 = GEOGetMKIconManagerLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v21 = v14;
        _os_log_impl(&dword_1A2EA0000, v15, OS_LOG_TYPE_ERROR, "Error writing image %@", buf, 0xCu);
      }
    }

    v16 = GEOGetMKIconManagerLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = *(a1 + 56);
      *buf = 138412290;
      v21 = v17;
      _os_log_impl(&dword_1A2EA0000, v16, OS_LOG_TYPE_DEBUG, "Set image at %@", buf, 0xCu);
    }

    [*(*(a1 + 32) + 24) lock];
    [*(*(a1 + 32) + 32) removeObject:*(a1 + 40)];
    [*(*(a1 + 32) + 24) unlock];
  }
}

@end