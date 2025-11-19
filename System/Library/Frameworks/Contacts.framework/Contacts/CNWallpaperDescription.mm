@interface CNWallpaperDescription
+ (id)os_log;
- (BOOL)abPropertyID:(int *)a3;
- (BOOL)isEqualForContact:(id)a3 other:(id)a4;
- (id)CNValueFromABBytes:(char *)a3 length:(unint64_t)a4;
- (id)CNValueFromABValue:(void *)a3;
- (id)posterDataChangeRequestsForValue:(id)a3 contactIdentifier:(id)a4;
- (void)ABValueFromCNValue:(id)a3;
- (void)decodeUsingCoder:(id)a3 contact:(id)a4;
@end

@implementation CNWallpaperDescription

- (BOOL)isEqualForContact:(id)a3 other:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 wallpaper];
  if (!v8)
  {
    v4 = [v7 wallpaper];
    if (!v4)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  v9 = [v6 wallpaper];
  v10 = [v7 wallpaper];
  v11 = [v9 isEqual:v10];

  if (!v8)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v11;
}

- (void)decodeUsingCoder:(id)a3 contact:(id)a4
{
  v5 = a4;
  v6 = a3;
  v9 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"_wallpaper"];

  v7 = [v9 copy];
  v8 = v5[81];
  v5[81] = v7;
}

- (id)CNValueFromABBytes:(char *)a3 length:(unint64_t)a4
{
  v4 = [CNiOSABConversions dataFromABBytes:a3 length:a4];
  v5 = [[CNWallpaper alloc] initWithDataRepresentationForPersistence:v4];

  return v5;
}

- (id)posterDataChangeRequestsForValue:(id)a3 contactIdentifier:(id)a4
{
  v22[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  v7 = v5;
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    v10 = [CNContactPoster alloc];
    v11 = [v9 posterArchiveData];
    v12 = [v9 metadata];
    v13 = [v12 dataRepresentation];
    v14 = [MEMORY[0x1E695DF00] date];
    v15 = [(CNContactPoster *)v10 initWithPosterData:v11 posterMetadata:v13 lastUsedDate:v14];

    v16 = [CNContactPosterCreateRequest requestToCreatePoster:v15 forContactIdentifier:v6];
    v20 = v16;
    v17 = &v20;
  }

  else
  {
    v21 = v6;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
    v16 = [CNContactPosterDeleteRequest requestToDeletePostersForContactIdentifiers:v15];
    v22[0] = v16;
    v17 = v22;
  }

  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:{1, v20}];

  return v18;
}

+ (id)os_log
{
  if (os_log_cn_once_token_8 != -1)
  {
    +[CNWallpaperDescription(iOSAB) os_log];
  }

  v3 = os_log_cn_once_object_8;

  return v3;
}

uint64_t __39__CNWallpaperDescription_iOSAB__os_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "CNContactPropertyDescriptions+iOSAB");
  v1 = os_log_cn_once_object_8;
  os_log_cn_once_object_8 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (BOOL)abPropertyID:(int *)a3
{
  if (a3)
  {
    *a3 = *MEMORY[0x1E698A640];
  }

  return a3 != 0;
}

- (void)ABValueFromCNValue:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v6 dataRepresentationForPersistence];

  return v7;
}

- (id)CNValueFromABValue:(void *)a3
{
  v3 = a3;
  if (a3)
  {
    v4 = CFGetTypeID(a3);
    if (v4 == CFDataGetTypeID())
    {
      v5 = v3;
      v3 = [[CNWallpaper alloc] initWithDataRepresentationForPersistence:v5];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

@end