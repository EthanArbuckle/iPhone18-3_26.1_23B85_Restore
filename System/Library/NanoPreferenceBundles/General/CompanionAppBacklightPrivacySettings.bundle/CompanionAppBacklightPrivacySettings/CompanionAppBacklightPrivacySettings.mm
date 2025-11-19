void sub_15C0(uint64_t a1)
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_178C;
  v22 = sub_179C;
  v23 = 0;
  if ([*(a1 + 32) count] == &dword_0 + 1)
  {
    v2 = [*(a1 + 32) firstObject];
    v3 = [v2 application];
    v4 = [v3 bundleIdentifier];
    v5 = [v3 localizedName];
    v6 = *(*(a1 + 40) + OBJC_IVAR___PSListController__specifiers);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_17A4;
    v12[3] = &unk_8200;
    v7 = v4;
    v13 = v7;
    v8 = v5;
    v9 = *(a1 + 40);
    v14 = v8;
    v15 = v9;
    v10 = v2;
    v16 = v10;
    v17 = &v18;
    [v6 enumerateObjectsUsingBlock:v12];
  }

  v11 = *(a1 + 40);
  if (v19[5])
  {
    [v11 reloadSpecifier:?];
  }

  else
  {
    [v11 reloadSpecifiers];
  }

  _Block_object_dispose(&v18, 8);
}

void sub_1764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_178C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_17A4(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a1[4];
  v9 = [v7 identifier];
  if ([v8 isEqualToString:v9])
  {
    v10 = a1[5];
    v11 = [v7 name];
    LODWORD(v10) = [v10 isEqualToString:v11];

    if (v10)
    {
      v12 = cslprf_settings_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v14 = a1[4];
        v13 = a1[5];
        v15 = 138412802;
        v16 = v13;
        v17 = 2112;
        v18 = v14;
        v19 = 2112;
        v20 = v7;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "%@:%@ changed reloading specifier %@", &v15, 0x20u);
      }

      [*(a1[6] + 144) updateSpecifier:v7 withSettings:a1[7]];
      objc_storeStrong((*(a1[8] + 8) + 40), a2);
      *a4 = 1;
    }
  }

  else
  {
  }
}

int64_t sub_1D08(id a1, CSLPRFAppBacklightPrivacySettings *a2, CSLPRFAppBacklightPrivacySettings *a3)
{
  v4 = a3;
  v5 = [(CSLPRFAppBacklightPrivacySettings *)a2 application];
  v6 = [(CSLPRFAppBacklightPrivacySettings *)v4 application];

  v7 = [v5 compare:v6];
  return v7;
}

void sub_2684(uint64_t a1, NSObject *a2)
{
  v3 = [*(a1 + OBJC_IVAR___PSViewController__specifier) propertyForKey:@"CSLPRFAppBacklightPrivacyType"];
  v4 = 138543362;
  v5 = v3;
  _os_log_fault_impl(&dword_0, a2, OS_LOG_TYPE_FAULT, "Got unexpected privacy type %{public}@", &v4, 0xCu);
}