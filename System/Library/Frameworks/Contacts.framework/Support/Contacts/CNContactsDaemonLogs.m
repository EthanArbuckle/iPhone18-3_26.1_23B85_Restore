@interface CNContactsDaemonLogs
+ (OS_os_log)accounts;
+ (OS_os_log)accountsCleanup;
+ (OS_os_log)backgroundColors;
+ (OS_os_log)backup;
+ (OS_os_log)daemon;
+ (OS_os_log)exchange;
+ (OS_os_log)launchServices;
+ (OS_os_log)persistence;
+ (OS_os_log)purgeHistory;
+ (OS_os_log)settingsDefaultApps;
+ (OS_os_log)synchronizeContactProviders;
+ (OS_os_log)xpc;
@end

@implementation CNContactsDaemonLogs

+ (OS_os_log)daemon
{
  if (qword_10004E0C0 != -1)
  {
    sub_10002CA88();
  }

  v3 = qword_10004E0C8;

  return v3;
}

+ (OS_os_log)xpc
{
  if (qword_10004E0D0 != -1)
  {
    sub_10002CA9C();
  }

  v3 = qword_10004E0D8;

  return v3;
}

+ (OS_os_log)backup
{
  if (qword_10004E0E0 != -1)
  {
    sub_10002CAB0();
  }

  v3 = qword_10004E0E8;

  return v3;
}

+ (OS_os_log)purgeHistory
{
  if (qword_10004E0F0 != -1)
  {
    sub_10002CAC4();
  }

  v3 = qword_10004E0F8;

  return v3;
}

+ (OS_os_log)launchServices
{
  if (qword_10004E100 != -1)
  {
    sub_10002CAD8();
  }

  v3 = qword_10004E108;

  return v3;
}

+ (OS_os_log)persistence
{
  if (qword_10004E110 != -1)
  {
    sub_10002CAEC();
  }

  v3 = qword_10004E118;

  return v3;
}

+ (OS_os_log)exchange
{
  if (qword_10004E120 != -1)
  {
    sub_10002CB00();
  }

  v3 = qword_10004E128;

  return v3;
}

+ (OS_os_log)accounts
{
  if (qword_10004E130 != -1)
  {
    sub_10002CB14();
  }

  v3 = qword_10004E138;

  return v3;
}

+ (OS_os_log)accountsCleanup
{
  if (qword_10004E140 != -1)
  {
    sub_10002CB28();
  }

  v3 = qword_10004E148;

  return v3;
}

+ (OS_os_log)synchronizeContactProviders
{
  if (qword_10004E150 != -1)
  {
    sub_10002CB3C();
  }

  v3 = qword_10004E158;

  return v3;
}

+ (OS_os_log)backgroundColors
{
  if (qword_10004E160 != -1)
  {
    sub_10002CB50();
  }

  v3 = qword_10004E168;

  return v3;
}

+ (OS_os_log)settingsDefaultApps
{
  if (qword_10004E170 != -1)
  {
    sub_10002CB64();
  }

  v3 = qword_10004E178;

  return v3;
}

@end