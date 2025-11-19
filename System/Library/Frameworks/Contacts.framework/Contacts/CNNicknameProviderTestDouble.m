@interface CNNicknameProviderTestDouble
- (CNNicknameProviderTestDouble)initWithFilePathsForContacts:(id)a3;
- (id)avatarImageFileURLForNickname:(id)a3;
- (id)nicknameForContact:(id)a3;
- (id)sharedWallpaperForNickname:(id)a3;
- (id)sharedWatchWallpaperImageDataForNickname:(id)a3;
- (id)wallpaperFileURLForNickname:(id)a3;
- (id)watchWallpaperImageDataFileURLForNickname:(id)a3;
- (void)addFilePath:(id)a3 forContact:(id)a4;
- (void)fetchPersonalNicknameAsContactWithCompletion:(id)a3;
@end

@implementation CNNicknameProviderTestDouble

- (CNNicknameProviderTestDouble)initWithFilePathsForContacts:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CNNicknameProviderTestDouble;
  v5 = [(CNNicknameProviderTestDouble *)&v12 init];
  if (v5)
  {
    v6 = [v4 mutableCopy];
    filePathsForContacts = v5->_filePathsForContacts;
    v5->_filePathsForContacts = v6;

    v8 = [MEMORY[0x1E695DF90] dictionary];
    contactForNickname = v5->_contactForNickname;
    v5->_contactForNickname = v8;

    v10 = v5;
  }

  return v5;
}

- (void)addFilePath:(id)a3 forContact:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(CNNicknameProviderTestDouble *)self filePathsForContacts];
  v8 = [v6 identifier];

  [v9 setObject:v7 forKey:v8];
}

- (id)nicknameForContact:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2050000000;
  v5 = getIMNicknameClass_softClass;
  v16 = getIMNicknameClass_softClass;
  if (!getIMNicknameClass_softClass)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __getIMNicknameClass_block_invoke;
    v12[3] = &unk_1E7412110;
    v12[4] = &v13;
    __getIMNicknameClass_block_invoke(v12);
    v5 = v14[3];
  }

  v6 = v5;
  _Block_object_dispose(&v13, 8);
  v7 = [[v5 alloc] initWithMeContact:v4];
  v8 = [v4 identifier];
  [v7 setRecordID:v8];

  v9 = [(CNNicknameProviderTestDouble *)self contactForNickname];
  v10 = [v7 recordID];
  [v9 setObject:v4 forKey:v10];

  return v7;
}

- (id)avatarImageFileURLForNickname:(id)a3
{
  v4 = a3;
  v5 = [(CNNicknameProviderTestDouble *)self filePathsForContacts];
  v6 = [v4 recordID];

  v7 = [v5 objectForKey:v6];

  if ((*(*MEMORY[0x1E6996570] + 16))())
  {
    v8 = [MEMORY[0x1E695DFF8] fileURLWithPath:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)wallpaperFileURLForNickname:(id)a3
{
  v4 = a3;
  v5 = [(CNNicknameProviderTestDouble *)self filePathsForContacts];
  v6 = [v4 recordID];

  v7 = [v5 objectForKey:v6];

  if ((*(*MEMORY[0x1E6996570] + 16))())
  {
    v8 = [MEMORY[0x1E695DFF8] fileURLWithPath:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)watchWallpaperImageDataFileURLForNickname:(id)a3
{
  v4 = a3;
  v5 = [(CNNicknameProviderTestDouble *)self filePathsForContacts];
  v6 = [v4 recordID];

  v7 = [v5 objectForKey:v6];

  if ((*(*MEMORY[0x1E6996570] + 16))())
  {
    v8 = [MEMORY[0x1E695DFF8] fileURLWithPath:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)fetchPersonalNicknameAsContactWithCompletion:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = CNUnimplementedMethodException();
  objc_exception_throw(v6);
}

- (id)sharedWallpaperForNickname:(id)a3
{
  v3 = [(CNNicknameProviderTestDouble *)self wallpaperFileURLForNickname:a3];
  if (v3)
  {
    v4 = [MEMORY[0x1E69966E8] currentEnvironment];
    v5 = [v4 fileManager];
    v6 = [v5 dataWithContentsOfURL:v3];
    v7 = [v6 value];

    v8 = [[CNWallpaper alloc] initWithPosterArchiveData:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)sharedWatchWallpaperImageDataForNickname:(id)a3
{
  v3 = [(CNNicknameProviderTestDouble *)self watchWallpaperImageDataFileURLForNickname:a3];
  if (v3)
  {
    v4 = [MEMORY[0x1E69966E8] currentEnvironment];
    v5 = [v4 fileManager];
    v6 = [v5 dataWithContentsOfURL:v3];
    v7 = [v6 value];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end