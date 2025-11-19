@interface CNVisualIdentity
+ (id)abbreviatedNameForGroupName:(id)a3;
+ (id)descriptorForImageKeys;
+ (id)descriptorForRequiredKeys;
+ (id)firstComposedCharacterFromString:(id)a3;
+ (id)log;
- (BOOL)hasImageDataAvailable;
- (BOOL)hasLinkedContacts;
- (CGRect)cropRect;
- (CNVisualIdentity)initWithContact:(id)a3;
- (CNVisualIdentity)initWithGroupIdentity:(id)a3;
- (NSString)abbreviatedName;
- (NSString)name;
- (NSString)shortenedDisplayName;
- (UIImage)avatarImage;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)wallpaperType;
- (int64_t)contactImageSource;
- (unint64_t)contactImageType;
- (void)clearImage;
- (void)clearImageAndWallpaper;
- (void)setCropRect:(CGRect)a3;
- (void)setImageData:(id)a3;
- (void)setThumbnailImageData:(id)a3;
- (void)updateContactWithGivenName:(id)a3 familyName:(id)a4;
- (void)updateGroupName:(id)a3;
- (void)updateImageForContact:(id)a3;
- (void)updateImageType:(unint64_t)a3;
@end

@implementation CNVisualIdentity

- (CGRect)cropRect
{
  x = self->_cropRect.origin.x;
  y = self->_cropRect.origin.y;
  width = self->_cropRect.size.width;
  height = self->_cropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)wallpaperType
{
  v3 = [(CNVisualIdentity *)self imageType];
  v4 = [MEMORY[0x1E695CD58] stringIdentifierForImageType:2];
  v5 = [v3 isEqualToString:v4];

  if (v5)
  {
    v6 = MEMORY[0x1E695CCE8];
  }

  else
  {
    v7 = [(CNVisualIdentity *)self imageType];
    v8 = [MEMORY[0x1E695CD58] stringIdentifierForImageType:3];
    v9 = [v7 isEqualToString:v8];

    v6 = MEMORY[0x1E695CCF0];
    if (v9)
    {
      v6 = MEMORY[0x1E695CCE0];
    }
  }

  v10 = *v6;

  return v10;
}

- (UIImage)avatarImage
{
  v52 = *MEMORY[0x1E69E9840];
  avatarImage = self->_avatarImage;
  if (avatarImage)
  {
    goto LABEL_5;
  }

  v4 = [(CNVisualIdentity *)self thumbnailImageData];

  if (v4)
  {
    v5 = MEMORY[0x1E69DCAB8];
    v6 = [(CNVisualIdentity *)self thumbnailImageData];
    v7 = [v5 imageWithData:v6];
    v8 = self->_avatarImage;
    self->_avatarImage = v7;
LABEL_4:

    avatarImage = self->_avatarImage;
LABEL_5:
    v9 = avatarImage;
    goto LABEL_6;
  }

  v11 = [(CNVisualIdentity *)self imageData];

  if (v11)
  {
    [(CNVisualIdentity *)self cropRect];
    v12 = CGRectEqualToRect(v54, *MEMORY[0x1E695F058]);
    v13 = MEMORY[0x1E69DCAB8];
    v6 = [(CNVisualIdentity *)self imageData];
    v14 = [v13 imageWithData:v6];
    v15 = v14;
    if (v12)
    {
      v8 = self->_avatarImage;
      self->_avatarImage = v14;
      goto LABEL_4;
    }

    [(CNVisualIdentity *)self cropRect];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    [(UIImage *)v15 size];
    v26 = v25;
    [(UIImage *)v15 size];
    v28 = v27;
    if (([MEMORY[0x1E6996738] cropRect:v18 fitsWithinSize:{v20, v22, v24, v26, v27}] & 1) == 0)
    {
      v29 = [objc_opt_class() log];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v40 = 134219264;
        v41 = v18;
        v42 = 2048;
        v43 = v20;
        v44 = 2048;
        v45 = v22;
        v46 = 2048;
        v47 = v24;
        v48 = 2048;
        v49 = v26;
        v50 = 2048;
        v51 = v28;
        _os_log_error_impl(&dword_199A75000, v29, OS_LOG_TYPE_ERROR, "[Likeness] Attempting to crop image with cropRect (%.2f, %.2f, %.2f, %.2f) extending beyond image of size (%.2f x %.2f). Displaying with a centered square cropRect instead.", &v40, 0x3Eu);
      }

      [MEMORY[0x1E6996738] centeredSquareCropRectInRect:{0.0, 0.0, v26, v28}];
      v18 = v30;
      v20 = v31;
      v22 = v32;
      v24 = v33;
    }

    v34 = [(UIImage *)v15 CGImage];
    v55.origin.x = v18;
    v55.origin.y = v20;
    v55.size.width = v22;
    v55.size.height = v24;
    v35 = CGImageCreateWithImageInRect(v34, v55);
    v36 = MEMORY[0x1E69DCAB8];
    [(UIImage *)v15 scale];
    v38 = [v36 imageWithCGImage:v35 scale:-[UIImage imageOrientation](v15 orientation:{"imageOrientation"), v37}];
    v39 = self->_avatarImage;
    self->_avatarImage = v38;

    CGImageRelease(v35);
    v9 = self->_avatarImage;
  }

  else
  {
    v16 = self->_avatarImage;
    self->_avatarImage = 0;

    v9 = 0;
  }

LABEL_6:

  return v9;
}

- (BOOL)hasImageDataAvailable
{
  v3 = [(CNVisualIdentity *)self thumbnailImageData];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(CNVisualIdentity *)self imageData];
    v4 = v5 != 0;
  }

  return v4;
}

- (void)updateGroupName:(id)a3
{
  v5 = a3;
  if ([(CNVisualIdentity *)self canUpdateGroupName])
  {
    [(CNVisualIdentity *)self setName:v5];
    v4 = [objc_opt_class() abbreviatedNameForGroupName:v5];
    [(CNVisualIdentity *)self setAbbreviatedName:v4];
  }
}

- (void)updateImageType:(unint64_t)a3
{
  v4 = [MEMORY[0x1E695CD58] stringIdentifierForImageType:a3];
  [(CNVisualIdentity *)self setImageType:v4];
}

- (void)updateImageForContact:(id)a3
{
  v4 = a3;
  v5 = [(CNVisualIdentity *)self imageData];
  [v4 setImageData:v5];

  v6 = [(CNVisualIdentity *)self thumbnailImageData];
  [v4 setThumbnailImageData:v6];

  v7 = [(CNVisualIdentity *)self fullscreenImageData];
  [v4 setFullscreenImageData:v7];

  [(CNVisualIdentity *)self cropRect];
  [v4 setCropRect:?];
  v8 = [(CNVisualIdentity *)self imageHash];
  [v4 setImageHash:v8];

  v9 = [(CNVisualIdentity *)self imageType];
  [v4 setImageType:v9];

  v10 = [(CNVisualIdentity *)self memojiMetadata];
  [v4 setMemojiMetadata:v10];

  v11 = [(CNVisualIdentity *)self wallpaper];
  [v4 setWallpaper:v11];
}

- (void)updateContactWithGivenName:(id)a3 familyName:(id)a4
{
  v20[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(CNVisualIdentity *)self contacts];
  v9 = [v8 firstObject];
  v10 = [v9 mutableCopy];

  if (v10)
  {
    [v10 setGivenName:v6];
    [v10 setFamilyName:v7];
    v11 = [v10 freeze];
    v20[0] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    v13 = [(CNVisualIdentity *)self contacts];
    v14 = [v13 _cn_tail];
    v15 = [v12 arrayByAddingObjectsFromArray:v14];
    [(CNVisualIdentity *)self setContacts:v15];

    v16 = [MEMORY[0x1E695CD80] stringFromContact:v10 style:0];
    name = self->_name;
    self->_name = v16;

    v18 = [MEMORY[0x1E695CD80] stringFromContact:v10 style:1002];
    abbreviatedName = self->_abbreviatedName;
    self->_abbreviatedName = v18;
  }
}

- (void)clearImageAndWallpaper
{
  [(CNVisualIdentity *)self clearImage];

  [(CNVisualIdentity *)self clearWallpaper];
}

- (void)clearImage
{
  [(CNVisualIdentity *)self setImageData:0];
  [(CNVisualIdentity *)self setThumbnailImageData:0];
  [(CNVisualIdentity *)self setFullscreenImageData:0];
  [(CNVisualIdentity *)self setCropRect:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(CNVisualIdentity *)self setImageHash:0];
  [(CNVisualIdentity *)self setImageType:0];

  [(CNVisualIdentity *)self setMemojiMetadata:0];
}

- (int64_t)contactImageSource
{
  v2 = MEMORY[0x1E695CD58];
  v3 = [(CNVisualIdentity *)self imageType];
  v4 = [v2 rawImageSourceForIdentifier:v3];

  return v4;
}

- (unint64_t)contactImageType
{
  v2 = MEMORY[0x1E695CD58];
  v3 = [(CNVisualIdentity *)self imageType];
  v4 = [v2 rawImageTypeForIdentifier:v3];

  return v4;
}

- (BOOL)hasLinkedContacts
{
  v2 = *MEMORY[0x1E6996530];
  v3 = [(CNVisualIdentity *)self linkedContacts];
  LOBYTE(v2) = (*(v2 + 16))(v2, v3);

  return v2 ^ 1;
}

- (NSString)abbreviatedName
{
  if ([(NSArray *)self->_contacts count]== 1)
  {
    p_abbreviatedName = &self->_abbreviatedName;
    if ((*(*MEMORY[0x1E6996568] + 16))())
    {
      v4 = [(NSArray *)self->_contacts firstObject];
      v5 = [MEMORY[0x1E695CD80] stringFromContact:v4 style:1002];
      abbreviatedName = self->_abbreviatedName;
      self->_abbreviatedName = v5;
    }
  }

  else
  {
    p_abbreviatedName = &self->_abbreviatedName;
  }

  v7 = *p_abbreviatedName;

  return v7;
}

- (NSString)shortenedDisplayName
{
  if ([(NSArray *)self->_contacts count]== 1)
  {
    p_shortenedDisplayName = &self->_shortenedDisplayName;
    if ((*(*MEMORY[0x1E6996568] + 16))())
    {
      v4 = [(NSArray *)self->_contacts firstObject];
      v5 = [v4 givenName];
      shortenedDisplayName = self->_shortenedDisplayName;
      self->_shortenedDisplayName = v5;
    }
  }

  else
  {
    p_shortenedDisplayName = &self->_shortenedDisplayName;
  }

  v7 = *p_shortenedDisplayName;

  return v7;
}

- (NSString)name
{
  if ([(NSArray *)self->_contacts count]== 1)
  {
    p_name = &self->_name;
    if ((*(*MEMORY[0x1E6996568] + 16))())
    {
      v4 = [(NSArray *)self->_contacts firstObject];
      v5 = [MEMORY[0x1E695CD80] stringFromContact:v4 style:0];
      name = self->_name;
      self->_name = v5;
    }
  }

  else
  {
    p_name = &self->_name;
  }

  v7 = *p_name;

  return v7;
}

- (void)setCropRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (!CGRectEqualToRect(a3, self->_cropRect))
  {
    self->_cropRect.origin.x = x;
    self->_cropRect.origin.y = y;
    self->_cropRect.size.width = width;
    self->_cropRect.size.height = height;
    avatarImage = self->_avatarImage;
    self->_avatarImage = 0;
  }
}

- (void)setImageData:(id)a3
{
  v6 = a3;
  if (([v6 isEqualToData:self->_imageData] & 1) == 0)
  {
    objc_storeStrong(&self->_imageData, a3);
    avatarImage = self->_avatarImage;
    self->_avatarImage = 0;
  }
}

- (void)setThumbnailImageData:(id)a3
{
  v6 = a3;
  if (([v6 isEqualToData:self->_thumbnailImageData] & 1) == 0)
  {
    objc_storeStrong(&self->_thumbnailImageData, a3);
    avatarImage = self->_avatarImage;
    self->_avatarImage = 0;
  }
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(CNVisualIdentity);
  v5 = [(CNVisualIdentity *)self imageData];
  [(CNVisualIdentity *)v4 setImageData:v5];

  v6 = [(CNVisualIdentity *)self name];
  [(CNVisualIdentity *)v4 setName:v6];

  v7 = [(CNVisualIdentity *)self abbreviatedName];
  [(CNVisualIdentity *)v4 setAbbreviatedName:v7];

  v8 = [(CNVisualIdentity *)self imageHash];
  [(CNVisualIdentity *)v4 setImageHash:v8];

  [(CNVisualIdentity *)self cropRect];
  [(CNVisualIdentity *)v4 setCropRect:?];
  v9 = [(CNVisualIdentity *)self imageType];
  [(CNVisualIdentity *)v4 setImageType:v9];

  v10 = [(CNVisualIdentity *)self identifier];
  [(CNVisualIdentity *)v4 setIdentifier:v10];

  v11 = [(CNVisualIdentity *)self thumbnailImageData];
  [(CNVisualIdentity *)v4 setThumbnailImageData:v11];

  v12 = [(CNVisualIdentity *)self fullscreenImageData];
  [(CNVisualIdentity *)v4 setFullscreenImageData:v12];

  v13 = [(CNVisualIdentity *)self linkedContacts];
  [(CNVisualIdentity *)v4 setLinkedContacts:v13];

  v14 = [(CNVisualIdentity *)self contacts];
  [(CNVisualIdentity *)v4 setContacts:v14];

  [(CNVisualIdentity *)v4 setIdentityType:[(CNVisualIdentity *)self identityType]];
  v15 = [(CNVisualIdentity *)self memojiMetadata];
  [(CNVisualIdentity *)v4 setMemojiMetadata:v15];

  v16 = [(CNVisualIdentity *)self wallpaper];
  [(CNVisualIdentity *)v4 setWallpaper:v16];

  return v4;
}

- (CNVisualIdentity)initWithGroupIdentity:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = CNVisualIdentity;
  v5 = [(CNVisualIdentity *)&v32 init];
  if (v5)
  {
    if ([v4 numberOfContacts] == 1)
    {
      v6 = [v4 contacts];
      v7 = [v6 firstObject];
      v5 = [(CNVisualIdentity *)v5 initWithContact:v7];
    }

    else
    {
      v8 = [v4 groupPhoto];
      imageData = v5->_imageData;
      v5->_imageData = v8;

      v10 = [v4 groupName];
      name = v5->_name;
      v5->_name = v10;

      v12 = *MEMORY[0x1E6996568];
      v13 = [v4 groupName];
      if ((*(v12 + 16))(v12, v13))
      {
        abbreviatedName = v5->_abbreviatedName;
        v5->_abbreviatedName = 0;
      }

      else
      {
        v15 = objc_opt_class();
        abbreviatedName = [v4 groupName];
        v16 = [v15 abbreviatedNameForGroupName:abbreviatedName];
        v17 = v5->_abbreviatedName;
        v5->_abbreviatedName = v16;
      }

      imageHash = v5->_imageHash;
      v5->_imageHash = 0;

      v19 = *(MEMORY[0x1E695F058] + 16);
      v5->_cropRect.origin = *MEMORY[0x1E695F058];
      v5->_cropRect.size = v19;
      v5->_imageType = 0;
      v20 = [v4 identifier];
      identifier = v5->_identifier;
      v5->_identifier = v20;

      v22 = [v4 groupPhoto];
      thumbnailImageData = v5->_thumbnailImageData;
      v5->_thumbnailImageData = v22;

      fullscreenImageData = v5->_fullscreenImageData;
      v5->_fullscreenImageData = 0;

      linkedContacts = v5->_linkedContacts;
      v5->_linkedContacts = 0;

      v26 = [v4 contacts];
      contacts = v5->_contacts;
      v5->_contacts = v26;

      memojiMetadata = v5->_memojiMetadata;
      v5->_memojiMetadata = 0;

      if ((*(*MEMORY[0x1E6996530] + 16))())
      {
        v29 = [objc_opt_class() log];
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v31[0] = 0;
          _os_log_impl(&dword_199A75000, v29, OS_LOG_TYPE_DEFAULT, "[CNVisualIdentity] Attempting to create a group visual identity from a group containing 0 contacts.", v31, 2u);
        }
      }

      v5->_identityType = 1;
    }
  }

  return v5;
}

- (CNVisualIdentity)initWithContact:(id)a3
{
  v37[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v35.receiver = self;
  v35.super_class = CNVisualIdentity;
  v5 = [(CNVisualIdentity *)&v35 init];
  if (v5)
  {
    v6 = +[CNVisualIdentity descriptorForImageKeys];
    v37[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:1];
    v8 = [v4 areKeysAvailable:v7];

    if (v8)
    {
      v9 = [v4 imageData];
      imageData = v5->_imageData;
      v5->_imageData = v9;

      v11 = [v4 imageHash];
      imageHash = v5->_imageHash;
      v5->_imageHash = v11;

      [v4 cropRect];
      v5->_cropRect.origin.x = v13;
      v5->_cropRect.origin.y = v14;
      v5->_cropRect.size.width = v15;
      v5->_cropRect.size.height = v16;
      v5->_imageType = [v4 imageType];
      v17 = [v4 thumbnailImageData];
      thumbnailImageData = v5->_thumbnailImageData;
      v5->_thumbnailImageData = v17;

      v19 = [v4 fullscreenImageData];
      fullscreenImageData = v5->_fullscreenImageData;
      v5->_fullscreenImageData = v19;

      v21 = [v4 memojiMetadata];
      memojiMetadata = v5->_memojiMetadata;
      v5->_memojiMetadata = v21;

      v23 = [v4 wallpaper];
      wallpaper = v5->_wallpaper;
      v5->_wallpaper = v23;
    }

    v25 = [v4 identifier];
    identifier = v5->_identifier;
    v5->_identifier = v25;

    v27 = [v4 linkedContacts];
    linkedContacts = v5->_linkedContacts;
    v5->_linkedContacts = v27;

    if (v4)
    {
      v36 = v4;
      v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
      p_super = &v5->_contacts->super;
      v5->_contacts = v29;
    }

    else
    {
      contacts = v5->_contacts;
      v5->_contacts = MEMORY[0x1E695E0F0];

      p_super = [objc_opt_class() log];
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        v34 = 0;
      }
    }

    v5->_identityType = 0;
    v32 = v5;
  }

  return v5;
}

+ (id)abbreviatedNameForGroupName:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = *MEMORY[0x1E6996568];
  if ((*(*MEMORY[0x1E6996568] + 16))(*MEMORY[0x1E6996568], v3))
  {
    v5 = 0;
    goto LABEL_20;
  }

  v19 = v3;
  v6 = [v3 componentsSeparatedByString:@" "];
  v7 = [v6 _cn_take:2];

  v8 = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v7;
  v9 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (!v9)
  {
    v5 = &stru_1F0CE7398;
    goto LABEL_19;
  }

  v10 = v9;
  v11 = *v22;
  v12 = *MEMORY[0x1E6996570];
  v5 = &stru_1F0CE7398;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v22 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v14 = [objc_opt_class() firstComposedCharacterFromString:*(*(&v21 + 1) + 8 * i)];
      v15 = [CNUIStringUtilities stringIsSingleEmoji:v14];
      v16 = [v14 _cn_containsCharacterInSet:v8];
      if (v15)
      {
        if ((((*(v4 + 16))(v4, v5) | v16) & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      else if (!v16)
      {
        goto LABEL_15;
      }

      if (!(*(v12 + 16))(v12, v5) || [CNUIStringUtilities stringContainsEmoji:v5]== v15)
      {
        v17 = [(__CFString *)v5 stringByAppendingString:v14];

        v5 = v17;
      }

LABEL_15:
    }

    v10 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  }

  while (v10);
LABEL_19:

  v3 = v19;
LABEL_20:

  return v5;
}

+ (id)firstComposedCharacterFromString:(id)a3
{
  v3 = a3;
  if ((*(*MEMORY[0x1E6996570] + 16))())
  {
    v4 = [v3 rangeOfComposedCharacterSequenceAtIndex:0];
    v6 = [v3 substringWithRange:{v4, v5}];
  }

  else
  {
    v6 = &stru_1F0CE7398;
  }

  return v6;
}

+ (id)descriptorForImageKeys
{
  if (descriptorForImageKeys_cn_once_token_3 != -1)
  {
    dispatch_once(&descriptorForImageKeys_cn_once_token_3, &__block_literal_global_9_31708);
  }

  v3 = descriptorForImageKeys_cn_once_object_3;

  return v3;
}

void __42__CNVisualIdentity_descriptorForImageKeys__block_invoke()
{
  v9[8] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695CD58];
  v1 = *MEMORY[0x1E695C400];
  v9[0] = *MEMORY[0x1E695C278];
  v9[1] = v1;
  v2 = *MEMORY[0x1E695C280];
  v9[2] = *MEMORY[0x1E695C1E8];
  v9[3] = v2;
  v3 = *MEMORY[0x1E695C238];
  v9[4] = *MEMORY[0x1E695C298];
  v9[5] = v3;
  v4 = *MEMORY[0x1E695C420];
  v9[6] = *MEMORY[0x1E695C2E8];
  v9[7] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:8];
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNVisualIdentity descriptorForImageKeys]_block_invoke"];
  v7 = [v0 descriptorWithKeyDescriptors:v5 description:v6];
  v8 = descriptorForImageKeys_cn_once_object_3;
  descriptorForImageKeys_cn_once_object_3 = v7;
}

+ (id)descriptorForRequiredKeys
{
  if (descriptorForRequiredKeys_cn_once_token_2_31711 != -1)
  {
    dispatch_once(&descriptorForRequiredKeys_cn_once_token_2_31711, &__block_literal_global_4_31712);
  }

  v3 = descriptorForRequiredKeys_cn_once_object_2_31713;

  return v3;
}

void __45__CNVisualIdentity_descriptorForRequiredKeys__block_invoke()
{
  v6[3] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695CD58];
  v1 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:{0, *MEMORY[0x1E695C258], *MEMORY[0x1E695C2D8]}];
  v6[2] = v1;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:3];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNVisualIdentity descriptorForRequiredKeys]_block_invoke"];
  v4 = [v0 descriptorWithKeyDescriptors:v2 description:v3];
  v5 = descriptorForRequiredKeys_cn_once_object_2_31713;
  descriptorForRequiredKeys_cn_once_object_2_31713 = v4;
}

+ (id)log
{
  if (log_cn_once_token_1_31715 != -1)
  {
    dispatch_once(&log_cn_once_token_1_31715, &__block_literal_global_31716);
  }

  v3 = log_cn_once_object_1_31717;

  return v3;
}

uint64_t __23__CNVisualIdentity_log__block_invoke()
{
  v0 = os_log_create("com.apple.contactsui", "CNVisualIdentity");
  v1 = log_cn_once_object_1_31717;
  log_cn_once_object_1_31717 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end