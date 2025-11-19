uint64_t sub_FD8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000(id a1, NSURL *a2, NSError *a3)
{
  v3 = a3;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_3048();
  }
}

void sub_24EC(id a1)
{
  v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(v4, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create("account_queue", v1);

  v3 = qword_C548;
  qword_C548 = v2;
}

void sub_2584(id a1, NSError *a2)
{
  v2 = a2;
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, 0x90u))
  {
    sub_35AC();
  }
}

void sub_2608(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, 0x90u))
    {
      sub_35AC();
    }
  }

  else
  {
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_3618(v3, v4);
    }
  }
}

void sub_26D8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_2860;
  v10[3] = &unk_82C0;
  v11 = v2;
  [v11 createAccountWithACAccountID:v3 dsid:v4 reply:v10];
  v5 = [*(a1 + 32) result];
  LOBYTE(v4) = [v5 BOOLValue];

  if ((v4 & 1) == 0)
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, 0x90u))
    {
      v8 = *(a1 + 40);
      v9 = [*(a1 + 32) error];
      *buf = 138412802;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      v16 = 2112;
      v17 = v6;
      _os_log_error_impl(&dword_0, v7, 0x90u, "[ERROR] log in error for %@: %@%@", buf, 0x20u);
    }
  }
}

void sub_2874(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_29F4;
  v10[3] = &unk_82C0;
  v11 = v2;
  [v11 logoutAccountWithACAccountID:v3 reply:v10];
  v4 = [*(a1 + 32) result];
  v5 = [v4 BOOLValue];

  if ((v5 & 1) == 0)
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, 0x90u))
    {
      v8 = *(a1 + 40);
      v9 = [*(a1 + 32) error];
      *buf = 138412802;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      v16 = 2112;
      v17 = v6;
      _os_log_error_impl(&dword_0, v7, 0x90u, "[ERROR] log out error for %@: %@%@", buf, 0x20u);
    }
  }
}

void sub_2A1C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412546;
      v7 = v3;
      v8 = 2112;
      v9 = v4;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "[WARNING] Got error %@ when verified account loaded%@", &v6, 0x16u);
    }

    [*(a1 + 32) isCloudDocsUnsupported:*(a1 + 40) inStore:*(a1 + 48) showUserNotification:0];
  }
}

void sub_2B2C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_2CAC;
  v10[3] = &unk_82C0;
  v11 = v2;
  [v11 updateAccountDisplayName:v3 reply:v10];
  v4 = [*(a1 + 32) result];
  v5 = [v4 BOOLValue];

  if ((v5 & 1) == 0)
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, 0x90u))
    {
      v8 = *(a1 + 40);
      v9 = [*(a1 + 32) error];
      *buf = 138412802;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      v16 = 2112;
      v17 = v6;
      _os_log_error_impl(&dword_0, v7, 0x90u, "[ERROR] log in error for %@: %@%@", buf, 0x20u);
    }
  }
}

void sub_2D00(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_2D20(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, 0x90u, a4, &a9, 0x16u);
}

void sub_2D4C(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, 0x90u, a4, va, 0x16u);
}

void sub_2D6C(char a1@<W0>, uint64_t a2@<X1>, int a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  if (qword_C568 != -1)
  {
    sub_3690();
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_2EEC;
  v10[3] = &unk_8380;
  v10[4] = &v12;
  v11 = a1;
  dispatch_sync(qword_C560, v10);
  *(a5 + 8) = a2;
  *(a5 + 16) = 0;
  *a5 = v13[3];
  *(a5 + 16) = a3;
  *(a5 + 20) = a4;
  _Block_object_dispose(&v12, 8);
}

void sub_2E64(id a1)
{
  v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(v4, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create("create-log-section", v1);

  v3 = qword_C560;
  qword_C560 = v2;
}

uint64_t sub_2EEC(uint64_t result)
{
  *(*(*(result + 32) + 8) + 24) = qword_C558 + 1;
  v1 = *(*(result + 32) + 8);
  v2 = *(v1 + 24);
  if ((*(v1 + 24) & 1) == *(result + 40))
  {
    *(v1 + 24) = v2 + 1;
    v2 = *(*(*(result + 32) + 8) + 24);
  }

  qword_C558 = v2;
  return result;
}

void sub_2F3C(uint64_t a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      v3 = *(a1 + 8);
      v4 = *(a1 + 16);
      v5 = brc_bread_crumbs();
      v6 = *(a1 + 20);
      v7 = brc_default_log();
      v8 = v7;
      if (v2)
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          sub_36A4(v5, v2, v8);
        }
      }

      else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v9 = 134218242;
        v10 = v2;
        v11 = 2112;
        v12 = v5;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "[INFO] ┗%llx %@", &v9, 0x16u);
      }
    }
  }
}

void sub_30B4()
{
  sub_2D40();
  v3 = v2;
  v4 = [v2 accountType];
  v5 = [v4 identifier];
  v6 = 138412802;
  v7 = v3;
  v8 = 2112;
  v9 = v5;
  v10 = 2112;
  v11 = v1;
  _os_log_debug_impl(&dword_0, v0, OS_LOG_TYPE_DEBUG, "[DEBUG] Ignoring notification for non-iCloud account (%@, identifier: %@)%@", &v6, 0x20u);
}

void sub_31AC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] account save failed: ignoring%@", &v2, 0xCu);
}

void sub_3224(uint64_t *a1)
{
  v1 = *a1;
  sub_2CE8();
  sub_2D00(&dword_0, v2, v3, "[DEBUG] ┏%llx jetsaming apps%@");
}

void sub_3390()
{
  sub_2D40();
  v1 = [v0 error];
  sub_2CD4();
  sub_2D20(&dword_0, v2, v3, "[ERROR] Rescheduling jobs pending cellular failed with error: %@%@", v4, v5, v6, v7, v8);
}

void sub_3420()
{
  sub_2D40();
  v1 = [v0 error];
  sub_2CD4();
  sub_2D20(&dword_0, v2, v3, "[ERROR] Failed to invalidate account cache: %@%@", v4, v5, v6, v7, v8);
}

void sub_34B0()
{
  sub_2D40();
  v1 = [v0 error];
  sub_2CD4();
  sub_2D20(&dword_0, v2, v3, "[ERROR] userVerifiedTermsWithReply error: %@%@", v4, v5, v6, v7, v8);
}

void sub_3540(uint64_t *a1)
{
  v1 = *a1;
  sub_2CE8();
  sub_2D00(&dword_0, v2, v3, "[DEBUG] ┏%llx deleting migration default%@");
}

void sub_3618(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] jetsam completed%@", &v2, 0xCu);
}

void sub_36A4(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 134218242;
  v4 = a2;
  v5 = 2112;
  v6 = a1;
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "[DEBUG] ┗%llx %@", &v3, 0x16u);
}