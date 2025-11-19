@interface CNContact
+ (void)_maps_imageForNoContactWithDiameter:(double)a3 scale:(double)a4 completion:(id)a5;
+ (void)_maps_imageForUnkonwnWithDiameter:(double)a3 scale:(double)a4 completion:(id)a5;
- (BOOL)isMeCard;
- (CGImage)imageForCustomImageKey:(unint64_t)a3 suggestedSize:(CGSize)a4 contentScale:(float)a5;
- (NSString)_maps_mapsData;
- (id)_maps_spokenNameForNavigation;
- (id)avatarImageWithSize:(CGSize)a3 scale:(double)a4 rightToLeft:(BOOL)a5;
- (void)_maps_imageForContactWithDiameter:(double)a3 scale:(double)a4 completion:(id)a5;
@end

@implementation CNContact

- (CGImage)imageForCustomImageKey:(unint64_t)a3 suggestedSize:(CGSize)a4 contentScale:(float)a5
{
  v5 = [(CNContact *)self avatarImageWithSize:0 scale:a4.width rightToLeft:a4.height, a5];
  v6 = [v5 CGImage];

  return v6;
}

- (id)avatarImageWithSize:(CGSize)a3 scale:(double)a4 rightToLeft:(BOOL)a5
{
  v5 = a5;
  height = a3.height;
  width = a3.width;
  if (+[CNContact _maps_addressBookAllowed])
  {
    v10 = [CNAvatarImageRenderingScope scopeWithPointSize:v5 scale:0 rightToLeft:width style:height, a4];
    v11 = objc_alloc_init(CNAvatarImageRenderer);
    v15 = self;
    v12 = [NSArray arrayWithObjects:&v15 count:1];
    v13 = [v11 avatarImageForContacts:v12 scope:v10];
  }

  else
  {
    v10 = objc_alloc_init(CNAvatarImageRenderer);
    v11 = [v10 placeholderImageProvider];
    v13 = [v11 imageForSize:width scale:{height, a4}];
  }

  return v13;
}

- (id)_maps_spokenNameForNavigation
{
  v3 = [CNContactFormatter stringFromContact:self style:1];
  if ([v3 length])
  {
    v4 = v3;
  }

  else
  {
    v4 = [CNContactFormatter stringFromContact:self style:0];
  }

  v5 = v4;

  return v5;
}

- (void)_maps_imageForContactWithDiameter:(double)a3 scale:(double)a4 completion:(id)a5
{
  v7 = a5;
  v8 = dispatch_get_global_queue(17, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100ED9C30;
  block[3] = &unk_1016589F8;
  v12 = a3;
  block[4] = self;
  v11 = v7;
  v9 = v7;
  dispatch_async(v8, block);
}

- (NSString)_maps_mapsData
{
  if ([(CNContact *)self isKeyAvailable:CNContactMapsDataKey])
  {
    v3 = [(CNContact *)self mapsData];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isMeCard
{
  v3 = +[AddressBookManager sharedManager];
  v4 = [v3 meCard];
  v5 = [v4 identifier];
  v6 = [(CNContact *)self identifier];
  LOBYTE(self) = v5 == v6;

  return self;
}

+ (void)_maps_imageForUnkonwnWithDiameter:(double)a3 scale:(double)a4 completion:(id)a5
{
  v6 = a5;
  v7 = dispatch_get_global_queue(17, 0);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100ED9EB0;
  v9[3] = &unk_101658A20;
  v11 = a3;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, v9);
}

+ (void)_maps_imageForNoContactWithDiameter:(double)a3 scale:(double)a4 completion:(id)a5
{
  v6 = a5;
  v7 = dispatch_get_global_queue(17, 0);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100EDA058;
  v9[3] = &unk_101658A20;
  v11 = a3;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, v9);
}

@end