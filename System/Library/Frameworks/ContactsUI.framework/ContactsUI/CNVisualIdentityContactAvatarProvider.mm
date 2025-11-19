@interface CNVisualIdentityContactAvatarProvider
+ (id)descriptorForRequiredKeys;
- (CNVisualIdentityContactAvatarProvider)initWithSettings:(id)a3;
- (id)avatarImageForContact:(id)a3 withSize:(CGSize)a4 includePlaceholder:(BOOL)a5 userInterfaceStyle:(int64_t)a6 imageHandler:(id)a7;
- (id)imageForAvatarAccessoryView:(id)a3 withSize:(CGSize)a4;
@end

@implementation CNVisualIdentityContactAvatarProvider

- (id)imageForAvatarAccessoryView:(id)a3 withSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = MEMORY[0x1E69DCEB0];
  v8 = a3;
  v9 = [v7 mainScreen];
  [v9 scale];
  v11 = [CNAvatarImageRenderingScope scopeWithPointSize:0 scale:0 strokeWidth:0 strokeColor:width rightToLeft:height style:v10, 0.0];

  v12 = [(CNVisualIdentityContactAvatarProvider *)self avatarImageRenderer];
  v13 = [v12 imageForAvatarAccessoryView:v8 scope:v11];

  return v13;
}

- (id)avatarImageForContact:(id)a3 withSize:(CGSize)a4 includePlaceholder:(BOOL)a5 userInterfaceStyle:(int64_t)a6 imageHandler:(id)a7
{
  v8 = a5;
  height = a4.height;
  width = a4.width;
  v28[1] = *MEMORY[0x1E69E9840];
  v13 = a7;
  v14 = MEMORY[0x1E69DCEB0];
  v15 = a3;
  v16 = [v14 mainScreen];
  [v16 scale];
  v18 = v17;

  v19 = [MEMORY[0x1E696AC90] indexSet];
  v20 = [CNAvatarImageRenderingScope scopeWithPointSize:0 scale:0 strokeWidth:0 strokeColor:a6 == 2 rightToLeft:0 style:v19 backgroundStyle:width color:height maskedAvatarIndices:v18, 0.0];

  v21 = [(CNVisualIdentityContactAvatarProvider *)self avatarImageRenderer];
  v28[0] = v15;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __123__CNVisualIdentityContactAvatarProvider_avatarImageForContact_withSize_includePlaceholder_userInterfaceStyle_imageHandler___block_invoke;
  v26[3] = &unk_1E74E4E10;
  v27 = v13;
  v23 = v13;
  v24 = [v21 renderAvatarsForContacts:v22 scope:v20 includePlaceholder:v8 imageHandler:v26];

  return v24;
}

- (CNVisualIdentityContactAvatarProvider)initWithSettings:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = CNVisualIdentityContactAvatarProvider;
  v5 = [(CNVisualIdentityContactAvatarProvider *)&v16 init];
  if (v5)
  {
    v6 = v4;
    if (!v6)
    {
      v7 = +[CNUIContactsEnvironment currentEnvironment];
      v8 = [CNAvatarImageRendererSettings alloc];
      v9 = [v7 cachingLikenessResolver];
      v10 = [v7 cachingLikenessRenderer];
      v11 = [v7 defaultSchedulerProvider];
      v6 = [(CNAvatarImageRendererSettings *)v8 initWithLikenessResolver:v9 likenessRenderer:v10 schedulerProvider:v11];
    }

    v12 = [[CNAvatarImageRenderer alloc] initWithSettings:v6];
    avatarImageRenderer = v5->_avatarImageRenderer;
    v5->_avatarImageRenderer = v12;

    v14 = v5;
  }

  return v5;
}

+ (id)descriptorForRequiredKeys
{
  if (descriptorForRequiredKeys_cn_once_token_1_43688 != -1)
  {
    dispatch_once(&descriptorForRequiredKeys_cn_once_token_1_43688, &__block_literal_global_43689);
  }

  v3 = descriptorForRequiredKeys_cn_once_object_1_43690;

  return v3;
}

void __66__CNVisualIdentityContactAvatarProvider_descriptorForRequiredKeys__block_invoke()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695CD58];
  v1 = +[CNAvatarImageRenderer descriptorForRequiredKeys];
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNVisualIdentityContactAvatarProvider descriptorForRequiredKeys]_block_invoke"];
  v4 = [v0 descriptorWithKeyDescriptors:v2 description:v3];
  v5 = descriptorForRequiredKeys_cn_once_object_1_43690;
  descriptorForRequiredKeys_cn_once_object_1_43690 = v4;
}

@end