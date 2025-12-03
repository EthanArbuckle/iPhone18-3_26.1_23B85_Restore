@interface CallParticipantsViewController
- (_TtC13InCallService30CallParticipantsViewController)initWithCallDisplayStyleManager:(id)manager contactsCache:(id)cache;
- (_TtC13InCallService30CallParticipantsViewController)initWithCallDisplayStyleManager:(id)manager contactsCache:(id)cache contacts:(id)contacts;
- (id)currentCallGroups;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation CallParticipantsViewController

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1001A25E4(appear);
}

- (id)currentCallGroups
{
  selfCopy = self;
  sub_1001A2918();

  sub_1000064BC(0, &qword_1003AAF18);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (_TtC13InCallService30CallParticipantsViewController)initWithCallDisplayStyleManager:(id)manager contactsCache:(id)cache
{
  managerCopy = manager;
  cacheCopy = cache;
  return sub_1001A2AB0(manager, cache);
}

- (_TtC13InCallService30CallParticipantsViewController)initWithCallDisplayStyleManager:(id)manager contactsCache:(id)cache contacts:(id)contacts
{
  contactsCopy = contacts;
  if (contacts)
  {
    sub_1000064BC(0, &qword_1003AFB10);
    contactsCopy = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  managerCopy = manager;
  cacheCopy = cache;
  return sub_1001A2B6C(manager, cache, contactsCopy);
}

@end