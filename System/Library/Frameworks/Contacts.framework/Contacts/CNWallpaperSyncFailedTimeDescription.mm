@interface CNWallpaperSyncFailedTimeDescription
- (BOOL)abPropertyID:(int *)d;
- (void)decodeUsingCoder:(id)coder contact:(id)contact;
@end

@implementation CNWallpaperSyncFailedTimeDescription

- (void)decodeUsingCoder:(id)coder contact:(id)contact
{
  contactCopy = contact;
  coderCopy = coder;
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_wallpaperSyncFailedTime"];

  v7 = [v9 copy];
  v8 = contactCopy[89];
  contactCopy[89] = v7;
}

- (BOOL)abPropertyID:(int *)d
{
  if (d)
  {
    *d = *MEMORY[0x1E698A648];
  }

  return d != 0;
}

@end