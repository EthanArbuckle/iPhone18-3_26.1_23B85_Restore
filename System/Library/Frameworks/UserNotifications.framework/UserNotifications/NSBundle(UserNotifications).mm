@interface NSBundle(UserNotifications)
+ (id)userNotificationsBundleWithIdentifier:()UserNotifications;
@end

@implementation NSBundle(UserNotifications)

+ (id)userNotificationsBundleWithIdentifier:()UserNotifications
{
  v38[3] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 8uLL, 1);
    v7 = 0x1E695D000uLL;
    if (UNIsInternalInstall())
    {
      v8 = MEMORY[0x1E696AEC0];
      v9 = BSSystemRootDirectory();
      v38[0] = v9;
      v38[1] = @"AppleInternal";
      v38[2] = @"Library";
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:3];
      v11 = [v8 pathWithComponents:v10];
      v12 = [v6 arrayByAddingObject:v11];

      v6 = v12;
    }

    v13 = [MEMORY[0x1E696AC08] defaultManager];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = v6;
    v14 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v33;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v33 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v32 + 1) + 8 * i);
          v19 = MEMORY[0x1E695DFF8];
          v20 = BSSystemRootDirectory();
          v36[0] = v20;
          v36[1] = v18;
          v36[2] = @"UserNotifications";
          v36[3] = @"Bundles";
          v21 = [v5 stringByAppendingPathExtension:@"bundle"];
          v36[4] = v21;
          v22 = v7;
          v23 = [*(v7 + 3784) arrayWithObjects:v36 count:5];
          v24 = [v19 fileURLWithPathComponents:v23];

          v31 = 0;
          v25 = [v24 path];
          LODWORD(v21) = [v13 fileExistsAtPath:v25 isDirectory:&v31];
          v26 = v31;

          if (v21 && (v26 & 1) != 0)
          {
            v27 = [MEMORY[0x1E696AAE8] bundleWithURL:v24];

            goto LABEL_15;
          }

          v7 = v22;
        }

        v15 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v27 = 0;
LABEL_15:
  }

  else
  {
    [(NSBundle(UserNotifications) *)a2 userNotificationsBundleWithIdentifier:a1];
    v27 = 0;
  }

  v28 = *MEMORY[0x1E69E9840];

  return v27;
}

+ (void)userNotificationsBundleWithIdentifier:()UserNotifications .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"NSBundle+UserNotifications.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"identifier != nil"}];
}

@end