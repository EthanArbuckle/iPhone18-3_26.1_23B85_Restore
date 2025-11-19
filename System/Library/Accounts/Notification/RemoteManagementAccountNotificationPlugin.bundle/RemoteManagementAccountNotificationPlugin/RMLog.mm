@interface RMLog
+ (id)accountStatusHandler;
+ (id)accountStatusHandlerCalDAV;
+ (id)accountStatusHandlerCardDAV;
+ (id)accountStatusHandlerExchange;
+ (id)accountStatusHandlerGoogle;
+ (id)accountStatusHandlerLDAP;
+ (id)accountStatusHandlerMail;
+ (id)accountStatusHandlerSubscribedCalendar;
+ (id)accountsNotificationPlugin;
@end

@implementation RMLog

+ (id)accountStatusHandler
{
  if (qword_CD98 != -1)
  {
    sub_29D4();
  }

  v3 = qword_CD90;

  return v3;
}

+ (id)accountStatusHandlerCalDAV
{
  if (qword_CDB8 != -1)
  {
    sub_2A74();
  }

  v3 = qword_CDB0;

  return v3;
}

+ (id)accountStatusHandlerCardDAV
{
  if (qword_CDC8 != -1)
  {
    sub_2A88();
  }

  v3 = qword_CDC0;

  return v3;
}

+ (id)accountStatusHandlerExchange
{
  if (qword_CDD8 != -1)
  {
    sub_2A9C();
  }

  v3 = qword_CDD0;

  return v3;
}

+ (id)accountStatusHandlerGoogle
{
  if (qword_CDE8 != -1)
  {
    sub_2AB0();
  }

  v3 = qword_CDE0;

  return v3;
}

+ (id)accountStatusHandlerLDAP
{
  if (qword_CDF8 != -1)
  {
    sub_2AC4();
  }

  v3 = qword_CDF0;

  return v3;
}

+ (id)accountStatusHandlerMail
{
  if (qword_CE08 != -1)
  {
    sub_2AD8();
  }

  v3 = qword_CE00;

  return v3;
}

+ (id)accountStatusHandlerSubscribedCalendar
{
  if (qword_CE18 != -1)
  {
    sub_2AEC();
  }

  v3 = qword_CE10;

  return v3;
}

+ (id)accountsNotificationPlugin
{
  if (qword_CE28 != -1)
  {
    sub_2B00();
  }

  v3 = qword_CE20;

  return v3;
}

@end