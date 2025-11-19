@interface CNWallpaperMetadataDescription
- (BOOL)abPropertyID:(int *)a3;
- (BOOL)isEqualForContact:(id)a3 other:(id)a4;
- (id)CNValueForContact:(id)a3;
- (id)CNValueFromABBytes:(char *)a3 length:(unint64_t)a4;
- (id)CNValueFromABValue:(void *)a3;
- (void)ABValueFromCNValue:(id)a3;
- (void)decodeUsingCoder:(id)a3 contact:(id)a4;
- (void)setCNValue:(id)a3 onContact:(id)a4;
@end

@implementation CNWallpaperMetadataDescription

- (BOOL)isEqualForContact:(id)a3 other:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 wallpaperMetadata];
  if (!v8)
  {
    v4 = [v7 wallpaperMetadata];
    if (!v4)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  v9 = [v6 wallpaperMetadata];
  v10 = [v7 wallpaperMetadata];
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
  v9 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"_wallpaperMetadata"];

  v7 = [v9 copy];
  v8 = v5[82];
  v5[82] = v7;
}

- (id)CNValueForContact:(id)a3
{
  v3 = a3;
  if ([v3 isKeyAvailable:@"wallpaper"])
  {
    v4 = [v3 wallpaper];

    v5 = [v4 metadata];
    v3 = v4;
  }

  else
  {
    v5 = [v3 wallpaperMetadata];
  }

  return v5;
}

- (void)setCNValue:(id)a3 onContact:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  v14 = v5;
  if (objc_opt_isKindOfClass())
  {
    v7 = v14;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  [v6 _setWallpaperMetadata:v14];
  if (v8)
  {
    v9 = [CNWallpaper alloc];
    v10 = [v6 wallpaper];
    v11 = [v10 posterArchiveData];
    v12 = [v6 wallpaper];
    v13 = -[CNWallpaper initWithPosterArchiveData:metadata:contentIsSensitive:](v9, "initWithPosterArchiveData:metadata:contentIsSensitive:", v11, v8, [v12 contentIsSensitive]);

    [v6 _setWallpaper:v13];
  }
}

- (id)CNValueFromABBytes:(char *)a3 length:(unint64_t)a4
{
  v4 = [CNiOSABConversions dataFromABBytes:a3 length:a4];
  v5 = [[CNWallpaperMetadata alloc] initWithDataRepresentation:v4];

  return v5;
}

- (BOOL)abPropertyID:(int *)a3
{
  if (a3)
  {
    *a3 = *MEMORY[0x1E698A638];
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

  v7 = [v6 dataRepresentation];

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
      v3 = [[CNWallpaperMetadata alloc] initWithDataRepresentation:v5];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

@end