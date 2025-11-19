@interface _NSSwiftLocale
- (BOOL)_doesNotRequireSpecialCaseHandling;
- (BOOL)usesMetricSystem;
- (Class)classForCoder;
- (NSCharacterSet)exemplarCharacterSet;
- (NSString)alternateQuotationBeginDelimiter;
- (NSString)alternateQuotationEndDelimiter;
- (NSString)calendarIdentifier;
- (NSString)collationIdentifier;
- (NSString)collatorIdentifier;
- (NSString)currencyCode;
- (NSString)currencySymbol;
- (NSString)decimalSeparator;
- (NSString)groupingSeparator;
- (NSString)languageCode;
- (NSString)languageIdentifier;
- (NSString)localeIdentifier;
- (NSString)quotationBeginDelimiter;
- (NSString)quotationEndDelimiter;
- (NSString)scriptCode;
- (NSString)variantCode;
- (_NSSwiftLocale)initWithLocaleIdentifier:(id)a3;
- (id)_identifierCapturingPreferences;
- (id)_localeWithNewCalendarIdentifier:(id)a3;
- (id)_numberingSystem;
- (id)_prefForKey:(id)a3;
- (id)displayNameForKey:(id)a3 value:(id)a4;
- (id)localizedStringForCalendarIdentifier:(id)a3;
- (id)localizedStringForCollationIdentifier:(id)a3;
- (id)localizedStringForCollatorIdentifier:(id)a3;
- (id)localizedStringForCountryCode:(id)a3;
- (id)localizedStringForCurrencyCode:(id)a3;
- (id)localizedStringForCurrencySymbol:(id)a3;
- (id)localizedStringForLanguageCode:(id)a3;
- (id)localizedStringForLocaleIdentifier:(id)a3;
- (id)localizedStringForScriptCode:(id)a3;
- (id)localizedStringForVariantCode:(id)a3;
- (id)objectForKey:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _NSSwiftLocale

- (id)_numberingSystem
{
  v3 = *&self->locale[OBJC_IVAR____NSSwiftLocale_locale];
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 312);
  v6 = self;
  swift_unknownObjectRetain();
  v5(&v9, ObjectType, v3);
  swift_unknownObjectRelease();

  v7 = String._bridgeToObjectiveCImpl()();

  return v7;
}

- (NSString)languageCode
{
  v3 = *&self->locale[OBJC_IVAR____NSSwiftLocale_locale];
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 152);
  v6 = self;
  swift_unknownObjectRetain();
  v5(ObjectType, v3);
  swift_unknownObjectRelease();

  v7 = String._bridgeToObjectiveCImpl()();

  return v7;
}

- (NSString)calendarIdentifier
{
  v3 = *&self->locale[OBJC_IVAR____NSSwiftLocale_locale];
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 200);
  v6 = self;
  swift_unknownObjectRetain();
  v5(&v9, ObjectType, v3);
  swift_unknownObjectRelease();
  Calendar.Identifier.cfCalendarIdentifier.getter();

  v7 = String._bridgeToObjectiveCImpl()();

  return v7;
}

- (id)_prefForKey:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  v6 = v5;
  v7 = *&self->locale[OBJC_IVAR____NSSwiftLocale_locale];
  ObjectType = swift_getObjectType();
  v9 = *(v7 + 480);
  v10 = self;
  swift_unknownObjectRetain();
  v9(v18, v4, v6, ObjectType, v7);
  swift_unknownObjectRelease();

  v11 = v19;
  if (v19)
  {
    v12 = __swift_project_boxed_opaque_existential_1(v18, v19);
    v13 = *(v11 - 8);
    MEMORY[0x1EEE9AC00](v12);
    v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v15);
    v16 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v13 + 8))(v15, v11);
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  _NSSwiftLocale.object(forKey:)(v4, v13);

  v6 = v14;
  if (v14)
  {
    v7 = __swift_project_boxed_opaque_existential_1(v13, v14);
    v8 = *(v6 - 8);
    MEMORY[0x1EEE9AC00](v7);
    v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v10);
    v11 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v8 + 8))(v10, v6);
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NSString)localeIdentifier
{
  v2 = *&self->locale[OBJC_IVAR____NSSwiftLocale_locale];
  ObjectType = swift_getObjectType();
  (*(v2 + 64))(ObjectType, v2);
  v4 = String._bridgeToObjectiveCImpl()();

  return v4;
}

- (BOOL)_doesNotRequireSpecialCaseHandling
{
  v2 = *&self->locale[OBJC_IVAR____NSSwiftLocale_locale];
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 64))(ObjectType, v2);
  v6 = specialized static Locale.identifierDoesNotRequireSpecialCaseHandling(_:)(v4, v5);

  return v6;
}

- (BOOL)usesMetricSystem
{
  v3 = *&self->locale[OBJC_IVAR____NSSwiftLocale_locale];
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 216);
  v6 = self;
  swift_unknownObjectRetain();
  LOBYTE(v3) = v5(ObjectType, v3);
  swift_unknownObjectRelease();

  return v3 & 1;
}

- (id)_localeWithNewCalendarIdentifier:(id)a3
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  v8.value._countAndFlagsBits = v4;
  v8.value._object = v6;
  v9 = _NSSwiftLocale._localeWithNewCalendarIdentifier(_:)(v8);

  return v9;
}

- (NSString)collatorIdentifier
{
  v3 = *&self->locale[OBJC_IVAR____NSSwiftLocale_locale];
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 256);
  v6 = self;
  swift_unknownObjectRetain();
  v5(ObjectType, v3);
  swift_unknownObjectRelease();

  v7 = String._bridgeToObjectiveCImpl()();

  return v7;
}

- (NSString)languageIdentifier
{
  v2 = self;
  _NSSwiftLocale.languageIdentifier.getter();

  v3 = String._bridgeToObjectiveCImpl()();

  return v3;
}

- (Class)classForCoder
{
  v2 = self;
  _NSSwiftLocale.classForCoder.getter();

  return swift_getObjCClassFromMetadata();
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  _NSSwiftLocale.encode(with:)(v4);
}

- (NSString)scriptCode
{
  v3 = *&self->locale[OBJC_IVAR____NSSwiftLocale_locale];
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 160);
  v6 = self;
  swift_unknownObjectRetain();
  v5(ObjectType, v3);
  v8 = v7;
  swift_unknownObjectRelease();

  if (v8)
  {
    v9 = String._bridgeToObjectiveCImpl()();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSString)currencySymbol
{
  v3 = *&self->locale[OBJC_IVAR____NSSwiftLocale_locale];
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 240);
  v6 = self;
  swift_unknownObjectRetain();
  v5(ObjectType, v3);
  swift_unknownObjectRelease();

  v7 = String._bridgeToObjectiveCImpl()();

  return v7;
}

- (NSString)currencyCode
{
  v3 = *&self->locale[OBJC_IVAR____NSSwiftLocale_locale];
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 248);
  v6 = self;
  swift_unknownObjectRetain();
  v5(ObjectType, v3);
  v8 = v7;
  swift_unknownObjectRelease();

  if (v8)
  {
    v9 = String._bridgeToObjectiveCImpl()();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_identifierCapturingPreferences
{
  v3 = *&self->locale[OBJC_IVAR____NSSwiftLocale_locale];
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 472);
  v6 = self;
  swift_unknownObjectRetain();
  v5(ObjectType, v3);
  swift_unknownObjectRelease();

  v7 = String._bridgeToObjectiveCImpl()();

  return v7;
}

- (id)localizedStringForLanguageCode:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  v6 = v5;
  v7 = *&self->locale[OBJC_IVAR____NSSwiftLocale_locale];
  ObjectType = swift_getObjectType();
  v9 = *(v7 + 80);
  v10 = self;
  swift_unknownObjectRetain();
  v9(v4, v6, ObjectType, v7);
  v12 = v11;
  swift_unknownObjectRelease();

  if (v12)
  {
    v13 = String._bridgeToObjectiveCImpl()();
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)displayNameForKey:(id)a3 value:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();
  v6 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  _NSSwiftLocale.displayName(forKey:value:)(v5, v11);
  v8 = v7;

  __swift_destroy_boxed_opaque_existential_1(v11);
  if (v8)
  {
    v9 = String._bridgeToObjectiveCImpl()();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)localizedStringForCountryCode:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  v6 = v5;
  v7 = *&self->locale[OBJC_IVAR____NSSwiftLocale_locale];
  ObjectType = swift_getObjectType();
  v9 = *(v7 + 88);
  v10 = self;
  swift_unknownObjectRetain();
  v9(v4, v6, ObjectType, v7);
  v12 = v11;
  swift_unknownObjectRelease();

  if (v12)
  {
    v13 = String._bridgeToObjectiveCImpl()();
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (NSString)decimalSeparator
{
  v3 = *&self->locale[OBJC_IVAR____NSSwiftLocale_locale];
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 224);
  v6 = self;
  swift_unknownObjectRetain();
  v5(ObjectType, v3);
  swift_unknownObjectRelease();

  v7 = String._bridgeToObjectiveCImpl()();

  return v7;
}

- (_NSSwiftLocale)initWithLocaleIdentifier:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  if (one-time initialization token for cache != -1)
  {
    v9 = v4;
    swift_once();
    v4 = v9;
  }

  v5 = static LocaleCache.cache;
  MEMORY[0x1EEE9AC00](v4);
  os_unfair_lock_lock((v5 + 48));
  closure #1 in LocaleCache.fixed(_:)partial apply((v5 + 16), &v12);
  os_unfair_lock_unlock((v5 + 48));
  v10 = v12;

  *(&self->super.super.super.isa + OBJC_IVAR____NSSwiftLocale_locale) = v10;
  v6 = String._bridgeToObjectiveCImpl()();
  v11.receiver = self;
  v11.super_class = type metadata accessor for _NSSwiftLocale();
  v7 = [(_NSSwiftLocale *)&v11 initWithLocaleIdentifier:v6];
  swift_unknownObjectRelease();
  return v7;
}

- (NSString)variantCode
{
  v2 = *&self->locale[OBJC_IVAR____NSSwiftLocale_locale];
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 168))(ObjectType, v2);
  if (v5)
  {
    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      v7 = String._bridgeToObjectiveCImpl()();
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)collationIdentifier
{
  v3 = *&self->locale[OBJC_IVAR____NSSwiftLocale_locale];
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 208);
  v6 = self;
  swift_unknownObjectRetain();
  v5(ObjectType, v3);
  v8 = v7;
  swift_unknownObjectRelease();

  if (v8)
  {
    v9 = String._bridgeToObjectiveCImpl()();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSString)groupingSeparator
{
  v3 = *&self->locale[OBJC_IVAR____NSSwiftLocale_locale];
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 232);
  v6 = self;
  swift_unknownObjectRetain();
  v5(ObjectType, v3);
  swift_unknownObjectRelease();

  v7 = String._bridgeToObjectiveCImpl()();

  return v7;
}

- (NSString)quotationBeginDelimiter
{
  v3 = *&self->locale[OBJC_IVAR____NSSwiftLocale_locale];
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 264);
  v6 = self;
  swift_unknownObjectRetain();
  v5(ObjectType, v3);
  swift_unknownObjectRelease();

  v7 = String._bridgeToObjectiveCImpl()();

  return v7;
}

- (NSString)quotationEndDelimiter
{
  v3 = *&self->locale[OBJC_IVAR____NSSwiftLocale_locale];
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 272);
  v6 = self;
  swift_unknownObjectRetain();
  v5(ObjectType, v3);
  swift_unknownObjectRelease();

  v7 = String._bridgeToObjectiveCImpl()();

  return v7;
}

- (NSString)alternateQuotationBeginDelimiter
{
  v3 = *&self->locale[OBJC_IVAR____NSSwiftLocale_locale];
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 280);
  v6 = self;
  swift_unknownObjectRetain();
  v5(ObjectType, v3);
  swift_unknownObjectRelease();

  v7 = String._bridgeToObjectiveCImpl()();

  return v7;
}

- (NSString)alternateQuotationEndDelimiter
{
  v3 = *&self->locale[OBJC_IVAR____NSSwiftLocale_locale];
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 288);
  v6 = self;
  swift_unknownObjectRetain();
  v5(ObjectType, v3);
  swift_unknownObjectRelease();

  v7 = String._bridgeToObjectiveCImpl()();

  return v7;
}

- (NSCharacterSet)exemplarCharacterSet
{
  v2 = self;
  _NSSwiftLocale.exemplarCharacterSet.getter(&v5);

  [*(v5 + 16) copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSCharacterSet);
  swift_dynamicCast();

  return v4;
}

- (id)localizedStringForLocaleIdentifier:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  v6 = v5;
  v7 = *&self->locale[OBJC_IVAR____NSSwiftLocale_locale];
  ObjectType = swift_getObjectType();
  v9 = *(v7 + 72);
  v10 = self;
  swift_unknownObjectRetain();
  v9(v4, v6, ObjectType, v7);
  swift_unknownObjectRelease();

  v11 = String._bridgeToObjectiveCImpl()();

  return v11;
}

- (id)localizedStringForScriptCode:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  v6 = v5;
  v7 = *&self->locale[OBJC_IVAR____NSSwiftLocale_locale];
  ObjectType = swift_getObjectType();
  v9 = *(v7 + 96);
  v10 = self;
  swift_unknownObjectRetain();
  v9(v4, v6, ObjectType, v7);
  v12 = v11;
  swift_unknownObjectRelease();

  if (v12)
  {
    v13 = String._bridgeToObjectiveCImpl()();
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)localizedStringForVariantCode:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  v6 = v5;
  v7 = *&self->locale[OBJC_IVAR____NSSwiftLocale_locale];
  ObjectType = swift_getObjectType();
  v9 = *(v7 + 104);
  v10 = self;
  swift_unknownObjectRetain();
  v9(v4, v6, ObjectType, v7);
  v12 = v11;
  swift_unknownObjectRelease();

  if (v12)
  {
    v13 = String._bridgeToObjectiveCImpl()();
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)localizedStringForCalendarIdentifier:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  v6 = v5;
  v7 = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  object = _NSSwiftLocale.localizedString(forCalendarIdentifier:)(v8).value._object;

  if (object)
  {
    v10 = String._bridgeToObjectiveCImpl()();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)localizedStringForCollationIdentifier:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  v6 = v5;
  v7 = *&self->locale[OBJC_IVAR____NSSwiftLocale_locale];
  ObjectType = swift_getObjectType();
  v9 = *(v7 + 136);
  v10 = self;
  swift_unknownObjectRetain();
  v9(v4, v6, ObjectType, v7);
  v12 = v11;
  swift_unknownObjectRelease();

  if (v12)
  {
    v13 = String._bridgeToObjectiveCImpl()();
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)localizedStringForCurrencyCode:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  v6 = v5;
  v7 = *&self->locale[OBJC_IVAR____NSSwiftLocale_locale];
  ObjectType = swift_getObjectType();
  v9 = *(v7 + 120);
  v10 = self;
  swift_unknownObjectRetain();
  v9(v4, v6, ObjectType, v7);
  v12 = v11;
  swift_unknownObjectRelease();

  if (v12)
  {
    v13 = String._bridgeToObjectiveCImpl()();
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)localizedStringForCurrencySymbol:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  v6 = v5;
  v7 = *&self->locale[OBJC_IVAR____NSSwiftLocale_locale];
  ObjectType = swift_getObjectType();
  v9 = *(v7 + 128);
  v10 = self;
  swift_unknownObjectRetain();
  v9(v4, v6, ObjectType, v7);
  v12 = v11;
  swift_unknownObjectRelease();

  if (v12)
  {
    v13 = String._bridgeToObjectiveCImpl()();
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)localizedStringForCollatorIdentifier:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  v6 = v5;
  v7 = *&self->locale[OBJC_IVAR____NSSwiftLocale_locale];
  ObjectType = swift_getObjectType();
  v9 = *(v7 + 144);
  v10 = self;
  swift_unknownObjectRetain();
  v9(v4, v6, ObjectType, v7);
  v12 = v11;
  swift_unknownObjectRelease();

  if (v12)
  {
    v13 = String._bridgeToObjectiveCImpl()();
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end