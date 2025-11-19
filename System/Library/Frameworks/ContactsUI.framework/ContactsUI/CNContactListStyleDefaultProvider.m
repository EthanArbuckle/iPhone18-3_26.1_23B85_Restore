@interface CNContactListStyleDefaultProvider
- (double)meBannerAvatarLeadingInsetForListAppearance:(int64_t)a3;
- (double)tableSeparatorLeadingInsetForListAppearance:(int64_t)a3;
@end

@implementation CNContactListStyleDefaultProvider

- (double)meBannerAvatarLeadingInsetForListAppearance:(int64_t)a3
{
  result = 21.0;
  if (!a3)
  {
    v4 = [MEMORY[0x1E69DC938] currentDevice];
    [v4 userInterfaceIdiom];

    return 10.0;
  }

  return result;
}

- (double)tableSeparatorLeadingInsetForListAppearance:(int64_t)a3
{
  result = 11.0;
  if (!a3)
  {
    v4 = [MEMORY[0x1E69DC938] currentDevice];
    v5 = [v4 userInterfaceIdiom];

    result = 16.0;
    if ((v5 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      return 17.0;
    }
  }

  return result;
}

@end