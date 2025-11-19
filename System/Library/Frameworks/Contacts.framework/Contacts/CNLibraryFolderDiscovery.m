@interface CNLibraryFolderDiscovery
+ (NSArray)localImageFolders;
+ (id)discoverFoldersWithPathComponents:(id)a3;
@end

@implementation CNLibraryFolderDiscovery

+ (NSArray)localImageFolders
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__CNLibraryFolderDiscovery_localImageFolders__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (localImageFolders_cn_once_token_0 != -1)
  {
    dispatch_once(&localImageFolders_cn_once_token_0, block);
  }

  v2 = localImageFolders_cn_once_object_0;

  return v2;
}

uint64_t __45__CNLibraryFolderDiscovery_localImageFolders__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) discoverFoldersWithPathComponents:&unk_1F09876C0];
  v2 = localImageFolders_cn_once_object_0;
  localImageFolders_cn_once_object_0 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

+ (id)discoverFoldersWithPathComponents:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = NSSearchPathForDirectoriesInDomains(NSAllLibrariesDirectory, 0xFFFFuLL, 1);
  v6 = [v5 _cn_distinctObjects];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__CNLibraryFolderDiscovery_discoverFoldersWithPathComponents___block_invoke;
  v11[3] = &unk_1E7417DA0;
  v7 = v3;
  v12 = v7;
  v8 = [v6 _cn_map:v11];
  v9 = [v8 _cn_filter:&__block_literal_global_164];

  objc_autoreleasePoolPop(v4);

  return v9;
}

id __62__CNLibraryFolderDiscovery_discoverFoldersWithPathComponents___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  v6 = v3;
  if (v5)
  {
    v7 = v5;
    v8 = *v14;
    v6 = v3;
    do
    {
      v9 = 0;
      v10 = v6;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v6 = [v10 stringByAppendingPathComponent:{*(*(&v13 + 1) + 8 * v9), v13}];

        ++v9;
        v10 = v6;
      }

      while (v7 != v9);
      v7 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [MEMORY[0x1E695DFF8] fileURLWithPath:v6 isDirectory:1];

  return v11;
}

uint64_t __62__CNLibraryFolderDiscovery_discoverFoldersWithPathComponents___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = 0;
  v2 = MEMORY[0x1E69966E8];
  v3 = a2;
  v4 = [v2 currentEnvironment];
  v5 = [v4 fileManager];
  v6 = [v5 fileExistsAtURL:v3 isDirectory:&v8];

  LODWORD(v3) = v8;
  return v6 & v3;
}

@end