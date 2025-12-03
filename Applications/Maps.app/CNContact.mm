@interface CNContact
+ (void)_maps_imageForNoContactWithDiameter:(double)diameter scale:(double)scale completion:(id)completion;
+ (void)_maps_imageForUnkonwnWithDiameter:(double)diameter scale:(double)scale completion:(id)completion;
- (BOOL)isMeCard;
- (CGImage)imageForCustomImageKey:(unint64_t)key suggestedSize:(CGSize)size contentScale:(float)scale;
- (NSString)_maps_mapsData;
- (id)_maps_spokenNameForNavigation;
- (id)avatarImageWithSize:(CGSize)size scale:(double)scale rightToLeft:(BOOL)left;
- (void)_maps_imageForContactWithDiameter:(double)diameter scale:(double)scale completion:(id)completion;
@end

@implementation CNContact

- (CGImage)imageForCustomImageKey:(unint64_t)key suggestedSize:(CGSize)size contentScale:(float)scale
{
  scale = [(CNContact *)self avatarImageWithSize:0 scale:size.width rightToLeft:size.height, scale];
  cGImage = [scale CGImage];

  return cGImage;
}

- (id)avatarImageWithSize:(CGSize)size scale:(double)scale rightToLeft:(BOOL)left
{
  leftCopy = left;
  height = size.height;
  width = size.width;
  if (+[CNContact _maps_addressBookAllowed])
  {
    scale = [CNAvatarImageRenderingScope scopeWithPointSize:leftCopy scale:0 rightToLeft:width style:height, scale];
    placeholderImageProvider = objc_alloc_init(CNAvatarImageRenderer);
    selfCopy = self;
    v12 = [NSArray arrayWithObjects:&selfCopy count:1];
    v13 = [placeholderImageProvider avatarImageForContacts:v12 scope:scale];
  }

  else
  {
    scale = objc_alloc_init(CNAvatarImageRenderer);
    placeholderImageProvider = [scale placeholderImageProvider];
    v13 = [placeholderImageProvider imageForSize:width scale:{height, scale}];
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

- (void)_maps_imageForContactWithDiameter:(double)diameter scale:(double)scale completion:(id)completion
{
  completionCopy = completion;
  v8 = dispatch_get_global_queue(17, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100ED9C30;
  block[3] = &unk_1016589F8;
  diameterCopy = diameter;
  block[4] = self;
  v11 = completionCopy;
  v9 = completionCopy;
  dispatch_async(v8, block);
}

- (NSString)_maps_mapsData
{
  if ([(CNContact *)self isKeyAvailable:CNContactMapsDataKey])
  {
    mapsData = [(CNContact *)self mapsData];
  }

  else
  {
    mapsData = 0;
  }

  return mapsData;
}

- (BOOL)isMeCard
{
  v3 = +[AddressBookManager sharedManager];
  meCard = [v3 meCard];
  identifier = [meCard identifier];
  identifier2 = [(CNContact *)self identifier];
  LOBYTE(self) = identifier == identifier2;

  return self;
}

+ (void)_maps_imageForUnkonwnWithDiameter:(double)diameter scale:(double)scale completion:(id)completion
{
  completionCopy = completion;
  v7 = dispatch_get_global_queue(17, 0);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100ED9EB0;
  v9[3] = &unk_101658A20;
  diameterCopy = diameter;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(v7, v9);
}

+ (void)_maps_imageForNoContactWithDiameter:(double)diameter scale:(double)scale completion:(id)completion
{
  completionCopy = completion;
  v7 = dispatch_get_global_queue(17, 0);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100EDA058;
  v9[3] = &unk_101658A20;
  diameterCopy = diameter;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(v7, v9);
}

@end