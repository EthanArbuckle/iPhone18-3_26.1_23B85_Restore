@interface CNUserSetupPictureManager
+ (BOOL)clearUserSetupPictureData;
+ (BOOL)hasUserSetupPictureData;
+ (BOOL)userSetupPictureDataIsFresh;
+ (id)log;
+ (id)userSetupPictureData;
+ (id)userSetupPictureFilePath;
+ (id)userSetupPicturePath;
@end

@implementation CNUserSetupPictureManager

+ (id)log
{
  if (log_cn_once_token_0_14 != -1)
  {
    +[CNUserSetupPictureManager log];
  }

  v3 = log_cn_once_object_0_14;

  return v3;
}

uint64_t __32__CNUserSetupPictureManager_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "CNUserSetupPictureData");
  v1 = log_cn_once_object_0_14;
  log_cn_once_object_0_14 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)userSetupPictureData
{
  if (![self hasUserSetupPictureData])
  {
LABEL_10:
    v9 = 0;
    goto LABEL_15;
  }

  if (([self userSetupPictureDataIsFresh] & 1) == 0)
  {
    v10 = [objc_opt_class() log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1954A0000, v10, OS_LOG_TYPE_DEFAULT, "Setup user picture data is outdated. Removing.", buf, 2u);
    }

    [self clearUserSetupPictureData];
    goto LABEL_10;
  }

  v3 = MEMORY[0x1E695DEF0];
  userSetupPictureFilePath = [self userSetupPictureFilePath];
  v19 = 0;
  v5 = [v3 dataWithContentsOfFile:userSetupPictureFilePath options:0 error:&v19];
  v6 = v19;

  v7 = [objc_opt_class() log];
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_1954A0000, v8, OS_LOG_TYPE_DEFAULT, "Did read setup user picture data from disk", v18, 2u);
    }

    v9 = [CNUserSetupPictureData userSetupPictureDataFromData:v5];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(CNUserSetupPictureManager *)v6 userSetupPictureData:v8];
    }

    [self clearUserSetupPictureData];
    v9 = 0;
  }

LABEL_15:

  return v9;
}

+ (BOOL)hasUserSetupPictureData
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  userSetupPictureFilePath = [self userSetupPictureFilePath];
  v5 = [defaultManager fileExistsAtPath:userSetupPictureFilePath];

  return v5;
}

+ (id)userSetupPictureFilePath
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__CNUserSetupPictureManager_userSetupPictureFilePath__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (userSetupPictureFilePath_cn_once_token_4 != -1)
  {
    dispatch_once(&userSetupPictureFilePath_cn_once_token_4, block);
  }

  v2 = userSetupPictureFilePath_cn_once_object_4;

  return v2;
}

void __53__CNUserSetupPictureManager_userSetupPictureFilePath__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) userSetupPicturePath];
  v1 = [v3 stringByAppendingPathComponent:@"SetupUserPictureData"];
  v2 = userSetupPictureFilePath_cn_once_object_4;
  userSetupPictureFilePath_cn_once_object_4 = v1;
}

+ (id)userSetupPicturePath
{
  if (userSetupPicturePath_cn_once_token_5 != -1)
  {
    +[CNUserSetupPictureManager userSetupPicturePath];
  }

  v3 = userSetupPicturePath_cn_once_object_5;

  return v3;
}

void __49__CNUserSetupPictureManager_userSetupPicturePath__block_invoke()
{
  v2 = NSHomeDirectory();
  v0 = [v2 stringByAppendingPathComponent:@"/Library/Application Support/AddressBook/.UserSetupDrafts/"];
  v1 = userSetupPicturePath_cn_once_object_5;
  userSetupPicturePath_cn_once_object_5 = v0;
}

+ (BOOL)userSetupPictureDataIsFresh
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  userSetupPictureFilePath = [self userSetupPictureFilePath];
  v18 = 0;
  v5 = [defaultManager attributesOfItemAtPath:userSetupPictureFilePath error:&v18];
  v6 = v18;

  if (!v5)
  {
    fileCreationDate = [objc_opt_class() log];
    if (os_log_type_enabled(fileCreationDate, OS_LOG_TYPE_ERROR))
    {
      [(CNUserSetupPictureManager *)v6 userSetupPictureDataIsFresh:fileCreationDate];
    }

    goto LABEL_6;
  }

  fileCreationDate = [v5 fileCreationDate];
  if (!fileCreationDate)
  {
LABEL_6:
    v10 = 1;
    goto LABEL_7;
  }

  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSinceDate:fileCreationDate];
  v10 = v9 < 604800.0;

LABEL_7:
  return v10;
}

+ (BOOL)clearUserSetupPictureData
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  userSetupPicturePath = [self userSetupPicturePath];
  v15 = 0;
  v5 = [defaultManager removeItemAtPath:userSetupPicturePath error:&v15];
  v6 = v15;

  if (v6)
  {
    v7 = [objc_opt_class() log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(CNUserSetupPictureManager *)v6 clearUserSetupPictureData:v7];
    }
  }

  return v5;
}

@end