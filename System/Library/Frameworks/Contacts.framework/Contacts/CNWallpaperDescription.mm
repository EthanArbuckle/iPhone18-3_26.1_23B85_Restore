@interface CNWallpaperDescription
+ (id)os_log;
- (BOOL)abPropertyID:(int *)d;
- (BOOL)isEqualForContact:(id)contact other:(id)other;
- (id)CNValueFromABBytes:(char *)bytes length:(unint64_t)length;
- (id)CNValueFromABValue:(void *)value;
- (id)posterDataChangeRequestsForValue:(id)value contactIdentifier:(id)identifier;
- (void)ABValueFromCNValue:(id)value;
- (void)decodeUsingCoder:(id)coder contact:(id)contact;
@end

@implementation CNWallpaperDescription

- (BOOL)isEqualForContact:(id)contact other:(id)other
{
  contactCopy = contact;
  otherCopy = other;
  wallpaper = [contactCopy wallpaper];
  if (!wallpaper)
  {
    wallpaper2 = [otherCopy wallpaper];
    if (!wallpaper2)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  wallpaper3 = [contactCopy wallpaper];
  wallpaper4 = [otherCopy wallpaper];
  v11 = [wallpaper3 isEqual:wallpaper4];

  if (!wallpaper)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v11;
}

- (void)decodeUsingCoder:(id)coder contact:(id)contact
{
  contactCopy = contact;
  coderCopy = coder;
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_wallpaper"];

  v7 = [v9 copy];
  v8 = contactCopy[81];
  contactCopy[81] = v7;
}

- (id)CNValueFromABBytes:(char *)bytes length:(unint64_t)length
{
  v4 = [CNiOSABConversions dataFromABBytes:bytes length:length];
  v5 = [[CNWallpaper alloc] initWithDataRepresentationForPersistence:v4];

  return v5;
}

- (id)posterDataChangeRequestsForValue:(id)value contactIdentifier:(id)identifier
{
  v22[1] = *MEMORY[0x1E69E9840];
  valueCopy = value;
  identifierCopy = identifier;
  objc_opt_class();
  v7 = valueCopy;
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
    posterArchiveData = [v9 posterArchiveData];
    metadata = [v9 metadata];
    dataRepresentation = [metadata dataRepresentation];
    date = [MEMORY[0x1E695DF00] date];
    v15 = [(CNContactPoster *)v10 initWithPosterData:posterArchiveData posterMetadata:dataRepresentation lastUsedDate:date];

    v16 = [CNContactPosterCreateRequest requestToCreatePoster:v15 forContactIdentifier:identifierCopy];
    v20 = v16;
    v17 = &v20;
  }

  else
  {
    v21 = identifierCopy;
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

- (BOOL)abPropertyID:(int *)d
{
  if (d)
  {
    *d = *MEMORY[0x1E698A640];
  }

  return d != 0;
}

- (void)ABValueFromCNValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  v4 = valueCopy;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  dataRepresentationForPersistence = [v6 dataRepresentationForPersistence];

  return dataRepresentationForPersistence;
}

- (id)CNValueFromABValue:(void *)value
{
  valueCopy = value;
  if (value)
  {
    v4 = CFGetTypeID(value);
    if (v4 == CFDataGetTypeID())
    {
      v5 = valueCopy;
      valueCopy = [[CNWallpaper alloc] initWithDataRepresentationForPersistence:v5];
    }

    else
    {
      valueCopy = 0;
    }
  }

  return valueCopy;
}

@end