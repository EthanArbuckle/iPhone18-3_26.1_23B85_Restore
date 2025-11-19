@interface CNMeCardSharingDataSource
+ (id)localizedStringForMeCardSharingStatus:(unint64_t)a3;
- (CNMeCardSharingDataSource)init;
- (id)localizedStringForMeCardSharingStatus;
- (void)setMeCardSharingStatus:(unint64_t)a3;
@end

@implementation CNMeCardSharingDataSource

- (id)localizedStringForMeCardSharingStatus
{
  v2 = [(CNMeCardSharingDataSource *)self meCardSharingStatus];
  if (v2 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E74E3AE0[v2];
  }
}

- (void)setMeCardSharingStatus:(unint64_t)a3
{
  if (self->_meCardSharingStatus != a3)
  {
    self->_meCardSharingStatus = a3;
    CFPreferencesSetAppValue(@"CNMeCardSharingStatus", [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?], @"com.apple.Contacts");

    CFPreferencesAppSynchronize(@"com.apple.Contacts");
  }
}

- (CNMeCardSharingDataSource)init
{
  v5.receiver = self;
  v5.super_class = CNMeCardSharingDataSource;
  v2 = [(CNMeCardSharingDataSource *)&v5 init];
  if (v2)
  {
    v2->_meCardSharingStatus = CFPreferencesGetAppIntegerValue(@"CNMeCardSharingStatus", @"com.apple.Contacts", 0);
    v3 = v2;
  }

  return v2;
}

+ (id)localizedStringForMeCardSharingStatus:(unint64_t)a3
{
  if (a3 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E74E3AE0[a3];
  }
}

@end