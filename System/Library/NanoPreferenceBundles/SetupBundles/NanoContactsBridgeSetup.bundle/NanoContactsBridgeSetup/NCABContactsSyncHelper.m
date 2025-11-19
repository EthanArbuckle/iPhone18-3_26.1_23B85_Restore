@interface NCABContactsSyncHelper
+ (id)localDeviceContactsCount;
+ (int)_contactsCountStatusForFamilyMember:(id)a3;
+ (int)contactsCountStatusForFamilyMember:(id)a3 contactsSyncAndNetworkAccessEnabled:(BOOL)a4;
+ (void)triggerContactsSyncForFamilyMember:(id)a3;
@end

@implementation NCABContactsSyncHelper

+ (int)contactsCountStatusForFamilyMember:(id)a3 contactsSyncAndNetworkAccessEnabled:(BOOL)a4
{
  if (a4)
  {
    return [a1 _contactsCountStatusForFamilyMember:a3];
  }

  else
  {
    return 1;
  }
}

+ (int)_contactsCountStatusForFamilyMember:(id)a3
{
  v3 = [CNContactStore storeForFamilyMember:a3];
  v4 = [[CNContactFetchRequest alloc] initWithKeysToFetch:&__NSArray0__struct];
  v20 = 0;
  v5 = [v3 contactCountForFetchRequest:v4 error:&v20];
  v6 = v20;
  v7 = [v5 unsignedIntegerValue];
  v8 = v7 != 0;
  v9 = NCABCSH_ContactCounts_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v22 = "+[NCABContactsSyncHelper _contactsCountStatusForFamilyMember:]";
    v23 = 2114;
    v24 = v5;
    v25 = 1024;
    v26 = v7 != 0;
    v27 = 2114;
    v28 = v6;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%{public}s - contactCountNumber: %{public}@ -> hasContacts: %d, error: %{public}@", buf, 0x26u);
  }

  if (v6 || v7)
  {
    v10 = v5;
    if (v6)
    {
      goto LABEL_12;
    }
  }

  else
  {
    [v4 setShouldFailIfAccountNotYetSynced:1];
    v19 = 0;
    v10 = [v3 contactCountForFetchRequest:v4 error:&v19];
    v6 = v19;

    v11 = [v10 unsignedIntegerValue];
    v8 = v11 != 0;
    v12 = NCABCSH_ContactCounts_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446978;
      v22 = "+[NCABContactsSyncHelper _contactsCountStatusForFamilyMember:]";
      v23 = 2114;
      v24 = v10;
      v25 = 1024;
      v26 = v11 != 0;
      v27 = 2114;
      v28 = v6;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%{public}s - RETRIED with shouldFailIfAccountNotYetSynced; contactCountNumber: %{public}@ -> hasContacts: %d, error: %{public}@", buf, 0x26u);
    }

    if (v6)
    {
      goto LABEL_12;
    }
  }

  if (v8)
  {
    v13 = 5;
    goto LABEL_24;
  }

LABEL_12:
  if (v6 == 0 && !v8)
  {
    v13 = 4;
    goto LABEL_24;
  }

  v14 = [v6 domain];
  if (![v14 isEqual:CNErrorDomain])
  {

    goto LABEL_20;
  }

  v15 = [v6 code];

  if (v15 != &stru_3D8.segname[7])
  {
LABEL_20:
    v16 = NCABCSH_ContactCounts_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_E060(v4, v6, v16);
    }

    v13 = 3;
    goto LABEL_23;
  }

  v16 = NCABCSH_ContactCounts_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v22 = "+[NCABContactsSyncHelper _contactsCountStatusForFamilyMember:]";
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "%{public}s - got CNErrorAccountNotYetSynced", buf, 0xCu);
  }

  v13 = 2;
LABEL_23:

LABEL_24:
  v17 = NCABCSH_ContactCounts_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v22 = "+[NCABContactsSyncHelper _contactsCountStatusForFamilyMember:]";
    v23 = 1024;
    LODWORD(v24) = v13;
    _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "%{public}s - contactsCountStatus: %d", buf, 0x12u);
  }

  return v13;
}

+ (id)localDeviceContactsCount
{
  v2 = objc_alloc_init(CNContactStore);
  v3 = [[CNContactFetchRequest alloc] initWithKeysToFetch:&__NSArray0__struct];
  v8 = 0;
  v4 = [v2 contactCountForFetchRequest:v3 error:&v8];
  v5 = v8;
  v6 = NCABCSH_ContactCounts_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v10 = "+[NCABContactsSyncHelper localDeviceContactsCount]";
    v11 = 2114;
    v12 = v4;
    v13 = 2114;
    v14 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%{public}s - contactCountNumber: %{public}@, error: %{public}@", buf, 0x20u);
  }

  return v4;
}

+ (void)triggerContactsSyncForFamilyMember:(id)a3
{
  v3 = a3;
  v4 = NCABCSH_ContactCounts_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "+[NCABContactsSyncHelper triggerContactsSyncForFamilyMember:]";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: %@", &v5, 0x16u);
  }

  [CNAccount requestAccountSyncWithOptions:1];
}

@end