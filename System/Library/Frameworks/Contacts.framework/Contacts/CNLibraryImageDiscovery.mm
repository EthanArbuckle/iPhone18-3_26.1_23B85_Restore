@interface CNLibraryImageDiscovery
+ (id)extensions;
+ (id)imageDataForEmailAddresses:(id)addresses;
@end

@implementation CNLibraryImageDiscovery

+ (id)imageDataForEmailAddresses:(id)addresses
{
  v52 = *MEMORY[0x1E69E9840];
  addressesCopy = addresses;
  [CNLibraryFolderDiscovery discoverFoldersWithPathComponents:&unk_1F0987678];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v5 = v48 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v45 objects:v51 count:16];
  if (v6)
  {
    v7 = *v46;
    v34 = v5;
    v35 = addressesCopy;
    v28 = *v46;
    selfCopy = self;
    do
    {
      v8 = 0;
      v27 = v6;
      do
      {
        if (*v46 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v31 = v8;
        v9 = *(*(&v45 + 1) + 8 * v8);
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v10 = addressesCopy;
        v32 = [v10 countByEnumeratingWithState:&v41 objects:v50 count:16];
        if (v32)
        {
          v11 = *v42;
          v36 = v10;
          v30 = *v42;
          do
          {
            v12 = 0;
            do
            {
              if (*v42 != v11)
              {
                objc_enumerationMutation(v10);
              }

              v33 = v12;
              v13 = *(*(&v41 + 1) + 8 * v12);
              v37 = 0u;
              v38 = 0u;
              v39 = 0u;
              v40 = 0u;
              extensions = [self extensions];
              v15 = [extensions countByEnumeratingWithState:&v37 objects:v49 count:16];
              if (v15)
              {
                v16 = v15;
                v17 = *v38;
                while (2)
                {
                  for (i = 0; i != v16; ++i)
                  {
                    if (*v38 != v17)
                    {
                      objc_enumerationMutation(extensions);
                    }

                    v19 = *(*(&v37 + 1) + 8 * i);
                    v20 = [v9 URLByAppendingPathComponent:v13];
                    v21 = [v20 URLByAppendingPathExtension:v19];

                    if (v21)
                    {
                      currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
                      fileManager = [currentEnvironment fileManager];
                      v24 = [fileManager dataWithContentsOfURL:v21];

                      if ([v24 isSuccess])
                      {
                        value = [v24 value];

                        v5 = v34;
                        addressesCopy = v35;
                        goto LABEL_28;
                      }
                    }
                  }

                  v16 = [extensions countByEnumeratingWithState:&v37 objects:v49 count:16];
                  if (v16)
                  {
                    continue;
                  }

                  break;
                }
              }

              v12 = v33 + 1;
              v5 = v34;
              addressesCopy = v35;
              self = selfCopy;
              v11 = v30;
              v10 = v36;
            }

            while (v33 + 1 != v32);
            v32 = [v36 countByEnumeratingWithState:&v41 objects:v50 count:16];
          }

          while (v32);
        }

        v8 = v31 + 1;
        v7 = v28;
      }

      while (v31 + 1 != v27);
      v6 = [v5 countByEnumeratingWithState:&v45 objects:v51 count:16];
      v7 = v28;
      value = 0;
    }

    while (v6);
  }

  else
  {
    value = 0;
  }

LABEL_28:

  return value;
}

+ (id)extensions
{
  if (extensions_cn_once_token_0 != -1)
  {
    +[CNLibraryImageDiscovery extensions];
  }

  v3 = extensions_cn_once_object_0;

  return v3;
}

uint64_t __37__CNLibraryImageDiscovery_extensions__block_invoke()
{
  v0 = [&unk_1F0987690 copy];
  v1 = extensions_cn_once_object_0;
  extensions_cn_once_object_0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end