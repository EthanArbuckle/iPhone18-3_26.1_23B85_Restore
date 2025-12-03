@interface CNWallpaperURIDescription
- (BOOL)abPropertyID:(int *)d;
- (BOOL)isEqualForContact:(id)contact other:(id)other;
- (void)decodeUsingCoder:(id)coder contact:(id)contact;
@end

@implementation CNWallpaperURIDescription

- (BOOL)isEqualForContact:(id)contact other:(id)other
{
  contactCopy = contact;
  otherCopy = other;
  wallpaperURI = [contactCopy wallpaperURI];
  if (!wallpaperURI)
  {
    wallpaperURI2 = [otherCopy wallpaperURI];
    if (!wallpaperURI2)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  wallpaperURI3 = [contactCopy wallpaperURI];
  wallpaperURI4 = [otherCopy wallpaperURI];
  v11 = [wallpaperURI3 isEqual:wallpaperURI4];

  if (!wallpaperURI)
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
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_wallpaperURI"];

  v7 = [v9 copy];
  v8 = contactCopy[84];
  contactCopy[84] = v7;
}

- (BOOL)abPropertyID:(int *)d
{
  if (d)
  {
    *d = *MEMORY[0x1E698A650];
  }

  return d != 0;
}

@end