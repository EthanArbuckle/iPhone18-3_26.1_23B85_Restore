void sub_FE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1018(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  [v5 migrateImagesDatabase:v6 index:a3];
  LOBYTE(a3) = [*(a1 + 32) migrateMainDatabase:v6 index:a3];

  *(*(*(a1 + 40) + 8) + 24) |= a3;
}

void sub_1718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1840()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_C330;
  v7 = qword_C330;
  if (!qword_C330)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_2DF8;
    v3[3] = &unk_82D8;
    v3[4] = &v4;
    sub_2DF8(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2B88()
{
  v0 = _CPCreateUTF8StringFromCFString();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  memset(&v4, 0, sizeof(v4));
  if (stat(v0, &v4))
  {
    st_size_low = 0;
  }

  else
  {
    st_size_low = LODWORD(v4.st_size);
  }

  free(v1);
  return st_size_low;
}

Class sub_2C58(uint64_t a1)
{
  v3[0] = 0;
  if (!qword_C328)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_2D84;
    v3[4] = &unk_8310;
    v3[5] = v3;
    v4 = off_82F8;
    v5 = 0;
    qword_C328 = _sl_dlopen();
  }

  if (!qword_C328)
  {
    sub_31F8(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("NSPersonNameComponentsFormatterPreferences");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_317C();
  }

  qword_C320 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_2D84(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_C328 = result;
  return result;
}

Class sub_2DF8(uint64_t a1)
{
  sub_2E50();
  result = objc_getClass("CNContactPosterDataPersistentStoreManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_3278();
  }

  qword_C330 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_2E50()
{
  v0[0] = 0;
  if (!qword_C338)
  {
    v0[1] = _NSConcreteStackBlock;
    v0[2] = 3221225472;
    v0[3] = sub_2F44;
    v0[4] = &unk_8310;
    v0[5] = v0;
    v1 = off_8330;
    v2 = 0;
    qword_C338 = _sl_dlopen();
  }

  if (!qword_C338)
  {
    sub_32F4(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t sub_2F44(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_C338 = result;
  return result;
}

Class sub_2FB8(uint64_t a1)
{
  sub_2E50();
  result = objc_getClass("CNContactPosterMigrator");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_3374();
  }

  qword_C340 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_3010(uint64_t a1)
{
  sub_2E50();
  result = objc_getClass("CNCoreImageDerivedColorGenerator");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_33F0();
  }

  qword_C348 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_3068(void *a1, NSObject *a2)
{
  v3 = [a1 description];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "AB Migration - Contact metadata db was not migrated, %@", &v4, 0xCu);
}

void sub_3100(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "AB Migration - Failed to save Contact Provider content deletion, %@", &v3, 0xCu);
}

void sub_317C()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getNSPersonNameComponentsFormatterPreferencesClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AddressBookDataMigrator.m" lineNumber:44 description:{@"Unable to find class %s", "NSPersonNameComponentsFormatterPreferences"}];

  __break(1u);
}

void sub_31F8(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *IntlPreferencesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AddressBookDataMigrator.m" lineNumber:43 description:{@"%s", *a1}];

  __break(1u);
}

void sub_3278()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getCNContactPosterDataPersistentStoreManagerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AddressBookDataMigrator.m" lineNumber:47 description:{@"Unable to find class %s", "CNContactPosterDataPersistentStoreManager"}];

  __break(1u);
}

void sub_32F4(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *ContactsLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AddressBookDataMigrator.m" lineNumber:46 description:{@"%s", *a1}];

  __break(1u);
}

void sub_3374()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getCNContactPosterMigratorClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AddressBookDataMigrator.m" lineNumber:54 description:{@"Unable to find class %s", "CNContactPosterMigrator"}];

  __break(1u);
}

void sub_33F0()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getCNCoreImageDerivedColorGeneratorClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AddressBookDataMigrator.m" lineNumber:48 description:{@"Unable to find class %s", "CNCoreImageDerivedColorGenerator"}];

  __break(1u);
  ABAddressBookCopyAllPeopleForBufferPredicate();
}