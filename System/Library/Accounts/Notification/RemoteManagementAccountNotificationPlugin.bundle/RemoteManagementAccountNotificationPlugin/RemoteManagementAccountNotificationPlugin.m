void sub_EFC(id a1)
{
  qword_CD90 = os_log_create("com.apple.remotemanagementd", "accountStatusHandler");

  _objc_release_x1();
}

void sub_FB8(id a1)
{
  v1 = +[RMModelAccountCalDAVDeclaration registeredIdentifier];
  v10[0] = v1;
  v11[0] = objc_opt_class();
  v2 = +[RMModelAccountCardDAVDeclaration registeredIdentifier];
  v10[1] = v2;
  v11[1] = objc_opt_class();
  v3 = +[RMModelAccountExchangeDeclaration registeredIdentifier];
  v10[2] = v3;
  v11[2] = objc_opt_class();
  v4 = +[RMModelAccountGoogleDeclaration registeredIdentifier];
  v10[3] = v4;
  v11[3] = objc_opt_class();
  v5 = +[RMModelAccountLDAPDeclaration registeredIdentifier];
  v10[4] = v5;
  v11[4] = objc_opt_class();
  v6 = +[RMModelAccountMailDeclaration registeredIdentifier];
  v10[5] = v6;
  v11[5] = objc_opt_class();
  v7 = +[RMModelAccountSubscribedCalendarDeclaration registeredIdentifier];
  v10[6] = v7;
  v11[6] = objc_opt_class();
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:7];
  v9 = qword_CDA0;
  qword_CDA0 = v8;
}

void sub_130C(id a1)
{
  qword_CDB0 = os_log_create("com.apple.remotemanagementd", "accountStatusHandlerCalDAV");

  _objc_release_x1();
}

void sub_1584(id a1)
{
  qword_CDC0 = os_log_create("com.apple.remotemanagementd", "accountStatusHandlerCardDAV");

  _objc_release_x1();
}

void sub_177C(id a1)
{
  qword_CDD0 = os_log_create("com.apple.remotemanagementd", "accountStatusHandlerExchange");

  _objc_release_x1();
}

void sub_1AA8(id a1)
{
  qword_CDE0 = os_log_create("com.apple.remotemanagementd", "accountStatusHandlerGoogle");

  _objc_release_x1();
}

void sub_1D2C(id a1)
{
  qword_CDF0 = os_log_create("com.apple.remotemanagementd", "accountStatusHandlerLDAP");

  _objc_release_x1();
}

void sub_1F68(id a1)
{
  qword_CE00 = os_log_create("com.apple.remotemanagementd", "accountStatusHandlerMail");

  _objc_release_x1();
}

void sub_2414(id a1)
{
  qword_CE10 = os_log_create("com.apple.remotemanagementd", "accountStatusHandlerSubscribedCalendar");

  _objc_release_x1();
}

void sub_2634(id a1)
{
  qword_CE20 = os_log_create("com.apple.remotemanagementd", "accountsNotificationPlugin");

  _objc_release_x1();
}

void sub_29A8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_29FC(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "No handler for %{public}@", &v2, 0xCu);
}

void sub_2B14(void *a1)
{
  v1 = [a1 identifier];
  sub_29C8();
  sub_29A8(&dword_0, v2, v3, "RM account modified: %{public}@", v4, v5, v6, v7, v8);
}

void sub_2B98(void *a1)
{
  v1 = [a1 identifier];
  sub_29C8();
  sub_29A8(&dword_0, v2, v3, "RM account status not modified: %{public}@", v4, v5, v6, v7, v8);
}

void sub_2C1C(void *a1)
{
  v1 = [a1 identifier];
  sub_29C8();
  sub_29A8(&dword_0, v2, v3, "RM account status modified: %{public}@", v4, v5, v6, v7, v8);
}

void sub_2CA0(void *a1)
{
  v1 = [a1 identifier];
  sub_29C8();
  sub_29A8(&dword_0, v2, v3, "RM account removed: %{public}@", v4, v5, v6, v7, v8);
}

void sub_2D24(void *a1)
{
  v1 = [a1 identifier];
  sub_29C8();
  sub_29A8(&dword_0, v2, v3, "RM account added: %{public}@", v4, v5, v6, v7, v8);
}

void sub_2DA8(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "Ignoring RM account change type: %u", v2, 8u);
}

void sub_2E20(os_log_t log)
{
  v1 = 138543362;
  v2 = @"com.apple.remotemanagement.status.account.notification";
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "Posted notification: %{public}@", &v1, 0xCu);
}