@interface AMSDevice
+ (id)sk_bootSession;
+ (id)sk_defaultMediaAPIPlatform;
@end

@implementation AMSDevice

+ (id)sk_bootSession
{
  v2 = sub_100080FB4(&unk_1003CE610);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  sub_100176C48(&v8 - v3);
  v5 = type metadata accessor for UUID();
  isa = 0;
  if (sub_100081D0C(v4, 1, v5) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(*(v5 - 8) + 8))(v4, v5);
  }

  return isa;
}

+ (id)sk_defaultMediaAPIPlatform
{
  v2 = sub_100176B00();

  return v2;
}

@end