@interface CallParticipantsViewController
- (_TtC13InCallService30CallParticipantsViewController)initWithCallDisplayStyleManager:(id)a3 contactsCache:(id)a4;
- (_TtC13InCallService30CallParticipantsViewController)initWithCallDisplayStyleManager:(id)a3 contactsCache:(id)a4 contacts:(id)a5;
- (id)currentCallGroups;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation CallParticipantsViewController

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1001A25E4(a3);
}

- (id)currentCallGroups
{
  v2 = self;
  sub_1001A2918();

  sub_1000064BC(0, &qword_1003AAF18);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (_TtC13InCallService30CallParticipantsViewController)initWithCallDisplayStyleManager:(id)a3 contactsCache:(id)a4
{
  v6 = a3;
  v7 = a4;
  return sub_1001A2AB0(a3, a4);
}

- (_TtC13InCallService30CallParticipantsViewController)initWithCallDisplayStyleManager:(id)a3 contactsCache:(id)a4 contacts:(id)a5
{
  v5 = a5;
  if (a5)
  {
    sub_1000064BC(0, &qword_1003AFB10);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v8 = a3;
  v9 = a4;
  return sub_1001A2B6C(a3, a4, v5);
}

@end