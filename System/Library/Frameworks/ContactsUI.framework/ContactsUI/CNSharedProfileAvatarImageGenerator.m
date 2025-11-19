@interface CNSharedProfileAvatarImageGenerator
+ (id)fallbackImageForNickname:(id)a3 contact:(id)a4 size:(CGSize)a5 isRTL:(BOOL)a6;
+ (void)sharedAvatarImageForNickname:(id)a3 contact:(id)a4 size:(CGSize)a5 isRTL:(BOOL)a6 completionHandler:(id)a7;
@end

@implementation CNSharedProfileAvatarImageGenerator

+ (id)fallbackImageForNickname:(id)a3 contact:(id)a4 size:(CGSize)a5 isRTL:(BOOL)a6
{
  v6 = a6;
  height = a5.height;
  width = a5.width;
  v9 = a4;
  if ([v9 isUsingSharedPhoto])
  {
    v10 = [CNAvatarImageRenderer alloc];
    v11 = +[CNAvatarImageRendererSettings defaultSettings];
    v12 = [(CNAvatarImageRenderer *)v10 initWithSettings:v11];

    v13 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v13 scale];
    v15 = [CNAvatarImageRenderingScope scopeWithPointSize:v6 scale:0 rightToLeft:width style:height, v14];

    v16 = [(CNAvatarImageRenderer *)v12 renderMonogramForContact:v9 color:0 scope:v15 prohibitedSources:0];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (void)sharedAvatarImageForNickname:(id)a3 contact:(id)a4 size:(CGSize)a5 isRTL:(BOOL)a6 completionHandler:(id)a7
{
  v8 = a6;
  height = a5.height;
  width = a5.width;
  v41[1] = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a7;
  v16 = [MEMORY[0x1E69966E8] currentEnvironment];
  v17 = [v16 nicknameProvider];
  v18 = [v17 avatarRecipeDataForNickname:v13];

  if (v18)
  {
    v19 = [v14 mutableCopy];
    [v19 setAvatarRecipeData:v18];
    v20 = [CNAvatarImageRenderer alloc];
    v21 = +[CNAvatarImageRendererSettings defaultSettings];
    v22 = [(CNAvatarImageRenderer *)v20 initWithSettings:v21];

    v23 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v23 scale];
    v25 = [CNAvatarImageRenderingScope scopeWithPointSize:v8 scale:0 rightToLeft:width style:height, v24];

    v41[0] = v19;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:1];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __105__CNSharedProfileAvatarImageGenerator_sharedAvatarImageForNickname_contact_size_isRTL_completionHandler___block_invoke;
    v39[3] = &unk_1E74E4E10;
    v40 = v15;
    v27 = [(CNAvatarImageRenderer *)v22 renderAvatarsForContacts:v26 scope:v25 imageHandler:v39];
  }

  else
  {
    v28 = [MEMORY[0x1E69966E8] currentEnvironment];
    v29 = [v28 nicknameProvider];
    v30 = [v29 avatarImageFileURLForNickname:v13];

    if (v30)
    {
      v38 = a1;
      v31 = [MEMORY[0x1E69966E8] currentEnvironment];
      v32 = [v31 fileManager];
      v33 = [v32 dataWithContentsOfURL:v30];
      v34 = [v33 value];

      v35 = [MEMORY[0x1E69DCAB8] imageWithData:v34];
      if (v35)
      {
        (*(v15 + 2))(v15, v35);
      }

      else
      {
        v37 = [v38 fallbackImageForNickname:v13 contact:v14 size:v8 isRTL:{width, height}];
        (*(v15 + 2))(v15, v37);
      }
    }

    else
    {
      v36 = [a1 fallbackImageForNickname:v13 contact:v14 size:v8 isRTL:{width, height}];
      (*(v15 + 2))(v15, v36);
    }
  }
}

@end