@interface CNSharedProfileAvatarImageGenerator
+ (id)fallbackImageForNickname:(id)nickname contact:(id)contact size:(CGSize)size isRTL:(BOOL)l;
+ (void)sharedAvatarImageForNickname:(id)nickname contact:(id)contact size:(CGSize)size isRTL:(BOOL)l completionHandler:(id)handler;
@end

@implementation CNSharedProfileAvatarImageGenerator

+ (id)fallbackImageForNickname:(id)nickname contact:(id)contact size:(CGSize)size isRTL:(BOOL)l
{
  lCopy = l;
  height = size.height;
  width = size.width;
  contactCopy = contact;
  if ([contactCopy isUsingSharedPhoto])
  {
    v10 = [CNAvatarImageRenderer alloc];
    v11 = +[CNAvatarImageRendererSettings defaultSettings];
    v12 = [(CNAvatarImageRenderer *)v10 initWithSettings:v11];

    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    v15 = [CNAvatarImageRenderingScope scopeWithPointSize:lCopy scale:0 rightToLeft:width style:height, v14];

    v16 = [(CNAvatarImageRenderer *)v12 renderMonogramForContact:contactCopy color:0 scope:v15 prohibitedSources:0];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (void)sharedAvatarImageForNickname:(id)nickname contact:(id)contact size:(CGSize)size isRTL:(BOOL)l completionHandler:(id)handler
{
  lCopy = l;
  height = size.height;
  width = size.width;
  v41[1] = *MEMORY[0x1E69E9840];
  nicknameCopy = nickname;
  contactCopy = contact;
  handlerCopy = handler;
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  nicknameProvider = [currentEnvironment nicknameProvider];
  v18 = [nicknameProvider avatarRecipeDataForNickname:nicknameCopy];

  if (v18)
  {
    v19 = [contactCopy mutableCopy];
    [v19 setAvatarRecipeData:v18];
    v20 = [CNAvatarImageRenderer alloc];
    v21 = +[CNAvatarImageRendererSettings defaultSettings];
    v22 = [(CNAvatarImageRenderer *)v20 initWithSettings:v21];

    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    v25 = [CNAvatarImageRenderingScope scopeWithPointSize:lCopy scale:0 rightToLeft:width style:height, v24];

    v41[0] = v19;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:1];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __105__CNSharedProfileAvatarImageGenerator_sharedAvatarImageForNickname_contact_size_isRTL_completionHandler___block_invoke;
    v39[3] = &unk_1E74E4E10;
    v40 = handlerCopy;
    v27 = [(CNAvatarImageRenderer *)v22 renderAvatarsForContacts:v26 scope:v25 imageHandler:v39];
  }

  else
  {
    currentEnvironment2 = [MEMORY[0x1E69966E8] currentEnvironment];
    nicknameProvider2 = [currentEnvironment2 nicknameProvider];
    v30 = [nicknameProvider2 avatarImageFileURLForNickname:nicknameCopy];

    if (v30)
    {
      selfCopy = self;
      currentEnvironment3 = [MEMORY[0x1E69966E8] currentEnvironment];
      fileManager = [currentEnvironment3 fileManager];
      v33 = [fileManager dataWithContentsOfURL:v30];
      value = [v33 value];

      v35 = [MEMORY[0x1E69DCAB8] imageWithData:value];
      if (v35)
      {
        (*(handlerCopy + 2))(handlerCopy, v35);
      }

      else
      {
        v37 = [selfCopy fallbackImageForNickname:nicknameCopy contact:contactCopy size:lCopy isRTL:{width, height}];
        (*(handlerCopy + 2))(handlerCopy, v37);
      }
    }

    else
    {
      v36 = [self fallbackImageForNickname:nicknameCopy contact:contactCopy size:lCopy isRTL:{width, height}];
      (*(handlerCopy + 2))(handlerCopy, v36);
    }
  }
}

@end