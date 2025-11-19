@interface CNWatchWallpaperImageDataDescription
- (BOOL)abPropertyID:(int *)a3;
- (BOOL)isEqualForContact:(id)a3 other:(id)a4;
- (id)posterDataChangeRequestsForValue:(id)a3 contactIdentifier:(id)a4;
- (void)decodeUsingCoder:(id)a3 contact:(id)a4;
@end

@implementation CNWatchWallpaperImageDataDescription

- (BOOL)isEqualForContact:(id)a3 other:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 watchWallpaperImageData];
  if (!v8)
  {
    v4 = [v7 watchWallpaperImageData];
    if (!v4)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  v9 = [v6 watchWallpaperImageData];
  v10 = [v7 watchWallpaperImageData];
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
  v9 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"_watchWallpaperImageData"];

  v7 = [v9 copy];
  v8 = v5[83];
  v5[83] = v7;
}

- (id)posterDataChangeRequestsForValue:(id)a3 contactIdentifier:(id)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
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
    v10 = [CNContactPosterUpdateRequest requestToUpdateWatchWallpaper:v9 forContactIdentifier:v6];
    v13[0] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  }

  else
  {
    v11 = MEMORY[0x1E695E0F0];
  }

  return v11;
}

- (BOOL)abPropertyID:(int *)a3
{
  if (a3)
  {
    *a3 = *MEMORY[0x1E698A658];
  }

  return a3 != 0;
}

@end