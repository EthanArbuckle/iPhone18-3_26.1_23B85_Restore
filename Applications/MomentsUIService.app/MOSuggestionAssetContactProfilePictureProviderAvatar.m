@interface MOSuggestionAssetContactProfilePictureProviderAvatar
- (MOSuggestionAssetContactProfilePictureProviderAvatar)init;
- (id)avatarForContact:(id)a3 size:(CGSize)a4;
- (void)avatarForContact:(id)a3 size:(CGSize)a4 completion:(id)a5;
- (void)genericAvatarFor:(id)a3 pointSize:(CGSize)a4 completion:(id)a5;
@end

@implementation MOSuggestionAssetContactProfilePictureProviderAvatar

- (MOSuggestionAssetContactProfilePictureProviderAvatar)init
{
  v6.receiver = self;
  v6.super_class = MOSuggestionAssetContactProfilePictureProviderAvatar;
  v2 = [(MOSuggestionAssetContactProfilePictureProviderAvatar *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    renderer = v2->_renderer;
    v2->_renderer = v3;
  }

  return v2;
}

- (void)genericAvatarFor:(id)a3 pointSize:(CGSize)a4 completion:(id)a5
{
  height = a4.height;
  width = a4.width;
  v8 = a3;
  v9 = a5;
  v10 = +[NSCharacterSet whitespaceCharacterSet];
  v11 = [v8 componentsSeparatedByCharactersInSet:v10];

  if ([v11 count])
  {
    v12 = 0;
    v13 = &stru_100318448;
    do
    {
      v14 = [v11 objectAtIndexedSubscript:v12];
      if ([v14 length])
      {
        v15 = [v14 substringWithRange:{0, 1}];
        v16 = [(__CFString *)v13 stringByAppendingString:v15];

        v13 = v16;
      }

      v17 = v12 + 1;
      v18 = [v11 count];
      if (v18 >= 2)
      {
        v19 = 2;
      }

      else
      {
        v19 = v18;
      }

      v12 = 1;
    }

    while (v17 < v19);
  }

  else
  {
    v13 = &stru_100318448;
  }

  if ([(__CFString *)v13 length])
  {
    v20 = [CNAvatarImageRenderingScope scopeWithPointSize:0 scale:0 rightToLeft:width style:height, 1.0];
    v21 = objc_alloc_init(CNAvatarImageRenderer);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = __94__MOSuggestionAssetContactProfilePictureProviderAvatar_genericAvatarFor_pointSize_completion___block_invoke;
    v23[3] = &unk_100309678;
    v24 = v9;
    v22 = [v21 renderMonogramForString:v13 scope:v20 imageHandler:v23];
  }

  else
  {
    (*(v9 + 2))(v9, 0);
  }
}

- (void)avatarForContact:(id)a3 size:(CGSize)a4 completion:(id)a5
{
  height = a4.height;
  width = a4.width;
  v9 = a5;
  v10 = a3;
  v11 = +[UIApplication sharedApplication];
  v12 = [v11 userInterfaceLayoutDirection] == 1;

  v13 = +[UIScreen mainScreen];
  [v13 scale];
  v15 = [CNAvatarImageRenderingScope scopeWithPointSize:v12 scale:0 rightToLeft:width style:height, v14];

  renderer = self->_renderer;
  v22 = v10;
  v17 = [NSArray arrayWithObjects:&v22 count:1];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = __89__MOSuggestionAssetContactProfilePictureProviderAvatar_avatarForContact_size_completion___block_invoke;
  v20[3] = &unk_100309678;
  v21 = v9;
  v18 = v9;
  v19 = [(CNAvatarImageRenderer *)renderer renderAvatarsForContacts:v17 scope:v15 imageHandler:v20];
}

- (id)avatarForContact:(id)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  v8 = +[UIApplication sharedApplication];
  v9 = [v8 userInterfaceLayoutDirection] == 1;

  v10 = +[UIScreen mainScreen];
  [v10 scale];
  v12 = [CNAvatarImageRenderingScope scopeWithPointSize:v9 scale:0 rightToLeft:width style:height, v11];

  renderer = self->_renderer;
  v17 = v7;
  v14 = [NSArray arrayWithObjects:&v17 count:1];
  v15 = [(CNAvatarImageRenderer *)renderer avatarImageForContacts:v14 scope:v12];

  return v15;
}

@end