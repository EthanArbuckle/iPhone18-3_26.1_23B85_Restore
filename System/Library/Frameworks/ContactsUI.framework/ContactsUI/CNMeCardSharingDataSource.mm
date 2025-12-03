@interface CNMeCardSharingDataSource
+ (id)localizedStringForMeCardSharingStatus:(unint64_t)status;
- (CNMeCardSharingDataSource)init;
- (id)localizedStringForMeCardSharingStatus;
- (void)setMeCardSharingStatus:(unint64_t)status;
@end

@implementation CNMeCardSharingDataSource

- (id)localizedStringForMeCardSharingStatus
{
  meCardSharingStatus = [(CNMeCardSharingDataSource *)self meCardSharingStatus];
  if (meCardSharingStatus > 2)
  {
    return 0;
  }

  else
  {
    return off_1E74E3AE0[meCardSharingStatus];
  }
}

- (void)setMeCardSharingStatus:(unint64_t)status
{
  if (self->_meCardSharingStatus != status)
  {
    self->_meCardSharingStatus = status;
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

+ (id)localizedStringForMeCardSharingStatus:(unint64_t)status
{
  if (status > 2)
  {
    return 0;
  }

  else
  {
    return off_1E74E3AE0[status];
  }
}

@end