@interface CNNicknameProviderTestDouble
- (CNNicknameProviderTestDouble)initWithFilePathsForContacts:(id)contacts;
- (id)avatarImageFileURLForNickname:(id)nickname;
- (id)nicknameForContact:(id)contact;
- (id)sharedWallpaperForNickname:(id)nickname;
- (id)sharedWatchWallpaperImageDataForNickname:(id)nickname;
- (id)wallpaperFileURLForNickname:(id)nickname;
- (id)watchWallpaperImageDataFileURLForNickname:(id)nickname;
- (void)addFilePath:(id)path forContact:(id)contact;
- (void)fetchPersonalNicknameAsContactWithCompletion:(id)completion;
@end

@implementation CNNicknameProviderTestDouble

- (CNNicknameProviderTestDouble)initWithFilePathsForContacts:(id)contacts
{
  contactsCopy = contacts;
  v12.receiver = self;
  v12.super_class = CNNicknameProviderTestDouble;
  v5 = [(CNNicknameProviderTestDouble *)&v12 init];
  if (v5)
  {
    v6 = [contactsCopy mutableCopy];
    filePathsForContacts = v5->_filePathsForContacts;
    v5->_filePathsForContacts = v6;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    contactForNickname = v5->_contactForNickname;
    v5->_contactForNickname = dictionary;

    v10 = v5;
  }

  return v5;
}

- (void)addFilePath:(id)path forContact:(id)contact
{
  contactCopy = contact;
  pathCopy = path;
  filePathsForContacts = [(CNNicknameProviderTestDouble *)self filePathsForContacts];
  identifier = [contactCopy identifier];

  [filePathsForContacts setObject:pathCopy forKey:identifier];
}

- (id)nicknameForContact:(id)contact
{
  contactCopy = contact;
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
  v7 = [[v5 alloc] initWithMeContact:contactCopy];
  identifier = [contactCopy identifier];
  [v7 setRecordID:identifier];

  contactForNickname = [(CNNicknameProviderTestDouble *)self contactForNickname];
  recordID = [v7 recordID];
  [contactForNickname setObject:contactCopy forKey:recordID];

  return v7;
}

- (id)avatarImageFileURLForNickname:(id)nickname
{
  nicknameCopy = nickname;
  filePathsForContacts = [(CNNicknameProviderTestDouble *)self filePathsForContacts];
  recordID = [nicknameCopy recordID];

  v7 = [filePathsForContacts objectForKey:recordID];

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

- (id)wallpaperFileURLForNickname:(id)nickname
{
  nicknameCopy = nickname;
  filePathsForContacts = [(CNNicknameProviderTestDouble *)self filePathsForContacts];
  recordID = [nicknameCopy recordID];

  v7 = [filePathsForContacts objectForKey:recordID];

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

- (id)watchWallpaperImageDataFileURLForNickname:(id)nickname
{
  nicknameCopy = nickname;
  filePathsForContacts = [(CNNicknameProviderTestDouble *)self filePathsForContacts];
  recordID = [nicknameCopy recordID];

  v7 = [filePathsForContacts objectForKey:recordID];

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

- (void)fetchPersonalNicknameAsContactWithCompletion:(id)completion
{
  completionCopy = completion;
  selfCopy = self;
  v6 = CNUnimplementedMethodException();
  objc_exception_throw(v6);
}

- (id)sharedWallpaperForNickname:(id)nickname
{
  v3 = [(CNNicknameProviderTestDouble *)self wallpaperFileURLForNickname:nickname];
  if (v3)
  {
    currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
    fileManager = [currentEnvironment fileManager];
    v6 = [fileManager dataWithContentsOfURL:v3];
    value = [v6 value];

    v8 = [[CNWallpaper alloc] initWithPosterArchiveData:value];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)sharedWatchWallpaperImageDataForNickname:(id)nickname
{
  v3 = [(CNNicknameProviderTestDouble *)self watchWallpaperImageDataFileURLForNickname:nickname];
  if (v3)
  {
    currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
    fileManager = [currentEnvironment fileManager];
    v6 = [fileManager dataWithContentsOfURL:v3];
    value = [v6 value];
  }

  else
  {
    value = 0;
  }

  return value;
}

@end