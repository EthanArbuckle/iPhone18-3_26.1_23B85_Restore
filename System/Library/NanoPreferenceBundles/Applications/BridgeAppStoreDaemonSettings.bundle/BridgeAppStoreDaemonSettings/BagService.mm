@interface BagService
+ (Bag)emptyBag;
+ (BagService)appstoredBetaService;
+ (BagService)appstoredSandboxService;
+ (BagService)appstoredService;
- (AMSBagProtocol)amsBag;
- (AMSBagProtocol)autoupdatingAMSBag;
- (BagService)init;
- (void)warmUpCache;
@end

@implementation BagService

+ (BagService)appstoredService
{
  v2 = sub_11744(&static AccountClientIdentifier.production.getter);

  return v2;
}

+ (BagService)appstoredSandboxService
{
  v2 = sub_11744(&static AccountClientIdentifier.appStoreSandbox.getter);

  return v2;
}

+ (BagService)appstoredBetaService
{
  v2 = sub_11744(&static AccountClientIdentifier.appStoreBeta.getter);

  return v2;
}

- (void)warmUpCache
{
  v3 = sub_9C94(&qword_25930, &qword_1AC60);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v11 - v5;
  v7 = self;
  sub_188CC();
  v8 = sub_188EC();
  (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v7;
  v10 = v7;
  sub_11944(0, 0, v6, 0, 0, &unk_1AE50, v9);

  sub_13304(v6, &qword_25930, &qword_1AC60);
}

- (AMSBagProtocol)amsBag
{
  v2 = (self + OBJC_IVAR___BagService_lastRecentBagMutex);
  v3 = self;
  os_unfair_lock_lock(v2);
  sub_12D3C(&v2[2], v8, &qword_25970, &qword_1ACF0);
  os_unfair_lock_unlock(v2);
  v4 = v9;
  if (v9)
  {
    v5 = v10;
    sub_F19C(v8, v9);
    v6 = sub_7404(v4, v5);
    sub_128AC(v8);
  }

  else
  {
    sub_13304(v8, &qword_25970, &qword_1ACF0);
    v6 = sub_753C();
  }

  return v6;
}

- (AMSBagProtocol)autoupdatingAMSBag
{
  v2 = self;
  v3 = sub_753C();

  return v3;
}

+ (Bag)emptyBag
{
  v7[3] = &type metadata for EmptyBag;
  v7[4] = sub_132B0();
  v2 = type metadata accessor for ObjCBag();
  v3 = objc_allocWithZone(v2);
  sub_12974(v7, v3 + OBJC_IVAR___Bag_bag);
  v6.receiver = v3;
  v6.super_class = v2;
  v4 = objc_msgSendSuper2(&v6, "init");
  sub_128AC(v7);

  return v4;
}

- (BagService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end