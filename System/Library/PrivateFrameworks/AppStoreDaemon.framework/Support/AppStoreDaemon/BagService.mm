@interface BagService
+ (Bag)cachedQOSPackageInstallMetricsCollectionChanceBag;
+ (Bag)emptyBag;
+ (BagService)appstoredBetaService;
+ (BagService)appstoredSandboxService;
+ (BagService)appstoredService;
- (AMSBagProtocol)amsBag;
- (AMSBagProtocol)autoupdatingAMSBag;
- (BagService)init;
- (id)addChangeObserverLimitedToKeys:(id)keys observer:(id)observer;
- (id)lastCountryCodeForStorefront:(unint64_t)storefront;
- (void)bagWithTimeout:(double)timeout completionHandler:(id)handler;
- (void)removeChangeObserverWithToken:(id)token;
- (void)warmUpCache;
@end

@implementation BagService

+ (BagService)appstoredService
{
  v2 = sub_1000D6AB8(&static AccountClientIdentifier.production.getter);

  return v2;
}

- (id)lastCountryCodeForStorefront:(unint64_t)storefront
{
  selfCopy = self;
  sub_10009C7E4(storefront);
  v6 = v5;

  if (v6)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BagService)appstoredSandboxService
{
  v2 = sub_1000D6AB8(&static AccountClientIdentifier.appStoreSandbox.getter);

  return v2;
}

+ (BagService)appstoredBetaService
{
  v2 = sub_1000D6AB8(&static AccountClientIdentifier.appStoreBeta.getter);

  return v2;
}

- (void)warmUpCache
{
  v3 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  selfCopy = self;
  static TaskPriority.userInitiated.getter();
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v5, 0, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = selfCopy;
  v9 = selfCopy;
  sub_1000D6CB8(0, 0, v5, 0, 0, &unk_100435C00, v8);

  sub_100005518(v5, &qword_10059C3E0);
}

- (AMSBagProtocol)amsBag
{
  v2 = (self + OBJC_IVAR___BagService_lastRecentBagMutex);
  selfCopy = self;
  os_unfair_lock_lock(v2);
  sub_1000044A4(&v2[2], v8, &qword_10059BDF0);
  os_unfair_lock_unlock(v2);
  v4 = v9;
  if (v9)
  {
    v5 = v10;
    sub_100005B60(v8, v9);
    v6 = sub_1000D1AA8(v4, v5, 0, type metadata accessor for ASDAMSBag, sub_1000D5448);
    sub_100005A00(v8);
  }

  else
  {
    sub_100005518(v8, &qword_10059BDF0);
    v6 = sub_1000CCE24();
  }

  return v6;
}

- (AMSBagProtocol)autoupdatingAMSBag
{
  selfCopy = self;
  v3 = sub_1000CCE24();

  return v3;
}

+ (Bag)emptyBag
{
  v8 = &type metadata for EmptyBag;
  v9 = sub_1000D68D0();
  v2 = type metadata accessor for ObjCBag();
  v3 = objc_allocWithZone(v2);
  sub_1000056D0(v7, v3 + OBJC_IVAR___Bag_bag);
  v6.receiver = v3;
  v6.super_class = v2;
  v4 = objc_msgSendSuper2(&v6, "init");
  sub_100005A00(v7);

  return v4;
}

- (void)bagWithTimeout:(double)timeout completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  _Block_copy(v6);
  selfCopy = self;
  sub_1000D71DC(selfCopy, v6, timeout);
  _Block_release(v6);
  _Block_release(v6);
}

- (id)addChangeObserverLimitedToKeys:(id)keys observer:(id)observer
{
  v7 = sub_100085D40(&qword_10059CBC0);
  v8 = __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v23 - v11;
  v13 = _Block_copy(observer);
  if (keys)
  {
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    selfCopy = self;

    sub_1000D7C90(v16);

    v17 = sub_100006074;
  }

  else
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    selfCopy2 = self;
    v17 = sub_100006060;
  }

  v19 = v17;
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = v14;

  sub_1000CA5F8(sub_1000D71D4, v20, v12);

  sub_1000044A4(v12, v10, &qword_10059CBC0);
  v21 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  sub_100005518(v12, &qword_10059CBC0);

  return v21;
}

- (void)removeChangeObserverWithToken:(id)token
{
  swift_unknownObjectRetain();
  selfCopy = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v5 = v8;
  v6 = sub_100005B60(v7, v8);
  sub_1000D58D4(v6, selfCopy, v5);

  sub_100005A00(v7);
}

- (BagService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (Bag)cachedQOSPackageInstallMetricsCollectionChanceBag
{
  v2 = sub_100172A34();

  return v2;
}

@end