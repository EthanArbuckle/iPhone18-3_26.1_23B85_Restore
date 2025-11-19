void sub_E44(id a1)
{
  qword_15928 = os_log_create("com.apple.contacts.accounts", "dataclass-owner");

  _objc_release_x1();
}

void sub_1C5C(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_1EDC(id a1)
{
  qword_15938 = os_log_create("com.apple.contacts.accounts-plugin", "contacts-dataclass-owner");

  _objc_release_x1();
}

CNPair *__cdecl sub_2584(id a1, ACAccount *a2)
{
  v2 = a2;
  v3 = [(ACAccount *)v2 identifier];
  v4 = [(ACAccount *)v2 _cn_altDSID];

  v5 = [CNPair pairWithFirst:v3 second:v4];

  return v5;
}

void sub_3524(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_35A0(id a1)
{
  qword_15948 = os_log_create("com.apple.contacts.accounts-plugin", "contacts-dataclass-owner");

  _objc_release_x1();
}

void sub_3A64(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_3AFC;
  v6[3] = &unk_10430;
  v7 = v3;
  v5 = v3;
  [v4 _cn_each:v6];
}

void sub_3B08(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
  {
    sub_727C();
  }
}

void sub_3C6C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_72E4();
  }
}

void sub_4198(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setShouldFaultOnPossibleDataLoss:0];
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_423C;
  v6[3] = &unk_104F8;
  v7 = v3;
  v5 = v3;
  [v4 _cn_each:v6];
}

void sub_4248(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_751C(a1, v4);
  }
}

void sub_4568(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 identifier];
  [v4 addContainer:v2 toAccountWithIdentifier:v5];
}

void sub_45D8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
  {
    sub_769C();
  }
}

void sub_4628(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 identifier];
  [v4 setContainer:v2 asDefaultContainerOfAccountWithIdentifier:v5];
}

void sub_4698(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
  {
    sub_7704();
  }
}

void sub_4ACC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
  {
    sub_776C(v3, a1);
  }
}

void sub_4C70(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [objc_opt_class() removeDelegate:v3];
}

void sub_4F68(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setShouldFaultOnPossibleDataLoss:0];
  [v3 removeAccount:*(a1 + 32)];
}

void sub_4FC0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_7980(a1, v4);
  }
}

void sub_5540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_5568(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 contactsInContainer:v3];
  v5 = [v4 _cn_map:&stru_106D0];
  v6 = [CNPair pairWithFirst:v3 second:v5];

  return v6;
}

void sub_5600(void *a1, void *a2)
{
  v6 = a2;
  v3 = [v6 second];
  if (((*(CNIsArrayEmpty + 16))(CNIsArrayEmpty, v3) & 1) == 0)
  {
    v4 = a1[4];
    v5 = [v6 first];
    LOBYTE(v4) = [v4 moveContacts:v3 fromContainer:v5 toContainer:a1[5]];

    if ((v4 & 1) == 0)
    {
      *(*(a1[6] + 8) + 24) = 0;
    }
  }
}

void sub_5C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_5C60(uint64_t result, uint64_t a2, _BYTE *a3)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a3 = 1;
  return result;
}

CNMutableContainer *__cdecl sub_64A4(id a1, CNContainer *a2)
{
  v2 = [(CNContainer *)a2 mutableCopy];

  return v2;
}

CNMutableContact *__cdecl sub_64D0(id a1, CNMutableContact *a2)
{
  v2 = [(CNMutableContact *)a2 mutableCopy];

  return v2;
}

void sub_65B4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_65E0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_6658(id a1)
{
  qword_15958 = os_log_create("com.apple.contacts.accounts", "dataclass-owner-plugin");

  _objc_release_x1();
}

Class sub_6A48()
{
  if (qword_15970 != -1)
  {
    sub_8224();
  }

  result = objc_getClass("DMFiCloudPolicyMonitor");
  qword_15960 = result;
  off_15918 = sub_6A9C;
  return result;
}

void sub_6AA8(id a1)
{
  qword_15968 = dlopen("/System/Library/PrivateFrameworks/DeviceManagement.framework/DeviceManagement", 1);
  if (!qword_15968 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_8238();
  }
}

void sub_6E5C()
{
  sub_3550();
  v2 = [v1 account];
  v3 = [v2 accountType];
  [v3 identifier];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_3544() account];
  v5 = [v4 username];
  sub_350C();
  sub_3524(&dword_0, v6, v7, "Failed to create an Contacts account for iCloud account %@ (%@)", v8, v9, v10, v11, v12);
}

void sub_6F30()
{
  sub_3550();
  v2 = [v1 account];
  v3 = [v2 accountType];
  [v3 identifier];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_3544() account];
  v5 = [v4 username];
  sub_350C();
  sub_3524(&dword_0, v6, v7, "Could not from the Contacts container for iCloud account %@ (%@) into the Contacts local container", v8, v9, v10, v11, v12);
}

void sub_7004()
{
  sub_3550();
  v2 = [v1 account];
  v3 = [v2 accountType];
  [v3 identifier];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_3544() account];
  v5 = [v4 username];
  sub_350C();
  sub_3524(&dword_0, v6, v7, "Failed to remove the Contacts account for iCloud account %@ (%@)", v8, v9, v10, v11, v12);
}

void sub_70D8()
{
  sub_3550();
  v2 = [v1 account];
  v3 = [v2 accountType];
  [v3 description];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_3544() account];
  v5 = [v4 username];
  sub_350C();
  sub_3524(&dword_0, v6, v7, "Failed to remove the Contacts account for account %@ (%@)", v8, v9, v10, v11, v12);
}

void sub_71C0()
{
  sub_6608();
  v2 = [v1 identifier];
  v3 = [v0 valueForKey:@"identifier"];
  sub_65D4();
  sub_6580();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_734C()
{
  sub_6608();
  v1 = [v0 identifier];
  sub_65A8();
  sub_6570();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_748C()
{
  sub_6608();
  [v0 count];
  [sub_65FC() iOSLegacyIdentifier];
  sub_6590();
  sub_6570();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_751C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [sub_65FC() count];
  sub_655C();
  sub_3524(&dword_0, v5, v6, "error deleting %ld contacts: %{public}@", v7, v8, v9, v10, v11);
}

void sub_75B0(void *a1)
{
  v2 = [0 identifier];
  v3 = [a1 valueForKey:@"identifier"];
  sub_6580();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

void sub_776C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  sub_65A8();
  sub_65B4(&dword_0, v3, v4, "error creating account %@: %@");
}

void sub_78B8(void *a1)
{
  [a1 identifier];
  objc_claimAutoreleasedReturnValue();
  v3 = [sub_65FC() externalIdentifierString];
  [a1 iOSLegacyIdentifier];
  sub_65D4();
  sub_6570();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x1Cu);
}

void sub_7980(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [sub_65FC() externalIdentifierString];
  sub_65A8();
  sub_3524(&dword_0, v6, v7, "cound not remove account %@: %@", v8, v9, v10, v11, v12);
}

void sub_7A28(void *a1)
{
  [a1 identifier];
  objc_claimAutoreleasedReturnValue();
  [sub_65FC() iOSLegacyIdentifier];
  sub_6590();
  sub_6570();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_7B30(void *a1)
{
  v1 = [a1 identifier];
  sub_65A8();
  sub_6580();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_7BBC(void *a1)
{
  [a1 identifier];
  objc_claimAutoreleasedReturnValue();
  [sub_65FC() iOSLegacyIdentifier];
  sub_6590();
  sub_6570();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_7CC0(void *a1, void *a2, NSObject *a3)
{
  v5 = a1;
  v6 = [a1 identifier];
  LODWORD(v5) = [v5 iOSLegacyIdentifier];
  v7 = [a2 identifier];
  v8 = [a2 externalIdentifierString];
  v9 = 138544386;
  v10 = v6;
  v11 = 1024;
  v12 = v5;
  v13 = 2114;
  v14 = v7;
  v15 = 2114;
  v16 = v8;
  v17 = 1024;
  v18 = [a2 iOSLegacyIdentifier];
  _os_log_debug_impl(&dword_0, a3, OS_LOG_TYPE_DEBUG, "Found default container (identifier: %{public}@  legacy id = %d) for account (identifier: %{public}@  external identifier: %{public}@ legacy id = %d)", &v9, 0x2Cu);
}

void sub_7DD4()
{
  sub_6608();
  v1 = v0;
  v2 = [v0 identifier];
  v3 = [v1 externalIdentifierString];
  sub_65D4();
  sub_6580();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

void sub_7E94()
{
  sub_6608();
  v1 = v0;
  v2 = [v0 identifier];
  v3 = [v1 externalIdentifierString];
  [v1 iOSLegacyIdentifier];
  sub_65D4();
  sub_6570();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x26u);
}

void sub_7FDC()
{
  sub_6608();
  [v1 count];
  v2 = [sub_65FC() identifier];
  v3 = [v0 externalIdentifierString];
  [v0 iOSLegacyIdentifier];
  sub_65D4();
  sub_6570();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x26u);
}

void sub_80BC()
{
  sub_6608();
  v1 = [v0 externalIdentifierString];
  sub_655C();
  sub_6580();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_8168(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Error requesting iCloud logout policy: %@", &v2, 0xCu);
}

void sub_8238()
{
  v0 = *__error();
  v1[0] = 67109120;
  v1[1] = v0;
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to Soft Link: /System/Library/PrivateFrameworks/DeviceManagement.framework/DeviceManagement (%d)", v1, 8u);
}