@interface _EXAppExtensionPointEnumerator
- (_EXAppExtensionPointEnumerator)init;
- (_EXAppExtensionPointEnumerator)initWithBundleIdentifier:(id)a3 sdkDictionary:(id)a4 entitlements:(id)a5;
- (id)nextObject;
@end

@implementation _EXAppExtensionPointEnumerator

- (_EXAppExtensionPointEnumerator)initWithBundleIdentifier:(id)a3 sdkDictionary:(id)a4 entitlements:(id)a5
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = specialized _dictionaryDownCast<A, B, C, D>(_:)(v9);

  specialized AppExtensionPointEnumerator.init(bundleIdentifier:sdkDictionary:entitlements:)(v6, v8, v11, v10, &v21);
  v12 = self + OBJC_IVAR____EXAppExtensionPointEnumerator_inner;
  v13 = v21;
  v14 = v22;
  v15 = v23;
  v26 = *(&v22 + 1);
  v16 = v22;
  *v12 = v21;
  *(v12 + 1) = v16;
  *(v12 + 4) = v15;

  outlined init with copy of UUID?(&v26, v24, &_sSDySSypGMd, &_sSDySSypGMR);
  specialized AppExtensionPointEnumerator.Iterator.init(_:)(v13, *(&v13 + 1), v14, *(&v14 + 1), v15, v24);
  outlined destroy of NSObject?(&v26, &_sSDySSypGMd, &_sSDySSypGMR);
  v17 = self + OBJC_IVAR____EXAppExtensionPointEnumerator_iterator;
  v18 = v24[1];
  *v17 = v24[0];
  *(v17 + 1) = v18;
  *(v17 + 2) = v24[2];
  *(v17 + 6) = v25;
  v20.receiver = self;
  v20.super_class = _EXAppExtensionPointEnumerator;
  return [(_EXAppExtensionPointEnumerator *)&v20 init];
}

- (id)nextObject
{
  swift_beginAccess();
  v3 = self;
  AppExtensionPointEnumerator.Iterator.next()(v4);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  swift_endAccess();
  if (v8)
  {
    v13 = type metadata accessor for _EXAppExtensionPointEnumerator.ExtensionPoint();
    v14 = objc_allocWithZone(v13);
    v15 = &v14[OBJC_IVAR____TtCE19ExtensionFoundationCSo30_EXAppExtensionPointEnumerator14ExtensionPoint_inner];
    *v15 = v6;
    *(v15 + 1) = v8;
    *(v15 + 2) = v10;
    v15[24] = v12;
    v15[25] = HIBYTE(v12) & 1;
    v25.receiver = v14;
    v25.super_class = v13;
    v16 = [(_EXAppExtensionPointEnumerator *)&v25 init];
    v26[3] = v13;
    v26[0] = v16;

    if (v13)
    {
      v17 = __swift_project_boxed_opaque_existential_1(v26, v13);
      v18 = *(v13 - 1);
      v19 = *(v18 + 64);
      MEMORY[0x1EEE9AC00](v17);
      v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v18 + 16))(v21);
      v22 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v18 + 8))(v21, v13);
      __swift_destroy_boxed_opaque_existential_0Tm(v26);
      v23 = v22;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v23 = 0;
LABEL_6:

  return v23;
}

- (_EXAppExtensionPointEnumerator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end