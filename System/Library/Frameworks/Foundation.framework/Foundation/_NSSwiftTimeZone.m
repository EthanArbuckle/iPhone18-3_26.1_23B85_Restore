@interface _NSSwiftTimeZone
- (BOOL)isDaylightSavingTime;
- (BOOL)isDaylightSavingTimeForDate:(id)a3;
- (Class)classForCoder;
- (NSData)data;
- (NSDate)nextDaylightSavingTimeTransition;
- (NSString)abbreviation;
- (NSString)name;
- (_NSSwiftTimeZone)init;
- (_NSSwiftTimeZone)initWithCoder:(id)a3;
- (_NSSwiftTimeZone)initWithName:(id)a3;
- (_NSSwiftTimeZone)initWithName:(id)a3 data:(id)a4;
- (double)daylightSavingTimeOffset;
- (double)daylightSavingTimeOffsetForDate:(id)a3;
- (id)abbreviationForDate:(id)a3;
- (id)localizedName:(int64_t)a3 locale:(id)a4;
- (id)nextDaylightSavingTimeTransitionAfterDate:(id)a3;
- (id)replacementObjectForKeyedArchiver:(id)a3;
- (int64_t)secondsFromGMT;
- (int64_t)secondsFromGMTForDate:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _NSSwiftTimeZone

- (NSString)name
{
  v3 = *&self->timeZone[OBJC_IVAR____NSSwiftTimeZone_timeZone];
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 32);
  v6 = self;
  swift_unknownObjectRetain();
  v5(ObjectType, v3);
  swift_unknownObjectRelease();

  v7 = String._bridgeToObjectiveCImpl()();

  return v7;
}

- (id)replacementObjectForKeyedArchiver:(id)a3
{
  v4 = a3;
  v5 = self;
  _NSSwiftTimeZone.replacementObject(for:)(v13);

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

- (int64_t)secondsFromGMT
{
  v2 = self;
  v3 = _NSSwiftTimeZone.secondsFromGMT.getter();

  return v3;
}

- (int64_t)secondsFromGMTForDate:(id)a3
{
  v4 = self;
  [a3 timeIntervalSinceReferenceDate];
  v6 = v5;
  v7 = *&v4->timeZone[OBJC_IVAR____NSSwiftTimeZone_timeZone];
  ObjectType = swift_getObjectType();
  v12 = v6;
  v9 = *(v7 + 40);
  swift_unknownObjectRetain();
  v10 = v9(&v12, ObjectType, v7);
  swift_unknownObjectRelease();

  return v10;
}

- (NSString)abbreviation
{
  v2 = self;
  _NSSwiftTimeZone.abbreviation.getter();
  v4 = v3;

  if (v4)
  {
    v5 = String._bridgeToObjectiveCImpl()();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (Class)classForCoder
{
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSTimeZone);

  return swift_getObjCClassFromMetadata();
}

- (void)encodeWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  [(NSTimeZone *)&v4 encodeWithCoder:a3];
}

- (NSData)data
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = self;
  v3 = _NSSwiftTimeZone.data.getter();
  v5 = v4;

  v6 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v6)
    {
      v12 = v3;
      v13 = v5;
      v14 = BYTE2(v5);
      v15 = BYTE3(v5);
      v16 = BYTE4(v5);
      v17 = BYTE5(v5);
      v7 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithBytes:&v12 length:BYTE6(v5)];
      goto LABEL_9;
    }

    v8 = v3;
    v9 = v3 >> 32;
    if (v3 >> 32 < v3)
    {
      __break(1u);
    }

    goto LABEL_7;
  }

  if (v6 == 2)
  {
    v8 = *(v3 + 16);
    v9 = *(v3 + 24);
LABEL_7:
    v7 = __DataStorage.bridgedReference(_:)(v8, v9);
    goto LABEL_9;
  }

  v7 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) init];
LABEL_9:
  v10 = v7;
  outlined consume of Data._Representation(v3, v5);

  return v10;
}

- (double)daylightSavingTimeOffset
{
  v2 = self;
  v3 = _NSSwiftTimeZone.daylightSavingTimeOffset.getter();

  return v3;
}

- (BOOL)isDaylightSavingTime
{
  v2 = self;
  v3 = _NSSwiftTimeZone.isDaylightSavingTime.getter();

  return v3 & 1;
}

- (id)nextDaylightSavingTimeTransitionAfterDate:(id)a3
{
  v4 = self;
  [a3 timeIntervalSinceReferenceDate];
  v6 = v5;
  v7 = *&v4->timeZone[OBJC_IVAR____NSSwiftTimeZone_timeZone];
  ObjectType = swift_getObjectType();
  v12 = v6;
  v9 = *(v7 + 88);
  swift_unknownObjectRetain();
  v9(&v13, &v12, ObjectType, v7);
  swift_unknownObjectRelease();

  if (v14)
  {
    v10 = 0;
  }

  else
  {
    v10 = [objc_allocWithZone(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate_];
  }

  return v10;
}

- (NSDate)nextDaylightSavingTimeTransition
{
  v2 = self;
  _NSSwiftTimeZone.nextDaylightSavingTimeTransition.getter();

  if (v6)
  {
    v3 = 0;
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate_];
  }

  return v3;
}

- (_NSSwiftTimeZone)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (id)abbreviationForDate:(id)a3
{
  v4 = self;
  [a3 timeIntervalSinceReferenceDate];
  v6 = v5;
  v7 = *&v4->timeZone[OBJC_IVAR____NSSwiftTimeZone_timeZone];
  ObjectType = swift_getObjectType();
  v14 = v6;
  v9 = *(v7 + 64);
  swift_unknownObjectRetain();
  v9(&v14, ObjectType, v7);
  v11 = v10;
  swift_unknownObjectRelease();

  if (v11)
  {
    v12 = String._bridgeToObjectiveCImpl()();
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)isDaylightSavingTimeForDate:(id)a3
{
  v4 = self;
  [a3 timeIntervalSinceReferenceDate];
  v6 = v5;
  v7 = *&v4->timeZone[OBJC_IVAR____NSSwiftTimeZone_timeZone];
  ObjectType = swift_getObjectType();
  v11 = v6;
  v9 = *(v7 + 72);
  swift_unknownObjectRetain();
  LOBYTE(v7) = v9(&v11, ObjectType, v7);
  swift_unknownObjectRelease();

  return v7 & 1;
}

- (double)daylightSavingTimeOffsetForDate:(id)a3
{
  v4 = self;
  [a3 timeIntervalSinceReferenceDate];
  v6 = v5;
  v7 = *&v4->timeZone[OBJC_IVAR____NSSwiftTimeZone_timeZone];
  ObjectType = swift_getObjectType();
  v12 = v6;
  v9 = *(v7 + 80);
  swift_unknownObjectRetain();
  v10 = v9(&v12, ObjectType, v7);
  swift_unknownObjectRelease();

  return v10;
}

- (id)localizedName:(int64_t)a3 locale:(id)a4
{
  if (a4)
  {
    type metadata accessor for _NSSwiftLocale();
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      v8 = *(v7 + OBJC_IVAR____NSSwiftLocale_locale);
      v9 = *(v7 + OBJC_IVAR____NSSwiftLocale_locale + 8);
      swift_unknownObjectRetain();
    }

    else
    {
      type metadata accessor for _LocaleBridged();
      v8 = swift_allocObject();
      *(v8 + 16) = a4;
      v9 = _s10Foundation14_LocaleBridgedCAcA01_B8ProtocolAAWlTm_0(&lazy protocol witness table cache variable for type _LocaleBridged and conformance _LocaleBridged, type metadata accessor for _LocaleBridged);
      v10 = a4;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v11 = *&self->timeZone[OBJC_IVAR____NSSwiftTimeZone_timeZone];
  ObjectType = swift_getObjectType();
  v19[0] = v8;
  v19[1] = v9;
  v13 = *(v11 + 96);
  v14 = self;
  swift_unknownObjectRetain();
  v13(a3, v19, ObjectType, v11);
  v16 = v15;
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  if (v16)
  {
    v17 = String._bridgeToObjectiveCImpl()();
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (_NSSwiftTimeZone)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_NSSwiftTimeZone)initWithName:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_NSSwiftTimeZone)initWithName:(id)a3 data:(id)a4
{
  if (a4)
  {
    v4 = a4;
    v5 = specialized Data.init(referencing:)(v4);
    v7 = v6;

    outlined consume of Data._Representation(v5, v7);
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end