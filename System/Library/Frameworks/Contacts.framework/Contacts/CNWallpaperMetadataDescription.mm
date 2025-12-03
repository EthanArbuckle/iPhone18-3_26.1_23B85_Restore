@interface CNWallpaperMetadataDescription
- (BOOL)abPropertyID:(int *)d;
- (BOOL)isEqualForContact:(id)contact other:(id)other;
- (id)CNValueForContact:(id)contact;
- (id)CNValueFromABBytes:(char *)bytes length:(unint64_t)length;
- (id)CNValueFromABValue:(void *)value;
- (void)ABValueFromCNValue:(id)value;
- (void)decodeUsingCoder:(id)coder contact:(id)contact;
- (void)setCNValue:(id)value onContact:(id)contact;
@end

@implementation CNWallpaperMetadataDescription

- (BOOL)isEqualForContact:(id)contact other:(id)other
{
  contactCopy = contact;
  otherCopy = other;
  wallpaperMetadata = [contactCopy wallpaperMetadata];
  if (!wallpaperMetadata)
  {
    wallpaperMetadata2 = [otherCopy wallpaperMetadata];
    if (!wallpaperMetadata2)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  wallpaperMetadata3 = [contactCopy wallpaperMetadata];
  wallpaperMetadata4 = [otherCopy wallpaperMetadata];
  v11 = [wallpaperMetadata3 isEqual:wallpaperMetadata4];

  if (!wallpaperMetadata)
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
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_wallpaperMetadata"];

  v7 = [v9 copy];
  v8 = contactCopy[82];
  contactCopy[82] = v7;
}

- (id)CNValueForContact:(id)contact
{
  contactCopy = contact;
  if ([contactCopy isKeyAvailable:@"wallpaper"])
  {
    wallpaper = [contactCopy wallpaper];

    metadata = [wallpaper metadata];
    contactCopy = wallpaper;
  }

  else
  {
    metadata = [contactCopy wallpaperMetadata];
  }

  return metadata;
}

- (void)setCNValue:(id)value onContact:(id)contact
{
  valueCopy = value;
  contactCopy = contact;
  objc_opt_class();
  v14 = valueCopy;
  if (objc_opt_isKindOfClass())
  {
    v7 = v14;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  [contactCopy _setWallpaperMetadata:v14];
  if (v8)
  {
    v9 = [CNWallpaper alloc];
    wallpaper = [contactCopy wallpaper];
    posterArchiveData = [wallpaper posterArchiveData];
    wallpaper2 = [contactCopy wallpaper];
    v13 = -[CNWallpaper initWithPosterArchiveData:metadata:contentIsSensitive:](v9, "initWithPosterArchiveData:metadata:contentIsSensitive:", posterArchiveData, v8, [wallpaper2 contentIsSensitive]);

    [contactCopy _setWallpaper:v13];
  }
}

- (id)CNValueFromABBytes:(char *)bytes length:(unint64_t)length
{
  v4 = [CNiOSABConversions dataFromABBytes:bytes length:length];
  v5 = [[CNWallpaperMetadata alloc] initWithDataRepresentation:v4];

  return v5;
}

- (BOOL)abPropertyID:(int *)d
{
  if (d)
  {
    *d = *MEMORY[0x1E698A638];
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

  dataRepresentation = [v6 dataRepresentation];

  return dataRepresentation;
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
      valueCopy = [[CNWallpaperMetadata alloc] initWithDataRepresentation:v5];
    }

    else
    {
      valueCopy = 0;
    }
  }

  return valueCopy;
}

@end