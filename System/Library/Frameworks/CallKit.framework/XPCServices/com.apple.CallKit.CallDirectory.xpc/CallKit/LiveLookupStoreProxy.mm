@interface LiveLookupStoreProxy
- (BOOL)enabledForExtensionWith:(id)a3;
- (BOOL)llExtension:(id)a3 containedIn:(id)a4;
- (BOOL)shouldBlockWith:(id)a3;
- (NSString)imagePath;
- (_TtC31com_apple_CallKit_CallDirectory20LiveLookupStoreProxy)init;
- (id)activeExtensions;
- (id)extensionIdentifierFor:(id)a3;
- (id)extensionIdentifierForBlockingInfo:(id)a3;
- (id)extensionIdentifierForIdentityInfo:(id)a3;
- (id)extensionIdentifierFrom:(id)a3;
- (id)extensionUpdateFor:(id)a3 isAppStorVendable:(BOOL)a4;
- (id)fetchIdentityInfoFor:(id)a3 from:(id)a4;
- (id)firstEnabledBlockedExtensionIdentifierFor:(id)a3;
- (id)getBlockingInfoFor:(id)a3;
- (id)getBlockingInfoFor:(id)a3 with:(id)a4;
- (id)iconURLFor:(id)a3;
- (id)nameFor:(id)a3;
- (int64_t)identityTypeFor:(id)a3;
- (void)cleanup;
- (void)resetForExtensionWith:(id)a3;
- (void)setEnabled:(BOOL)a3 forExtensionWith:(NSString *)a4 completionHandler:(id)a5;
- (void)setImagePath:(id)a3;
- (void)updateBlockingInfoFor:(id)a3 with:(id)a4 shouldBlock:(BOOL)a5;
- (void)updateExtensionsWith:(id)a3;
- (void)updateIdentityInfoFor:(id)a3 with:(id)a4 name:(id)a5 iconURL:(id)a6 type:(int64_t)a7 ttlMinutes:(unsigned int)a8;
@end

@implementation LiveLookupStoreProxy

- (id)activeExtensions
{
  v2 = self;
  LiveLookupStoreProxy.activeExtensions()();

  sub_1000236C4();
  v3.super.isa = sub_1000239F4().super.isa;

  return v3.super.isa;
}

- (_TtC31com_apple_CallKit_CallDirectory20LiveLookupStoreProxy)init
{
  ObjectType = swift_getObjectType();
  v3 = [objc_allocWithZone(type metadata accessor for CoreAnalyticsReporter()) init];
  sub_1000237D4();
  v4 = sub_1000237C4();
  v5 = sub_100020444(v3, v4, objc_allocWithZone(ObjectType));
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

- (NSString)imagePath
{
  v2 = (self + OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory20LiveLookupStoreProxy_imagePath);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  v5 = sub_100023974();

  return v5;
}

- (void)setImagePath:(id)a3
{
  v4 = sub_100023984();
  v6 = v5;
  v7 = (self + OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory20LiveLookupStoreProxy_imagePath);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v4;
  v7[1] = v6;
}

- (id)extensionIdentifierFor:(id)a3
{
  v3 = [a3 identifier];

  return v3;
}

- (id)extensionIdentifierFrom:(id)a3
{
  v3 = a3;
  result = [v3 dbExtension];
  if (result)
  {
    v5 = result;
    v6 = [result identifier];

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (id)extensionIdentifierForIdentityInfo:(id)a3
{
  v3 = a3;
  v4 = [v3 dbExtension];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 identifier];

    sub_100023984();
    v7 = sub_100023974();
  }

  else
  {

    v7 = 0;
  }

  return v7;
}

- (int64_t)identityTypeFor:(id)a3
{
  v3 = [a3 type];
  if (v3 == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (v3 == 2);
  }
}

- (id)extensionIdentifierForBlockingInfo:(id)a3
{
  v4 = self;
  v5 = a3;
  _s018com_apple_CallKit_C9Directory20LiveLookupStoreProxyC19extensionIdentifier3forSSSg08IdentityG012BlockingInfoCSg_tF_0(a3);
  v7 = v6;

  if (v7)
  {
    v8 = sub_100023974();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)getBlockingInfoFor:(id)a3
{
  sub_100023984();
  v4 = *(self + OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory20LiveLookupStoreProxy_liveLookupStore + 32);
  sub_1000021D0((self + OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory20LiveLookupStoreProxy_liveLookupStore), *(self + OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory20LiveLookupStoreProxy_liveLookupStore + 24));
  v5 = self;
  sub_100023744();

  sub_1000237F4();
  v6.super.isa = sub_1000239F4().super.isa;

  return v6.super.isa;
}

- (BOOL)llExtension:(id)a3 containedIn:(id)a4
{
  sub_1000237F4();
  v6 = sub_100023A04();
  v7 = a3;
  v8 = self;
  v9 = _s018com_apple_CallKit_C9Directory20LiveLookupStoreProxyC11llExtension_11containedInSb08IdentityG00fG11DBExtensionC_SayAF12BlockingInfoCGtF_0(v7, v6);

  return v9 & 1;
}

- (id)firstEnabledBlockedExtensionIdentifierFor:(id)a3
{
  sub_1000237F4();
  v4 = sub_100023A04();
  v5 = self;
  _s018com_apple_CallKit_C9Directory20LiveLookupStoreProxyC38firstEnabledBlockedExtensionIdentifier3forSSSgSay08IdentityG012BlockingInfoCG_tF_0(v4);
  v7 = v6;

  if (v7)
  {
    v8 = sub_100023974();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)getBlockingInfoFor:(id)a3 with:(id)a4
{
  sub_100023984();
  v6 = a4;
  v7 = self;
  v8 = LiveLookupStoreProxy.getBlockingInfo(for:with:)();

  return v8;
}

- (BOOL)enabledForExtensionWith:(id)a3
{
  v4 = sub_100023984();
  v6 = v5;
  v7 = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  LOBYTE(v4) = LiveLookupStoreProxy.enabled(forExtensionWith:)(v8);

  return v4 & 1;
}

- (void)setEnabled:(BOOL)a3 forExtensionWith:(NSString *)a4 completionHandler:(id)a5
{
  v9 = (*(*(sub_100014320(&qword_10003C700, &qword_100028730) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = &v19 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  *(v13 + 32) = v12;
  *(v13 + 40) = self;
  v14 = sub_100023A74();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100028740;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100028590;
  v16[5] = v15;
  v17 = a4;
  v18 = self;
  sub_100020148(0, 0, v11, &unk_100028760, v16);
}

- (void)cleanup
{
  v2 = self;
  LiveLookupStoreProxy.cleanup()();
}

- (void)resetForExtensionWith:(id)a3
{
  sub_100023984();
  v4 = *(self + OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory20LiveLookupStoreProxy_liveLookupStore + 32);
  sub_1000021D0((self + OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory20LiveLookupStoreProxy_liveLookupStore), *(self + OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory20LiveLookupStoreProxy_liveLookupStore + 24));
  v5 = self;
  sub_100023714();
}

- (BOOL)shouldBlockWith:(id)a3
{
  sub_1000237F4();
  v4 = sub_100023A04();
  v5 = self;
  v6 = _s018com_apple_CallKit_C9Directory20LiveLookupStoreProxyC11shouldBlock4withSbSay08IdentityG012BlockingInfoCG_tF_0(v4);

  return v6;
}

- (void)updateBlockingInfoFor:(id)a3 with:(id)a4 shouldBlock:(BOOL)a5
{
  v8 = sub_100023984();
  v10 = v9;
  v11 = a4;
  v12 = self;
  LiveLookupStoreProxy.updateBlockingInfo(for:with:shouldBlock:)(v8, v10, v11, a5);
}

- (void)updateIdentityInfoFor:(id)a3 with:(id)a4 name:(id)a5 iconURL:(id)a6 type:(int64_t)a7 ttlMinutes:(unsigned int)a8
{
  v14 = sub_100014320(&qword_10003C6D0, &qword_100028670);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v27 - v16;
  v18 = sub_100023984();
  v20 = v19;
  if (!a5)
  {
    v21 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v24 = sub_100023614();
    (*(*(v24 - 8) + 56))(v17, 1, 1, v24);
    goto LABEL_6;
  }

  v21 = sub_100023984();
  a5 = v22;
  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1000235F4();
  v23 = sub_100023614();
  (*(*(v23 - 8) + 56))(v17, 0, 1, v23);
LABEL_6:
  v25 = a4;
  v26 = self;
  LiveLookupStoreProxy.updateIdentityInfo(for:with:name:iconURL:type:ttlMinutes:)(v18, v20, v25, v21, a5, v17, a7, a8);

  sub_100019928(v17, &qword_10003C6D0, &qword_100028670);
}

- (id)nameFor:(id)a3
{
  v3 = a3;
  v4 = [v3 name];
  if (v4)
  {
    v5 = v4;
    sub_100023984();

    v6 = sub_100023974();
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (id)iconURLFor:(id)a3
{
  v4 = sub_100014320(&qword_10003C6D0, &qword_100028670);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v19 - v6;
  v8 = a3;
  v9 = [v8 iconURL];
  if (v9)
  {
    v10 = v9;
    sub_100023984();

    sub_100023604();

    v11 = sub_100023614();
    v12 = *(v11 - 8);
    v13 = (*(v12 + 48))(v7, 1, v11);
    v14 = 0;
    if (v13 != 1)
    {
      sub_1000235D4(v13);
      v16 = v15;
      (*(v12 + 8))(v7, v11);
      v14 = v16;
    }
  }

  else
  {

    v17 = sub_100023614();
    (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
    v14 = 0;
  }

  return v14;
}

- (id)fetchIdentityInfoFor:(id)a3 from:(id)a4
{
  sub_100023984();
  v6 = *(self + OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory20LiveLookupStoreProxy_liveLookupStore + 32);
  sub_1000021D0((self + OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory20LiveLookupStoreProxy_liveLookupStore), *(self + OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory20LiveLookupStoreProxy_liveLookupStore + 24));
  v7 = a4;
  v8 = self;
  v9 = sub_100023794();

  return v9;
}

- (id)extensionUpdateFor:(id)a3 isAppStorVendable:(BOOL)a4
{
  sub_100023984();
  v4 = objc_allocWithZone(sub_100023814());
  v5 = sub_100023804();

  return v5;
}

- (void)updateExtensionsWith:(id)a3
{
  sub_100023814();
  v4 = sub_100023A04();
  v5 = self;
  LiveLookupStoreProxy.updateExtensions(with:)(v4);
}

@end