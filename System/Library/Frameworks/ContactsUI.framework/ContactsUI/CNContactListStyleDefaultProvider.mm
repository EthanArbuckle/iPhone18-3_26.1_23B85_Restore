@interface CNContactListStyleDefaultProvider
- (double)meBannerAvatarLeadingInsetForListAppearance:(int64_t)appearance;
- (double)tableSeparatorLeadingInsetForListAppearance:(int64_t)appearance;
@end

@implementation CNContactListStyleDefaultProvider

- (double)meBannerAvatarLeadingInsetForListAppearance:(int64_t)appearance
{
  result = 21.0;
  if (!appearance)
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    [currentDevice userInterfaceIdiom];

    return 10.0;
  }

  return result;
}

- (double)tableSeparatorLeadingInsetForListAppearance:(int64_t)appearance
{
  result = 11.0;
  if (!appearance)
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    result = 16.0;
    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      return 17.0;
    }
  }

  return result;
}

@end