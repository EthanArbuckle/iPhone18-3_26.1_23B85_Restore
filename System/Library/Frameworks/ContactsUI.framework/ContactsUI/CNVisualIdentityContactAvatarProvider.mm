@interface CNVisualIdentityContactAvatarProvider
+ (id)descriptorForRequiredKeys;
- (CNVisualIdentityContactAvatarProvider)initWithSettings:(id)settings;
- (id)avatarImageForContact:(id)contact withSize:(CGSize)size includePlaceholder:(BOOL)placeholder userInterfaceStyle:(int64_t)style imageHandler:(id)handler;
- (id)imageForAvatarAccessoryView:(id)view withSize:(CGSize)size;
@end

@implementation CNVisualIdentityContactAvatarProvider

- (id)imageForAvatarAccessoryView:(id)view withSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v7 = MEMORY[0x1E69DCEB0];
  viewCopy = view;
  mainScreen = [v7 mainScreen];
  [mainScreen scale];
  v11 = [CNAvatarImageRenderingScope scopeWithPointSize:0 scale:0 strokeWidth:0 strokeColor:width rightToLeft:height style:v10, 0.0];

  avatarImageRenderer = [(CNVisualIdentityContactAvatarProvider *)self avatarImageRenderer];
  v13 = [avatarImageRenderer imageForAvatarAccessoryView:viewCopy scope:v11];

  return v13;
}

- (id)avatarImageForContact:(id)contact withSize:(CGSize)size includePlaceholder:(BOOL)placeholder userInterfaceStyle:(int64_t)style imageHandler:(id)handler
{
  placeholderCopy = placeholder;
  height = size.height;
  width = size.width;
  v28[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v14 = MEMORY[0x1E69DCEB0];
  contactCopy = contact;
  mainScreen = [v14 mainScreen];
  [mainScreen scale];
  v18 = v17;

  indexSet = [MEMORY[0x1E696AC90] indexSet];
  v20 = [CNAvatarImageRenderingScope scopeWithPointSize:0 scale:0 strokeWidth:0 strokeColor:style == 2 rightToLeft:0 style:indexSet backgroundStyle:width color:height maskedAvatarIndices:v18, 0.0];

  avatarImageRenderer = [(CNVisualIdentityContactAvatarProvider *)self avatarImageRenderer];
  v28[0] = contactCopy;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __123__CNVisualIdentityContactAvatarProvider_avatarImageForContact_withSize_includePlaceholder_userInterfaceStyle_imageHandler___block_invoke;
  v26[3] = &unk_1E74E4E10;
  v27 = handlerCopy;
  v23 = handlerCopy;
  v24 = [avatarImageRenderer renderAvatarsForContacts:v22 scope:v20 includePlaceholder:placeholderCopy imageHandler:v26];

  return v24;
}

- (CNVisualIdentityContactAvatarProvider)initWithSettings:(id)settings
{
  settingsCopy = settings;
  v16.receiver = self;
  v16.super_class = CNVisualIdentityContactAvatarProvider;
  v5 = [(CNVisualIdentityContactAvatarProvider *)&v16 init];
  if (v5)
  {
    v6 = settingsCopy;
    if (!v6)
    {
      v7 = +[CNUIContactsEnvironment currentEnvironment];
      v8 = [CNAvatarImageRendererSettings alloc];
      cachingLikenessResolver = [v7 cachingLikenessResolver];
      cachingLikenessRenderer = [v7 cachingLikenessRenderer];
      defaultSchedulerProvider = [v7 defaultSchedulerProvider];
      v6 = [(CNAvatarImageRendererSettings *)v8 initWithLikenessResolver:cachingLikenessResolver likenessRenderer:cachingLikenessRenderer schedulerProvider:defaultSchedulerProvider];
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