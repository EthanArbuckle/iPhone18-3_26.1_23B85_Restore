@interface _NSLocalizedStringResourceSwiftWrapper
- (BOOL)isEqual:(id)a3;
- (NSLocale)locale;
- (NSString)defaultValue;
- (NSString)key;
- (NSString)table;
- (NSURL)bundleURL;
- (_NSLocalizedStringResourceSwiftWrapper)init;
- (_NSLocalizedStringResourceSwiftWrapper)initWithKey:(id)a3 defaultValue:(id)a4 table:(id)a5 locale:(id)a6 bundleURL:(id)a7;
- (id)copyWithZone:(void *)a3;
- (id)localizeWithOptions:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setLocale:(id)a3;
@end

@implementation _NSLocalizedStringResourceSwiftWrapper

- (id)copyWithZone:(void *)a3
{
  ObjectType = swift_getObjectType();
  v5 = *&self->wrapped[OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 56];
  v6 = *&self->wrapped[OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 72];
  v7 = *&self->wrapped[OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 24];
  v22 = *&self->wrapped[OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 40];
  v23 = v5;
  v24 = v6;
  v8 = *&self->wrapped[OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 8];
  v19 = *(&self->super.isa + OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped);
  v25 = *&self->wrapped[OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 88];
  v20 = v8;
  v21 = v7;
  v9 = objc_allocWithZone(ObjectType);
  v10 = &v9[OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped];
  v12 = v20;
  v11 = v21;
  *v10 = v19;
  *(v10 + 1) = v12;
  *(v10 + 2) = v11;
  v14 = v23;
  v13 = v24;
  v15 = v22;
  *(v10 + 12) = v25;
  *(v10 + 4) = v14;
  *(v10 + 5) = v13;
  *(v10 + 3) = v15;
  outlined init with copy of LocalizedStringResource(&v19, v18);
  v17.receiver = v9;
  v17.super_class = ObjectType;
  return [(_NSLocalizedStringResourceSwiftWrapper *)&v17 init];
}

- (void)setLocale:(id)a3
{
  type metadata accessor for _NSSwiftLocale();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = *(v5 + OBJC_IVAR____NSSwiftLocale_locale);
    v7 = *(v5 + OBJC_IVAR____NSSwiftLocale_locale + 8);
    swift_unknownObjectRetain();
  }

  else
  {
    type metadata accessor for _LocaleBridged();
    v6 = swift_allocObject();
    *(v6 + 16) = a3;
    v7 = lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.CodableStorage and conformance String.LocalizationValue.FormatArgument.CodableStorage(&lazy protocol witness table cache variable for type _LocaleBridged and conformance _LocaleBridged, type metadata accessor for _LocaleBridged);
    v8 = a3;
  }

  v9 = self + OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped;
  *(v9 + 7) = v6;
  *(v9 + 8) = v7;

  swift_unknownObjectRelease();
}

- (id)localizeWithOptions:(id)a3
{
  v4 = *&self->wrapped[OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 40];
  v5 = *&self->wrapped[OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 72];
  v30 = *&self->wrapped[OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 56];
  v31 = v5;
  v6 = *&self->wrapped[OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 8];
  v27[0] = *(&self->super.isa + OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped);
  v27[1] = v6;
  v7 = *&self->wrapped[OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 40];
  v9 = *(&self->super.isa + OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped);
  v8 = *&self->wrapped[OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 8];
  v28 = *&self->wrapped[OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 24];
  v29 = v7;
  v10 = *&self->wrapped[OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 72];
  v25[4] = v30;
  v25[5] = v10;
  v25[0] = v9;
  v25[1] = v8;
  v32 = *&self->wrapped[OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 88];
  v26 = *&self->wrapped[OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 88];
  v25[2] = v28;
  v25[3] = v4;
  v11 = a3;
  v12 = self;
  outlined init with copy of LocalizedStringResource(v27, &v20);
  String.LocalizationOptions.init(nsOptions:)(v11, &v20);
  v15 = v20;
  v16 = v21;
  v17 = v22;
  v18 = v23;
  v19 = v24;
  String.init(localized:options:)(v25, &v15);

  v13 = String._bridgeToObjectiveCImpl()();

  return v13;
}

- (_NSLocalizedStringResourceSwiftWrapper)initWithKey:(id)a3 defaultValue:(id)a4 table:(id)a5 locale:(id)a6 bundleURL:(id)a7
{
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  v13 = v12;
  if (a4)
  {
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)(a4);
    v16 = v15;
    if (a5)
    {
LABEL_3:
      a5 = static String._unconditionallyBridgeFromObjectiveC(_:)(a5);
      v18 = v17;
      goto LABEL_6;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a5)
    {
      goto LABEL_3;
    }
  }

  v18 = 0;
LABEL_6:
  type metadata accessor for _NSSwiftLocale();
  v19 = swift_dynamicCastClass();
  if (v19)
  {
    v21 = *(v19 + OBJC_IVAR____NSSwiftLocale_locale);
    v20 = *(v19 + OBJC_IVAR____NSSwiftLocale_locale + 8);
    swift_unknownObjectRetain();
  }

  else
  {
    type metadata accessor for _LocaleBridged();
    v21 = swift_allocObject();
    *(v21 + 16) = a6;
    v20 = lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.CodableStorage and conformance String.LocalizationValue.FormatArgument.CodableStorage(&lazy protocol witness table cache variable for type _LocaleBridged and conformance _LocaleBridged, type metadata accessor for _LocaleBridged);
    v22 = a6;
  }

  *&v26 = v21;
  *(&v26 + 1) = v20;
  static URL._unconditionallyBridgeFromObjectiveC(_:)(a7, &v25);
  v24 = v25;
  return _NSLocalizedStringResourceSwiftWrapper.init(key:defaultValue:table:locale:bundleURL:)(v11, v13, v14, v16, a5, v18, &v26, &v24);
}

- (NSString)defaultValue
{
  v2 = String._bridgeToObjectiveCImpl()();

  return v2;
}

- (NSString)key
{
  v2 = String._bridgeToObjectiveCImpl()();

  return v2;
}

- (NSString)table
{
  if (*&self->wrapped[OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 40])
  {
    v3 = String._bridgeToObjectiveCImpl()();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  _NSLocalizedStringResourceSwiftWrapper.encode(with:)(v4);
}

- (NSURL)bundleURL
{
  v2 = *&self->wrapped[OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 72];
  ObjectType = swift_getObjectType();
  v4 = *(v2 + 432);
  swift_unknownObjectRetain();
  v5 = v4(ObjectType, v2);
  swift_unknownObjectRelease();

  return v5;
}

- (NSLocale)locale
{
  v2 = *&self->wrapped[OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 56];
  ObjectType = swift_getObjectType();
  v4 = *(v2 + 488);
  swift_unknownObjectRetain();
  v5 = v4(ObjectType, v2);
  swift_unknownObjectRelease();

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = _NSLocalizedStringResourceSwiftWrapper.isEqual(_:)(v8);

  outlined destroy of TermOfAddress?(v8, &_sypSgMd);
  return v6 & 1;
}

- (_NSLocalizedStringResourceSwiftWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end