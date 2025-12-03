@interface NotificationApplicationServices
+ (NotificationApplicationServices)shared;
- (MPVoicemailAccountManagerProtocol)accountManager;
- (MPVoicemailManagerProtocol)voicemailManager;
@end

@implementation NotificationApplicationServices

+ (NotificationApplicationServices)shared
{
  if (qword_100099390 != -1)
  {
    swift_once();
  }

  v3 = qword_10009BDF0;

  return v3;
}

- (MPVoicemailAccountManagerProtocol)accountManager
{
  v2 = qword_100099380;
  selfCopy = self;
  v4 = selfCopy;
  if (v2 != -1)
  {
    selfCopy = swift_once();
  }

  __chkstk_darwin(selfCopy);
  sub_100017538(&qword_1000995E8);
  sub_100060A7C();

  return v6;
}

- (MPVoicemailManagerProtocol)voicemailManager
{
  v2 = qword_100099380;
  selfCopy = self;
  v4 = selfCopy;
  if (v2 != -1)
  {
    selfCopy = swift_once();
  }

  __chkstk_darwin(selfCopy);
  sub_100017538(&qword_1000995D8);
  sub_100060A7C();

  return v6;
}

@end