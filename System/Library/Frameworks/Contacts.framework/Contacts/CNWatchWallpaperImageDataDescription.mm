@interface CNWatchWallpaperImageDataDescription
- (BOOL)abPropertyID:(int *)d;
- (BOOL)isEqualForContact:(id)contact other:(id)other;
- (id)posterDataChangeRequestsForValue:(id)value contactIdentifier:(id)identifier;
- (void)decodeUsingCoder:(id)coder contact:(id)contact;
@end

@implementation CNWatchWallpaperImageDataDescription

- (BOOL)isEqualForContact:(id)contact other:(id)other
{
  contactCopy = contact;
  otherCopy = other;
  watchWallpaperImageData = [contactCopy watchWallpaperImageData];
  if (!watchWallpaperImageData)
  {
    watchWallpaperImageData2 = [otherCopy watchWallpaperImageData];
    if (!watchWallpaperImageData2)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  watchWallpaperImageData3 = [contactCopy watchWallpaperImageData];
  watchWallpaperImageData4 = [otherCopy watchWallpaperImageData];
  v11 = [watchWallpaperImageData3 isEqual:watchWallpaperImageData4];

  if (!watchWallpaperImageData)
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
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_watchWallpaperImageData"];

  v7 = [v9 copy];
  v8 = contactCopy[83];
  contactCopy[83] = v7;
}

- (id)posterDataChangeRequestsForValue:(id)value contactIdentifier:(id)identifier
{
  v13[1] = *MEMORY[0x1E69E9840];
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
    v10 = [CNContactPosterUpdateRequest requestToUpdateWatchWallpaper:v9 forContactIdentifier:identifierCopy];
    v13[0] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  }

  else
  {
    v11 = MEMORY[0x1E695E0F0];
  }

  return v11;
}

- (BOOL)abPropertyID:(int *)d
{
  if (d)
  {
    *d = *MEMORY[0x1E698A658];
  }

  return d != 0;
}

@end