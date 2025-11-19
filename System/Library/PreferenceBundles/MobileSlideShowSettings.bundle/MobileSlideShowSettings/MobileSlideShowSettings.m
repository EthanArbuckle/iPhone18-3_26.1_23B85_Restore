unint64_t sub_2208()
{
  result = qword_330B0;
  if (!qword_330B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_330B0);
  }

  return result;
}

uint64_t sub_2278(void *a1)
{
  v2 = sub_2A50(&qword_330B8, &qword_21328);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v10 - v5;
  *(swift_allocObject() + 16) = a1;
  sub_191DC();
  sub_2AD8();
  v7 = a1;
  sub_1925C();
  *(swift_allocObject() + 16) = v7;
  sub_2CD4();
  v8 = v7;
  sub_1921C();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_2404(uint64_t a1)
{
  v2 = *(*(sub_191FC() - 8) + 64);
  __chkstk_darwin();
  sub_192AC();
  sub_1929C();
  sub_1928C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2EF8();
  v3 = [objc_allocWithZone(PSSpecifier) init];
  v4 = sub_1927C();
  sub_2E10(a1, v4, v5, v3);
  sub_191EC();
  sub_191CC();
}

uint64_t sub_2550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1920C();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v7 = *(*(sub_2A50(&qword_330D0, &qword_21340) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v8 = sub_1919C();
  v3[10] = v8;
  v9 = *(v8 - 8);
  v3[11] = v9;
  v10 = *(v9 + 64) + 15;
  v3[12] = swift_task_alloc();
  v11 = sub_191BC();
  v3[13] = v11;
  v12 = *(v11 - 8);
  v3[14] = v12;
  v13 = *(v12 + 64) + 15;
  v3[15] = swift_task_alloc();
  sub_192AC();
  v3[16] = sub_1929C();
  v15 = sub_1928C();

  return _swift_task_switch(sub_2744, v15, v14);
}

uint64_t sub_2744()
{
  v2 = v0 + 10;
  v1 = v0[10];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[9];
  v6 = v0[3];

  sub_1923C();
  sub_1917C();
  if (sub_2D80(v5, 1, v1) == 1)
  {
    v7 = v0[8];
    v8 = v0 + 8;
    v10 = v0[2];
    v9 = v0[3];
    sub_2DA8(v0[9]);
    sub_1922C();
    sub_1924C();
    v11 = v0 + 6;
    v2 = v0 + 5;
    goto LABEL_17;
  }

  v8 = v0 + 12;
  v12 = v0[15];
  v11 = v0 + 11;
  v13 = v0[7];
  v14 = v0[3];
  (*(v0[11] + 32))(v0[12], v0[9], v0[10]);
  sub_1922C();
  v15 = sub_191AC();
  v17 = v16;
  v18 = sub_1918C();
  if (v19)
  {
    v20 = v18;
    v21 = v19;
    v22 = v0[4];

    v23 = &selRef_setSpecifierIdentifierToScrollAndHighlight_;
    v24 = v20;
    v25 = v21;
    v26 = v22;
  }

  else
  {
    v27 = HIBYTE(v17) & 0xF;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v27 = v15 & 0xFFFFFFFFFFFFLL;
    }

    if (!v27 || (v15 == 0xD000000000000019 ? (v28 = 0x800000000001E6F0 == v17) : (v28 = 0), v28 || (sub_192CC() & 1) != 0 || (, v29._rawValue = &off_2CB28, v48._countAndFlagsBits = v15, v48._object = v17, v30 = sub_192BC(v29, v48), , v30)))
    {

      goto LABEL_16;
    }

    v26 = v0[4];
    v23 = &selRef_setSpecifierIdentifierToScrollAndSelect_;
    v24 = v15;
    v25 = v17;
  }

  sub_2E8C(v24, v25, v26, v23);
LABEL_16:
  v32 = v0[6];
  v31 = v0[7];
  v33 = v0[5];
  v34 = v0[2];
  sub_1924C();
  (*(v32 + 8))(v31, v33);
LABEL_17:
  v35 = *v8;
  v36 = *v2;
  v37 = *v11;
  v39 = v0[14];
  v38 = v0[15];
  v41 = v0[12];
  v40 = v0[13];
  v43 = v0[8];
  v42 = v0[9];
  v44 = v0[7];
  (*(v37 + 8))(v35, v36);
  (*(v39 + 8))(v38, v40);

  v45 = v0[1];

  return v45();
}

id sub_29E8()
{
  v0 = objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay);

  return [v0 init];
}

id sub_2A28@<X0>(void *a1@<X8>)
{
  result = sub_29E8();
  *a1 = result;
  return result;
}

uint64_t sub_2A50(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2A98()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_2AD8()
{
  result = qword_330C0;
  if (!qword_330C0)
  {
    sub_191DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_330C0);
  }

  return result;
}

uint64_t sub_2B30(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2BE0;

  return sub_2550(a1, a2, v6);
}

uint64_t sub_2BE0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_2CD4()
{
  result = qword_330C8;
  if (!qword_330C8)
  {
    sub_2D38(&qword_330B8, &qword_21328);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_330C8);
  }

  return result;
}

uint64_t sub_2D38(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2DA8(uint64_t a1)
{
  v2 = sub_2A50(&qword_330D0, &qword_21340);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2E10(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1926C();

  [a4 setProperty:a1 forKey:v6];
}

void sub_2E8C(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_1926C();

  [a3 *a4];
}

unint64_t sub_2EF8()
{
  result = qword_330D8;
  if (!qword_330D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_330D8);
  }

  return result;
}

uint64_t sub_2F4C()
{
  sub_2D38(&qword_330B8, &qword_21328);
  sub_2CD4();
  return swift_getOpaqueTypeConformance2();
}

void sub_31C4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = SettingsBaseControllerLocalizedStringResource(@"PHOTOS_SETTINGS_TITLE");
  [*(a1 + 32) pe_emitNavigationEventForApplicationSettingsWithApplicationBundleIdentifier:@"com.apple.mobileslideshow" title:v7 localizedNavigationComponents:v6 deepLink:v5];
}

id SettingsBaseControllerLocalizedStringResource(void *a1)
{
  v1 = a1;
  v2 = [_NSLocalizedStringResource alloc];
  v3 = +[NSLocale currentLocale];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 bundleURL];
  v6 = [v2 initWithKey:v1 table:@"Photos" locale:v3 bundleURL:v5];

  return v6;
}

void sub_35A0(void *a1, void *a2, unsigned __int8 a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  objc_initWeak(&location, a4);
  if (v7)
  {
    v9 = [v8 failureDescription];
    v10 = v9;
    if ((a3 & (v9 != 0)) != 0)
    {
      v11 = v9;
    }

    else
    {
      v11 = &stru_2D398;
    }

    v12 = v11;
    v13 = [v8 action];
    if (v13)
    {
      v14 = [v8 actionTitle];
      if ([v14 length])
      {
        v15 = sub_3808(v8);

        if (v15)
        {
          v16 = [v8 actionTitle];
          if ([(__CFString *)v12 length])
          {
            v17 = [NSBundle bundleForClass:objc_opt_class()];
            v18 = [v17 localizedStringForKey:@"SETTINGS_ICLOUDPHOTOS_ACTION_DESCRIPTION_TITLE_FORMAT" value:&stru_2D398 table:@"Photos"];
            v19 = [NSString stringWithFormat:v18, v12, v16];

            v12 = v19;
          }

          else
          {
            v17 = v12;
            v12 = v16;
          }

          v20 = NSStringFromSelector("_performICloudPhotosAction:");
          v21 = objc_loadWeakRetained(&location);
          SettingsBaseConfigureSpecifierFooterWithHyperlink(v7, v12, v16, v20, v21);

          goto LABEL_14;
        }
      }

      else
      {
      }
    }

    [v7 setProperty:v12 forKey:PSFooterTextGroupKey];
LABEL_14:

    goto LABEL_15;
  }

  v10 = PLUserStatusUIGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "Settings: Attempting to update nil specifier: iCPL status group footer", buf, 2u);
  }

LABEL_15:

  objc_destroyWeak(&location);
}

BOOL sub_3808(void *a1)
{
  v1 = a1;
  v2 = [v1 serviceAction] != &dword_0 + 1 && objc_msgSend(v1, "serviceAction") != &dword_0 + 2 && objc_msgSend(v1, "serviceAction") != &dword_8;

  return v2;
}

void SettingsBaseConfigureSpecifierFooterWithHyperlink(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  objc_initWeak(&location, a5);
  v19.location = [v10 rangeOfString:v11];
  v13 = NSStringFromRange(v19);
  [v9 setProperty:v13 forKey:PSFooterHyperlinkViewLinkRangeKey];

  v14 = objc_loadWeakRetained(&location);
  v15 = [NSValue valueWithNonretainedObject:v14];
  [v9 setProperty:v15 forKey:PSFooterHyperlinkViewTargetKey];

  [v9 setProperty:v12 forKey:PSFooterHyperlinkViewActionKey];
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  [v9 setProperty:v17 forKey:PSFooterCellClassGroupKey];

  [v9 setProperty:v10 forKey:PSFooterHyperlinkViewTitleKey];
  objc_destroyWeak(&location);
}

uint64_t sub_3EF0(uint64_t a1)
{
  v2 = PLUserStatusUIGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) actionTitle];
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Settings: User confirmed action with title: %{public}@", &v6, 0xCu);
  }

  v4 = *(a1 + 32);
  return (*(*(a1 + 40) + 16))();
}

void sub_3FC0(uint64_t a1)
{
  v2 = PLUserStatusUIGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) actionTitle];
    v4 = 138543362;
    v5 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Settings: User dismissed action with title: %{public}@", &v4, 0xCu);
  }
}

id sub_4158(void *a1)
{
  v1 = a1;
  if ([v1 serviceAction] == &dword_0 + 1)
  {
    v2 = [NSBundle bundleForClass:objc_opt_class()];
    v3 = v2;
    v4 = @"SETTINGS_ICLOUDPHOTOS_ACTION_PAUSE";
LABEL_5:
    v5 = [v2 localizedStringForKey:v4 value:&stru_2D398 table:@"Photos"];

    goto LABEL_7;
  }

  if ([v1 serviceAction] == &dword_0 + 2)
  {
    v2 = [NSBundle bundleForClass:objc_opt_class()];
    v3 = v2;
    v4 = @"SETTINGS_ICLOUDPHOTOS_ACTION_SYNC_NOW";
    goto LABEL_5;
  }

  v5 = [v1 actionTitle];
LABEL_7:

  return v5;
}

BOOL sub_4360(void *a1, int a2, int a3)
{
  v5 = a1;
  v6 = v5;
  v7 = 0;
  if (a2 && a3)
  {
    v8 = [v5 action];
    if (v8)
    {
      v9 = [v6 actionTitle];
      v7 = [v9 length] && !sub_3808(v6) && objc_msgSend(v6, "serviceAction") != &dword_8;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

void sub_46D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_46F4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_copyWeak(&v9, (a1 + 32));
  v7 = v5;
  v8 = v6;
  px_dispatch_on_main_queue();

  objc_destroyWeak(&v9);
}

void sub_47E4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [*(a1 + 32) storageUsed];
  [WeakRetained _updatePhotosCloudSpace:v2 error:*(a1 + 40)];
}

void sub_51AC(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  v5 = PLUserStatusUIGetLog();
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      v7 = "Did navigate to iCloud Storage Settings";
      v8 = v6;
      v9 = OS_LOG_TYPE_DEFAULT;
      v10 = 2;
LABEL_6:
      _os_log_impl(&dword_0, v8, v9, v7, &v11, v10);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v11 = 138412290;
    v12 = v4;
    v7 = "Failed to navigate to iCloud Storage Settings: %@";
    v8 = v6;
    v9 = OS_LOG_TYPE_ERROR;
    v10 = 12;
    goto LABEL_6;
  }
}

void sub_531C(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  v5 = PLUserStatusUIGetLog();
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      v7 = "Did navigate to iCloud Storage Settings";
      v8 = v6;
      v9 = OS_LOG_TYPE_DEFAULT;
      v10 = 2;
LABEL_6:
      _os_log_impl(&dword_0, v8, v9, v7, &v11, v10);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v11 = 138412290;
    v12 = v4;
    v7 = "Failed to navigate to iCloud Storage Settings: %@";
    v8 = v6;
    v9 = OS_LOG_TYPE_ERROR;
    v10 = 12;
    goto LABEL_6;
  }
}

id sub_5530(int a1, int a2)
{
  v4 = @"ICLOUDPHOTOS_OPTIMIZE_STORAGE_FOOTER_";
  if (a1)
  {
    v4 = @"ICLOUDPHOTOS_KEEP_ORIGINALS_FOOTER_";
  }

  v5 = v4;
  if (!a2)
  {
    v10 = v5;
    v8 = +[UIDevice currentDevice];
    v11 = [v8 model];
    v9 = [(__CFString *)v10 stringByAppendingString:v11];

    goto LABEL_7;
  }

  if (a1)
  {
    v6 = +[UIDevice currentDevice];
    v7 = [v6 model];
    v8 = [@"ICLOUDPHOTOS_KEEP_ORIGINALS_FOOTER_" stringByAppendingString:v7];

    v9 = [v8 stringByAppendingString:@"_ExitMode"];
LABEL_7:

    goto LABEL_9;
  }

  v9 = [@"ICLOUDPHOTOS_OPTIMIZE_STORAGE_FOOTER_" stringByAppendingString:@"ExitMode"];
LABEL_9:
  v12 = PULocalizedString();

  return v12;
}

void sub_57A0(void *a1, int a2, int a3, int a4, uint64_t a5, int a6, void *a7)
{
  v13 = a1;
  objc_initWeak(&location, a7);
  if (v13)
  {
    if (a2)
    {
      v14 = [NSBundle bundleForClass:objc_opt_class()];
      v15 = [v14 localizedStringForKey:@"ICLOUDPHOTOS_GROUP_FOOTER_EXITING_STORAGE_MANAGEMENT_LINK_TITLE" value:&stru_2D398 table:@"Photos"];
      v16 = a3 ^ 1 | a4;

      if (a5 < 1)
      {
        v25 = @"ICLOUDPHOTOS_GROUP_FOOTER_FALLBACK_DESCRIPTION_EXITING_OPTIMIZE_STORAGE";
        if (v16)
        {
          v25 = @"ICLOUDPHOTOS_GROUP_FOOTER_FALLBACK_DESCRIPTION_EXITING_KEEP_ORIGINALS";
        }

        v18 = v25;
        v26 = [NSBundle bundleForClass:objc_opt_class()];
        v19 = [v26 localizedStringForKey:v18 value:&stru_2D398 table:@"Photos"];

        v31 = v15;
        v20 = PFStringWithValidatedFormat();
      }

      else
      {
        v17 = @"ICLOUDPHOTOS_GROUP_FOOTER_DESCRIPTION_EXITING_OPTIMIZE_STORAGE_FORMAT";
        if (v16)
        {
          v17 = @"ICLOUDPHOTOS_GROUP_FOOTER_DESCRIPTION_EXITING_KEEP_ORIGINALS_FORMAT";
        }

        v18 = v17;
        v19 = PULocalizedString();
        v31 = a5;
        v32 = v15;
        v20 = PFLocalizedStringWithValidatedFormat();
      }

      v22 = v20;

      v27 = NSStringFromSelector("_openStorageManagement:");
    }

    else
    {
      if (!a6)
      {
        v23 = [NSBundle bundleForClass:objc_opt_class()];
        v24 = SFLocalizableWAPIStringKeyForKey();
        v22 = [v23 localizedStringForKey:v24 value:&stru_2D398 table:@"Photos"];

        v15 = 0;
        v21 = 0;
        goto LABEL_18;
      }

      if (a3)
      {
        v15 = 0;
        v21 = 0;
        v22 = &stru_2D398;
        goto LABEL_18;
      }

      v29 = [NSBundle bundleForClass:objc_opt_class()];
      v18 = [v29 localizedStringForKey:@"SETTINGS_ICLOUDPHOTOS_BACKUP_DESCRIPTION_FORMAT" value:&stru_2D398 table:@"Photos"];

      v30 = [NSBundle bundleForClass:objc_opt_class()];
      v15 = [v30 localizedStringForKey:@"SETTINGS_ICLOUDPHOTOS_BACKUP_LINK_TITLE" value:&stru_2D398 table:@"Photos"];

      v31 = v15;
      v22 = PFStringWithValidatedFormat();
      v27 = NSStringFromSelector("_openBackupManagement:");
    }

    v21 = v27;

    if (v15 && v21)
    {
      v28 = objc_loadWeakRetained(&location);
      SettingsBaseConfigureSpecifierFooterWithHyperlink(v13, v22, v15, v21, v28);

LABEL_19:
      goto LABEL_20;
    }

LABEL_18:
    [v13 setProperty:v22 forKey:{PSFooterTextGroupKey, v31, v32}];
    goto LABEL_19;
  }

LABEL_20:
  objc_destroyWeak(&location);
}

void sub_5F78(uint64_t a1)
{
  [*(a1 + 32) hide];
  [*(a1 + 40) _setDisplayedSpinner:0];
  v3 = [*(a1 + 40) view];
  v2 = [v3 window];
  [v2 setUserInteractionEnabled:1];
}

void sub_5FF0(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  PLRecordiCPLDisableState();
  if (a2)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_614C;
    block[3] = &unk_2D360;
    block[4] = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    v6 = PLUIGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = objc_opt_class();
      v9 = *(a1 + 32);
      *buf = 138412802;
      v13 = v8;
      v14 = 2048;
      v15 = v9;
      v16 = 2112;
      v17 = v5;
      v10 = v8;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "<%@: %p> Failed to disable iCPL: %@", buf, 0x20u);
    }
  }
}

id sub_614C(uint64_t a1)
{
  v2 = PLUIGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = objc_opt_class();
    v5 = *(a1 + 32);
    v9 = 138412546;
    v10 = v4;
    v11 = 2048;
    v12 = v5;
    v6 = v4;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "<%@: %p> Did disable iCPL", &v9, 0x16u);
  }

  *(*(a1 + 32) + 192) = 0;
  v7 = [*(a1 + 32) parentController];
  [v7 reloadSpecifier:*(*(a1 + 32) + OBJC_IVAR___PSViewController__specifier)];

  return [*(a1 + 32) _updateSpecifiersForCPLEnablementChange];
}

uint64_t sub_6684(uint64_t a1)
{
  v2 = PLUIGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Enable iCPL ignoring Exit Mode Warning", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t sub_6704(uint64_t a1)
{
  v2 = PLUIGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Cancel enable iCPL due to Exit Mode Warning", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

id sub_6784(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v1 = PLUIGetLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_0, v1, OS_LOG_TYPE_DEFAULT, "Cancel enable iCPL and Navigate to cloud storage settings", v3, 2u);
  }

  return [PXSystemNavigation navigateToDestination:5 completion:0];
}

void sub_6A1C(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  PLRecordiCPLEnableState();
  if (v5 && [v5 code] == &dword_4 + 3)
  {
    v6 = PLUIGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = objc_opt_class();
      v9 = *(a1 + 32);
      v10 = *(a1 + 48);
      *buf = 138413058;
      v22 = v8;
      v23 = 2048;
      v24 = v9;
      v25 = 1024;
      v26 = 1;
      v27 = 1024;
      v28 = v10;
      v11 = v8;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "<%@: %p> Insufficient storage: %d (Ignoring storage: %d)", buf, 0x22u);
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_6BD8;
  v15[3] = &unk_2CF68;
  v18 = a2;
  v19 = v12;
  v20 = *(a1 + 48);
  v13 = *(a1 + 40);
  v15[4] = *(a1 + 32);
  v16 = v13;
  v17 = v5;
  v14 = v5;
  dispatch_async(&_dispatch_main_q, v15);
}

void sub_6BD8(uint64_t a1)
{
  if ((*(a1 + 56) & 1) != 0 || *(a1 + 57) == 1 && *(a1 + 58) == 1)
  {
    v2 = PLUIGetLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v4 = objc_opt_class();
      v5 = *(a1 + 32);
      *buf = 138412546;
      v26 = v4;
      v27 = 2048;
      v28 = v5;
      v6 = v4;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "<%@: %p> Will enable iCPL", buf, 0x16u);
    }

    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_6EA4;
    v23[3] = &unk_2D150;
    v7 = *(a1 + 40);
    v23[4] = *(a1 + 32);
    v24 = v7;
    [PLCloudPhotoLibraryHelper enableCPL:v23];
  }

  else
  {
    *(*(a1 + 32) + 192) = 0;
    [*(a1 + 32) reloadSpecifierID:@"iCloudPhotosSwitch" animated:1];
    [*(a1 + 32) _updateSharedLibrarySpecifiersAnimated:1];
    if ([*(a1 + 48) code] == &dword_8 + 2)
    {
      v8 = +[PLAccountStore pl_sharedAccountStore];
      v9 = +[PLAccountStore pl_sharedAccountStore];
      v10 = [v9 cachedPrimaryAppleAccount];
      [v8 renewCredentialsForAccount:v10 completion:0];
    }

    else
    {
      v11 = *(a1 + 48);
      v17 = _NSConcreteStackBlock;
      v18 = 3221225472;
      v19 = sub_6F64;
      v20 = &unk_2D128;
      v12 = v11;
      v13 = *(a1 + 32);
      v21 = v12;
      v22 = v13;
      v14 = [UIAlertController px_alertForCPLEnableError:v12 actionHandler:&v17 cancelHandler:0];
      [*(a1 + 32) presentViewController:v14 animated:1 completion:{0, v17, v18, v19, v20}];
    }

    [*(a1 + 40) hide];
    [*(a1 + 32) _setDisplayedSpinner:0];
    v15 = [*(a1 + 32) view];
    v16 = [v15 window];
    [v16 setUserInteractionEnabled:1];
  }
}

void sub_6EA4(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_6FCC;
  v8[3] = &unk_2CF40;
  v11 = a2;
  v6 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v7 = v5;
  dispatch_async(&_dispatch_main_q, v8);
}

char *sub_6F64(uint64_t a1)
{
  result = [*(a1 + 32) code];
  if (result == &dword_4 + 3)
  {
    v3 = *(a1 + 32);
    *(*(a1 + 40) + 216) = PLCPLShouldRequireStorageUpgradeForError();
    v4 = *(a1 + 40);

    return [v4 _showStorageOptions];
  }

  return result;
}

void sub_6FCC(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = PLUIGetLog();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = objc_opt_class();
      v7 = *(a1 + 32);
      *v37 = 138412546;
      *&v37[4] = v6;
      *&v37[12] = 2048;
      *&v37[14] = v7;
      v8 = v6;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "<%@: %p> Did enable iCPL", v37, 0x16u);
    }

    *(*(a1 + 32) + 192) = 1;
    v9 = +[PLPhotoLibrary systemPhotoLibrary];
    v10 = [v9 isReadyForCloudPhotoLibrary];

    if ((v10 & 1) == 0)
    {
      v11 = PLUIGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = *(a1 + 32);
        v13 = objc_opt_class();
        v14 = *(a1 + 32);
        *v37 = 138412546;
        *&v37[4] = v13;
        *&v37[12] = 2048;
        *&v37[14] = v14;
        v15 = v13;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "<%@: %p> Library is not ready for iCPL, showing prompt", v37, 0x16u);
      }

      v16 = *(a1 + 32);
      v17 = [NSBundle bundleForClass:objc_opt_class()];
      v18 = [v17 localizedStringForKey:@"iCLOUDPHOTOS_RESTORE_PAUSE_TITLE" value:&stru_2D398 table:@"Photos"];
      v19 = *(a1 + 32);
      v20 = [NSBundle bundleForClass:objc_opt_class()];
      v21 = [v20 localizedStringForKey:@"iCLOUDPHOTOS_RESTORE_PAUSE_MESSAGE" value:&stru_2D398 table:@"Photos"];
      v22 = [UIAlertController alertControllerWithTitle:v18 message:v21 preferredStyle:1];

      v23 = *(a1 + 32);
      v24 = [NSBundle bundleForClass:objc_opt_class()];
      v25 = [v24 localizedStringForKey:@"ICLOUDPHOTOS_OK" value:&stru_2D398 table:@"Photos"];
      v26 = [UIAlertAction actionWithTitle:v25 style:1 handler:0];
      [v22 addAction:v26];

      [*(a1 + 32) presentViewController:v22 animated:1 completion:0];
    }

    [*(a1 + 32) _updateSpecifiersForCPLEnablementChange];
    v4 = [*(a1 + 32) parentController];
    [v4 reloadSpecifier:*(*(a1 + 32) + OBJC_IVAR___PSViewController__specifier)];
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v27 = *(a1 + 32);
    v28 = objc_opt_class();
    v29 = *(a1 + 32);
    v30 = v28;
    v31 = +[PLAccountStore pl_sharedAccountStore];
    v32 = [v31 cachedPrimaryAppleAccount];
    v33 = [v32 identifier];
    v34 = *(a1 + 40);
    *v37 = 138413058;
    *&v37[4] = v28;
    *&v37[12] = 2048;
    *&v37[14] = v29;
    *&v37[22] = 2112;
    v38 = v33;
    v39 = 2112;
    v40 = v34;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "<%@: %p> Failed to enable iCPL on account: %@. Error: %@", v37, 0x2Au);
  }

  [*(a1 + 48) hide];
  [*(a1 + 32) _setDisplayedSpinner:0];
  v35 = [*(a1 + 32) view];
  v36 = [v35 window];
  [v36 setUserInteractionEnabled:1];
}

id sub_7480(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    return [v3 _enableCloudPhotosIgnoringStorageLimits:*(a1 + 40)];
  }

  else
  {
    return [v3 reloadSpecifierID:@"iCloudPhotosSwitch" animated:1];
  }
}

void sub_7710(void *a1, int a2)
{
  if (a2)
  {
    v2 = @"iCloudKeepOriginalsOption";
  }

  else
  {
    v2 = @"iCloudOptimizeStorageOption";
  }

  v3 = a1;
  v5 = [v3 specifierForID:v2];
  v4 = [v3 specifierForID:@"iCloudKeepOriginalsGroup"];

  [v4 setProperty:v5 forKey:PSRadioGroupCheckedSpecifierKey];
}

void sub_93BC(uint64_t a1)
{
  v2 = [*(a1 + 32) _nonLocalResourceInfo];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_9460;
  v4[3] = &unk_2D128;
  v4[4] = *(a1 + 32);
  v5 = v2;
  v3 = v2;
  dispatch_async(&_dispatch_main_q, v4);
}

id sub_9460(uint64_t a1)
{
  [*(a1 + 32) _hideDisplayedSpinner];
  v2 = [*(a1 + 32) systemPhotoLibrary];
  v3 = [v2 isKeepOriginalsEnabled];

  v4 = [*(a1 + 40) objectForKeyedSubscript:@"kCPLExistNonLocalOriginalsKey"];
  v5 = [v4 BOOLValue];

  v7 = [*(*(a1 + 32) + 224) hasChangesToProcess];
  v8 = *(a1 + 32);
  if (v5)
  {
    if (v7)
    {

      return [v8 _confirmCloudPhotosDisableWithSyncInProgress];
    }

    else
    {
      v9 = *(a1 + 40);
      if (v3)
      {

        return [v8 _confirmCloudPhotosDisableWithNonLocalResourceInfo:v9];
      }

      else
      {

        return [v8 _confirmCloudPhotosDisableWhilePrunedWithNonLocalResourceInfo:v9];
      }
    }
  }

  else
  {

    return [v8 _disableCloudPhotos];
  }
}

void sub_9808(uint64_t a1)
{
  v1 = [*(a1 + 32) systemPhotoLibrary];
  [PXPeopleUtilities unblockPersonsInLibrary:v1 completion:&stru_2CE78];
}

void sub_986C(id a1, BOOL a2, NSError *a3)
{
  v4 = a3;
  if (v4 || !a2)
  {
    v5 = PLUIGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "SettingsBaseController: resetting blocked persons failed with error: %@", &v6, 0xCu);
    }
  }
}

void sub_9C58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&a19);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_9CA8(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_A1AC;
  block[3] = &unk_2D1C8;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v2);
}

void sub_9D38(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained _fetchBlockedMemoryFeatures];
  v4 = [WeakRetained _fetchMemoriesWithUserFeedback];
  v5 = [WeakRetained _fetchDeniedSuggestions];
  if (![v3 count] && !objc_msgSend(v4, "count") && !objc_msgSend(v5, "count"))
  {
    v9 = 0;
    goto LABEL_5;
  }

  v6 = [v3 fetchOptions];
  v7 = [v6 photoLibrary];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_9F68;
  v16[3] = &unk_2D338;
  v17 = v3;
  v18 = v4;
  v19 = v5;
  v15 = 0;
  v8 = [v7 performChangesAndWait:v16 error:&v15];
  v9 = v15;

  if (v8)
  {
LABEL_5:
    [WeakRetained _removeResetBlacklistedMemoryButton];
    goto LABEL_9;
  }

  v10 = PLUIGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = *(a1 + 32);
    v12 = objc_opt_class();
    v13 = *(a1 + 32);
    *buf = 138412802;
    v21 = v12;
    v22 = 2048;
    v23 = v13;
    v24 = 2112;
    v25 = v9;
    v14 = v12;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "<%@: %p> Resetting Blacklisted Memories failed with error: %@", buf, 0x20u);
  }

LABEL_9:
}

void sub_9F68(id *a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v3 = a1[4];
  v4 = [v3 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        v9 = [v8 blacklistedFeature];
        v10 = [v9 type];

        if (v10 != &dword_0 + 1)
        {
          if ([v8 category] == &stru_158.reloff + 1)
          {
            [v2 addObject:v8];
          }

          else
          {
            v11 = [PHMemoryChangeRequest changeRequestForMemory:v8];
            [v11 setBlacklistedFeature:0];
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v5);
  }

  [PHMemoryChangeRequest deleteMemories:v2];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = a1[5];
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [PHMemoryChangeRequest changeRequestForMemory:*(*(&v18 + 1) + 8 * j), v18];
        [v17 setUserFeedback:0];
      }

      v14 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v14);
  }

  if ([a1[6] count])
  {
    [PHSuggestionChangeRequest deleteSuggestions:a1[6]];
  }
}

void sub_A1AC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
}

void sub_AF44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_AF88(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_AFA0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  return px_dispatch_on_main_queue();
}

void sub_B01C(uint64_t a1)
{
  v2 = PLUIGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = objc_opt_class();
    v5 = *(a1 + 32);
    v6 = *(a1 + 56);
    *buf = 138412802;
    if (v6)
    {
      v7 = @"Yes!";
    }

    else
    {
      v7 = @"Nope.";
    }

    v13 = v4;
    v14 = 2048;
    v15 = v5;
    v16 = 2112;
    v17 = v7;
    v8 = v4;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "<%@: %p> Did check if iCPL has exited: %@", buf, 0x20u);
  }

  v9 = *(a1 + 32);
  v10 = *(*(a1 + 40) + 8);
  obj = *(v10 + 40);
  [v9 _filterAndConfigureSpecifiers:&obj isAsync:*(*(a1 + 48) + 8) + 24];
  objc_storeStrong((v10 + 40), obj);
}

id sub_B548(uint64_t a1)
{
  [*(a1 + 32) hide];
  [*(a1 + 40) _setDisplayedSpinner:0];
  v2 = *(a1 + 48);

  return [v2 setUserInteractionEnabled:1];
}

void sub_B924(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = PLUIGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = objc_opt_class();
      v9 = *(a1 + 32);
      v10 = v8;
      v11 = +[PLAccountStore pl_sharedAccountStore];
      v12 = [v11 cachedPrimaryAppleAccount];
      v13 = [v12 identifier];
      *buf = 138413058;
      v16 = v8;
      v17 = 2048;
      v18 = v9;
      v19 = 2112;
      v20 = v13;
      v21 = 2112;
      v22 = v5;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "<%@: %p> Could not enable photo/shared streams on account %@. Error: %@", buf, 0x2Au);
    }
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_BAD0;
  block[3] = &unk_2D360;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_BAD0(uint64_t a1)
{
  v2 = [*(a1 + 32) parentController];
  [v2 reloadSpecifier:*(*(a1 + 32) + OBJC_IVAR___PSViewController__specifier)];
}

void sub_C0A4(id a1, BOOL a2, NSError *a3)
{
  v4 = a3;
  v5 = PLUIGetLog();
  v6 = v5;
  if (a2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v4;
      v7 = "[FeaturedContentAllowedToggled] request to reload wallpaper suggestions failed : %@";
      v8 = v6;
      v9 = OS_LOG_TYPE_ERROR;
      v10 = 12;
LABEL_6:
      _os_log_impl(&dword_0, v8, v9, v7, &v11, v10);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LOWORD(v11) = 0;
    v7 = "[FeaturedContentAllowedToggled] request to reload wallpaper suggestions completed";
    v8 = v6;
    v9 = OS_LOG_TYPE_INFO;
    v10 = 2;
    goto LABEL_6;
  }
}

void sub_C634(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_C668(uint64_t a1, const void *a2)
{
  CFPreferencesSetAppValue(*(a1 + 32), a2, @"com.apple.mobileslideshow");
  CFPreferencesAppSynchronize(@"com.apple.mobileslideshow");
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.mobileslideshow.PreferenceChanged", 0, 0, 1u);
}

void sub_C6C8(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 40) + 16);

    v4();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained reloadSpecifier:*(a1 + 32) animated:1];
  }
}

void sub_CB54(void *a1, uint64_t a2)
{
  v2 = @"TransferKeepOriginalsOption";
  if (a2 != 1)
  {
    v2 = 0;
  }

  if (a2)
  {
    v3 = v2;
  }

  else
  {
    v3 = @"TransferAutomaticOption";
  }

  v4 = a1;
  v6 = [v4 specifierForID:v3];
  v5 = [v4 specifierForID:@"TransferGroup"];

  [v5 setProperty:v6 forKey:PSRadioGroupCheckedSpecifierKey];
}

void sub_CEF0(uint64_t a1)
{
  [*(a1 + 32) setProperty:&__kCFBooleanFalse forKey:PSEnabledKey];
  [*(a1 + 40) reloadSpecifier:*(a1 + 32) animated:1];
  v2 = +[MCProfileConnection sharedConnection];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_D024;
  v5[3] = &unk_2CC30;
  v5[4] = *(a1 + 40);
  [v2 removeProfileAsyncWithIdentifier:@"com.apple.Photos.Rebuild.iOS" installationType:1 completion:v5];

  v3 = dispatch_get_global_queue(0, 0);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_D114;
  v4[3] = &unk_2D360;
  v4[4] = *(a1 + 40);
  dispatch_async(v3, v4);
}

void sub_D024(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = PLUIGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v7 = 138412802;
      v8 = objc_opt_class();
      v9 = 2114;
      v10 = @"com.apple.Photos.Rebuild.iOS";
      v11 = 2112;
      v12 = v3;
      v6 = v8;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "<%@: error removing profile %{public}@: %@", &v7, 0x20u);
    }
  }
}

void sub_D114(uint64_t a1)
{
  v2 = PLUIGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = objc_opt_class();
    v5 = *(a1 + 32);
    v10 = 138412546;
    v11 = v4;
    v12 = 2048;
    v13 = v5;
    v6 = v4;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "<%@: %p> Photos Rebuild started", &v10, 0x16u);
  }

  v7 = [PLPhotoLibraryPathManager alloc];
  v8 = +[PHPhotoLibrary systemPhotoLibraryURL];
  v9 = [v7 initWithLibraryURL:v8];

  [v9 setSqliteErrorForRebuildReason:17 allowsExit:1];
}

void sub_D4D8(uint64_t a1)
{
  v8 = [*(a1 + 32) specifierForID:@"photosDiagnose"];
  if (v8)
  {
    v2 = [NSNumber numberWithBool:*(a1 + 48)];
    [v8 setProperty:v2 forKey:PSEnabledKey];

    if (*(a1 + 40))
    {
      v3 = *(a1 + 32);
      v4 = [NSBundle bundleForClass:objc_opt_class()];
      v5 = *(a1 + 40);
      v6 = SFLocalizableWAPIStringKeyForKey();
      v7 = [v4 localizedStringForKey:v6 value:&stru_2D398 table:@"Photos"];
      [v8 setName:v7];
    }

    [*(a1 + 32) reloadSpecifier:v8];
  }
}

void sub_D7A0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PLUIGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = objc_opt_class();
    v7 = *(a1 + 32);
    v9 = 138412802;
    v10 = v6;
    v11 = 2048;
    v12 = v7;
    v13 = 2112;
    v14 = v3;
    v8 = v6;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "<%@: %p> Error running diagnose: %@", &v9, 0x20u);
  }

  [*(a1 + 32) diagnosticServiceStateDidChange:0xFFFFFFFFLL outputURL:0 error:v3];
}

void sub_D89C(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = PLUIGetLog();
  v8 = v7;
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = objc_opt_class();
      v11 = *(a1 + 32);
      v20 = 138412546;
      v21 = v10;
      v22 = 2048;
      v23 = v11;
      v12 = v10;
      v13 = "<%@: %p> Diagnose started";
      v14 = v8;
      v15 = OS_LOG_TYPE_DEFAULT;
      v16 = 22;
LABEL_6:
      _os_log_impl(&dword_0, v14, v15, v13, &v20, v16);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v17 = *(a1 + 32);
    v18 = objc_opt_class();
    v19 = *(a1 + 32);
    v20 = 138412802;
    v21 = v18;
    v22 = 2048;
    v23 = v19;
    v24 = 2112;
    v25 = v6;
    v12 = v18;
    v13 = "<%@: %p> Error starting diagnose: %@";
    v14 = v8;
    v15 = OS_LOG_TYPE_ERROR;
    v16 = 32;
    goto LABEL_6;
  }
}

void sub_DC18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_DC44(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained diagnosticServiceStateDidChange:0xFFFFFFFFLL outputURL:0 error:0];
}

void sub_DEC0(uint64_t a1)
{
  v2 = +[PLPhotoLibrary systemPhotoLibrary];
  v3 = [v2 assetsdClient];

  v4 = [v3 libraryInternalClient];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_DF90;
  v5[3] = &unk_2D1A0;
  v5[4] = *(a1 + 32);
  [v4 deleteiTunesSyncedContentWithCompletionHandler:v5];
}

void sub_DF90(uint64_t a1, char a2)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_E00C;
  v2[3] = &unk_2CC80;
  v3 = a2;
  v2[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, v2);
}

id *sub_E00C(id *result)
{
  if (*(result + 40) == 1)
  {
    return [result[4] _enableCloudPhotosWithExitModeWarningIgnoringStorageLimits:0];
  }

  return result;
}

id sub_E48C(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    return [v3 _setSharedStreamsEnabled:0];
  }

  else
  {
    return [v3 reloadSpecifier:*(a1 + 40) animated:1];
  }
}

void sub_E564(uint64_t a1)
{
  [*(a1 + 32) unregisterAvailabilityObserver:*(a1 + 40)];
  v2 = *(a1 + 40);
  v3 = *(v2 + 240);
  *(v2 + 240) = 0;
}

void sub_EF64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_EF88(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  *(*(a1[5] + 8) + 24) = 1;
  if (*(*(a1[6] + 8) + 24) == 1)
  {
    v8 = _NSConcreteStackBlock;
    v9 = 3221225472;
    v10 = sub_F0C4;
    v11 = &unk_2CC80;
    v12 = a1[4];
    v13 = a2;
    px_dispatch_on_main_queue();
  }

  else
  {
    [*(a1[4] + 256) setCanEnableSharedLibrary:a2];
    if ([*(a1[4] + OBJC_IVAR___PSListController__specifiers) count])
    {
      v6 = PXAssertGetLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        *v7 = 0;
        _os_log_fault_impl(&dword_0, v6, OS_LOG_TYPE_FAULT, "Specifiers are already created, shared library settings will not be updated", v7, 2u);
      }
    }
  }
}

id sub_F0C4(uint64_t a1)
{
  result = [*(*(a1 + 32) + 256) canEnableSharedLibrary];
  if (*(a1 + 40) != result)
  {
    [*(*(a1 + 32) + 256) setCanEnableSharedLibrary:?];
    v3 = *(a1 + 32);

    return [v3 reloadSpecifiers];
  }

  return result;
}

void sub_F948(uint64_t a1)
{
  v2 = [*(a1 + 32) _isAppleInternal];
  byte_336D0 = v2;
  if (v2)
  {
    v3 = +[NSUserDefaults standardUserDefaults];
    v4 = [v3 BOOLForKey:@"PhotosDiagnosticsDisabled"];

    if (v4)
    {
      byte_336D0 = 0;
      v5 = PLUIGetLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 32);
        v7 = objc_opt_class();
        v8 = *(a1 + 32);
        v10 = 138412546;
        v11 = v7;
        v12 = 2048;
        v13 = v8;
        v9 = v7;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "<%@: %p> Internal Photos diagnostics disabled", &v10, 0x16u);
      }
    }
  }
}

id sub_120C8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  v4 = [v2 containsObject:v3];

  return v4;
}

id SettingsBaseStringForSwitchValue(int a1)
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = v2;
  if (a1)
  {
    v4 = @"On";
  }

  else
  {
    v4 = @"Off";
  }

  v5 = [v2 localizedStringForKey:v4 value:&stru_2D398 table:@"Photos"];

  return v5;
}

void sub_12378(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(*(a1 + 32) + 32);
      v7 = 138412546;
      v8 = v6;
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "Failed to open Learn More URL %@: %@", &v7, 0x16u);
    }
  }
}

void sub_12564(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_12694;
    v8[3] = &unk_2D128;
    v6 = *(a1 + 40);
    v8[4] = *(a1 + 32);
    v9 = v6;
    dispatch_async(&_dispatch_main_q, v8);
  }

  else
  {
    v7 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v5;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "Failed to pass APGuard check with error: %@", buf, 0xCu);
    }
  }
}

void sub_12694(uint64_t a1)
{
  v2 = [*(a1 + 32) statusProvider];
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  PXSharedLibrarySetupSharedLibraryOrPreview();
}

void sub_12E14(uint64_t a1, int a2)
{
  if (PXSharedLibraryLocalModeFeatureEnabled())
  {
    v4 = *(a1 + 32);
    v5 = PSEnabledKey;

    [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:v5];
  }

  else
  {
    if (*(a1 + 40) != 1 || (*(a1 + 41) & 1) != 0 || (*(a1 + 42) & 1) != 0)
    {
      v6 = 0;
    }

    else
    {
      v6 = a2 & ~*(a1 + 43);
    }

    v7 = [NSNumber numberWithInt:v6];
    [*(a1 + 32) setObject:v7 forKeyedSubscript:PSEnabledKey];
  }
}

void sub_131E8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v9 = a2;
  v10 = [*(a1 + 40) attributedSubstringFromRange:{a3, a4}];
  v11 = [v10 string];
  v12 = *(a1 + 32);
  v13 = *(v12 + 24);
  *(v12 + 24) = v11;

  v20 = v9;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v14 = v20;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(a1 + 32);
  v16 = *(v15 + 32);
  *(v15 + 32) = v14;

  if (!*(*(a1 + 32) + 32))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [NSURL URLWithString:v20];
      v18 = *(a1 + 32);
      v19 = *(v18 + 32);
      *(v18 + 32) = v17;
    }
  }

  *a5 = 1;
}

void sub_1383C(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = 138543362;
      v6 = objc_opt_class();
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Did pop to base controller", &v5, 0xCu);
    }
  }
}

void sub_1467C(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) navigationController];
    v2 = [v3 popToRootViewControllerAnimated:1];
  }
}

id sub_15874(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 enabled];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void sub_158B8(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 40) + 8) + 24);
  v5 = a2;
  v4 = [NSNumber numberWithBool:v3];
  [v5 setObject:v4 forKeyedSubscript:PSEnabledKey];

  [*(a1 + 32) reloadSpecifier:v5];
}

void sub_160E8(id *a1, void *a2)
{
  v3 = a2;
  if ([v3 cellType])
  {
    [a1[4] addObject:v3];
    objc_initWeak(&location, a1[5]);
    v4 = [_MSSCellularDataEnabledInvocation alloc];
    v6 = _NSConcreteStackBlock;
    v7 = 3221225472;
    v8 = sub_16200;
    v9 = &unk_2D1C8;
    objc_copyWeak(&v10, &location);
    v5 = [(_MSSCellularDataEnabledInvocation *)v4 initWithSpecifier:v3 changeHandler:&v6];
    [a1[6] addObject:{v5, v6, v7, v8, v9}];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void sub_161D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_16200(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _validateUnlimitedUpdatesSpecifiers];
}

id sub_17390(uint64_t a1)
{
  result = [*(a1 + 32) isViewLoaded];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 reloadSpecifiers];
  }

  return result;
}

void sub_177D0(id *a1)
{
  objc_initWeak(&location, a1[4]);
  v2 = [a1[4] statusProvider];
  v3 = [v2 sharedLibrary];

  v4 = [PXViewControllerPresenter defaultPresenterWithViewController:a1[4]];
  v5 = a1[5];
  v6 = a1[6];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_17920;
  v7[3] = &unk_2D310;
  objc_copyWeak(&v10, &location);
  v8 = a1[5];
  v9 = a1[6];
  [v3 addParticipantsWithEmailAddresses:v5 phoneNumbers:v6 presentationEnvironment:v4 withCompletion:v7];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void sub_178F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_17920(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _handleDidAddParticipantsWithEmailAddresses:*(a1 + 32) phoneNumbers:*(a1 + 40) success:a2 error:v5];
}

void sub_17C70(id *a1, void *a2, void *a3, void *a4)
{
  v12 = a2;
  v7 = a3;
  v8 = a4;
  if (v12)
  {
    [a1[4] setObject:v12 forKeyedSubscript:PSIconImageKey];
    v9 = [a1[5] specifier];
    v10 = a1[4];

    if (v9 == v10)
    {
      v11 = [a1[6] imageView];
      [v11 setImage:v12];
    }
  }
}