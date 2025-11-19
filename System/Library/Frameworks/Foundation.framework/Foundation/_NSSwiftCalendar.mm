@interface _NSSwiftCalendar
- (BOOL)date:(id)a3 matchesComponents:(id)a4;
- (BOOL)isDate:(id)a3 equalToDate:(id)a4 toUnitGranularity:(unint64_t)a5;
- (BOOL)isDate:(id)a3 inSameDayAsDate:(id)a4;
- (BOOL)isDateInWeekend:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)nextWeekendStartDate:(id *)a3 interval:(double *)a4 options:(unint64_t)a5 afterDate:(id)a6;
- (BOOL)rangeOfUnit:(unint64_t)a3 startDate:(id *)a4 interval:(double *)a5 forDate:(id)a6;
- (BOOL)rangeOfWeekendStartDate:(id *)a3 interval:(double *)a4 containingDate:(id)a5;
- (Class)classForCoder;
- (NSLocale)locale;
- (NSString)calendarIdentifier;
- (NSString)debugDescription;
- (NSTimeZone)timeZone;
- (_NSRange)maximumRangeOfUnit:(unint64_t)a3;
- (_NSRange)minimumRangeOfUnit:(unint64_t)a3;
- (_NSRange)rangeOfUnit:(unint64_t)a3 inUnit:(unint64_t)a4 forDate:(id)a5;
- (id)_components:(unint64_t)a3 fromDate:(id)a4;
- (id)_componentsInTimeZone:(id)a3 fromDate:(id)a4;
- (id)_dateFromComponents:(id)a3;
- (id)components:(unint64_t)a3 fromDate:(id)a4 toDate:(id)a5 options:(unint64_t)a6;
- (id)components:(unint64_t)a3 fromDateComponents:(id)a4 toDateComponents:(id)a5 options:(unint64_t)a6;
- (id)copyWithZone:(void *)a3;
- (id)dateByAddingComponents:(id)a3 toDate:(id)a4 options:(unint64_t)a5;
- (id)dateBySettingHour:(int64_t)a3 minute:(int64_t)a4 second:(int64_t)a5 ofDate:(id)a6 options:(unint64_t)a7;
- (id)nextDateAfterDate:(id)a3 matchingComponents:(id)a4 options:(unint64_t)a5;
- (id)nextDateAfterDate:(id)a3 matchingHour:(int64_t)a4 minute:(int64_t)a5 second:(int64_t)a6 options:(unint64_t)a7;
- (id)nextDateAfterDate:(id)a3 matchingUnit:(unint64_t)a4 value:(int64_t)a5 options:(unint64_t)a6;
- (id)startOfDayForDate:(id)a3;
- (int64_t)compareDate:(id)a3 toDate:(id)a4 toUnitGranularity:(unint64_t)a5;
- (int64_t)component:(unint64_t)a3 fromDate:(id)a4;
- (int64_t)firstWeekday;
- (int64_t)minimumDaysInFirstWeek;
- (int64_t)ordinalityOfUnit:(unint64_t)a3 inUnit:(unint64_t)a4 forDate:(id)a5;
- (void)_enumerateDatesStartingAfterDate:(id)a3 matchingComponents:(id)a4 options:(unint64_t)a5 usingBlock:(id)a6;
- (void)encodeWithCoder:(id)a3;
- (void)setLocale:(id)a3;
- (void)setTimeZone:(id)a3;
@end

@implementation _NSSwiftCalendar

- (void)setTimeZone:(id)a3
{
  v3 = self;
  if (a3)
  {
    type metadata accessor for _NSSwiftTimeZone();
    if (swift_dynamicCastClass())
    {
      self = swift_unknownObjectRetain();
    }

    else
    {
      type metadata accessor for _TimeZoneBridged();
      *(swift_allocObject() + 16) = a3;
      lazy protocol witness table accessor for type _TimeZoneBridged and conformance _TimeZoneBridged(&lazy protocol witness table cache variable for type _TimeZoneBridged and conformance _TimeZoneBridged, type metadata accessor for _TimeZoneBridged);
      self = a3;
    }
  }

  v5 = *(&v3->super.super.super.isa + OBJC_IVAR____NSSwiftCalendar__lock);
  MEMORY[0x1EEE9AC00](self);
  v6 = v3;
  os_unfair_lock_lock(v5 + 8);
  partial apply for closure #1 in _NSSwiftCalendar.timeZone.setter(&v5[4]);
  os_unfair_lock_unlock(v5 + 8);
  swift_unknownObjectRelease();
}

- (id)_components:(unint64_t)a3 fromDate:(id)a4
{
  v5 = a3;
  v6 = self;
  [a4 timeIntervalSinceReferenceDate];
  v10[0] = v7;
  _NSSwiftCalendar._components(_:from:)(v5, v10, __src);

  memcpy(v10, __src, 0x11BuLL);
  v8.super.isa = DateComponents._bridgeToObjectiveC()().super.isa;
  outlined destroy of DateComponents(__src);

  return v8.super.isa;
}

- (id)_dateFromComponents:(id)a3
{
  static DateComponents._unconditionallyBridgeFromObjectiveC(_:)(a3, __src);
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____NSSwiftCalendar__lock);
  v5 = self;
  os_unfair_lock_lock((v4 + 32));
  v6 = *(v4 + 24);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v4 + 32));
  ObjectType = swift_getObjectType();
  memcpy(v10, __src, 0x11BuLL);
  (*(v6 + 176))(&v11, v10, ObjectType, v6);

  swift_unknownObjectRelease();
  outlined destroy of DateComponents(__src);
  if (v12)
  {
    v8 = 0;
  }

  else
  {
    v8 = [objc_allocWithZone(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate_];
  }

  return v8;
}

- (NSString)calendarIdentifier
{
  v2 = self;
  v3 = specialized _NSSwiftCalendar.calendarIdentifier.getter();

  return v3;
}

- (NSLocale)locale
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____NSSwiftCalendar__lock);
  v3 = self;
  os_unfair_lock_lock(v2 + 8);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock(v2 + 8);
  Calendar.locale.getter(v8);

  swift_unknownObjectRelease();
  if (v8[0])
  {
    v4 = v8[1];
    ObjectType = swift_getObjectType();
    v6 = (*(v4 + 488))(ObjectType, v4);
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)components:(unint64_t)a3 fromDate:(id)a4 toDate:(id)a5 options:(unint64_t)a6
{
  v8 = a3;
  v9 = self;
  [a4 timeIntervalSinceReferenceDate];
  __dst[0] = v10;
  [a5 timeIntervalSinceReferenceDate];
  v15 = v11;
  _NSSwiftCalendar.components(_:from:to:options:)(v8, __dst, &v15, __src);

  memcpy(__dst, __src, 0x11BuLL);
  v12.super.isa = DateComponents._bridgeToObjectiveC()().super.isa;
  outlined destroy of DateComponents(__src);

  return v12.super.isa;
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  _NSSwiftCalendar.copy(with:)(v6);

  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v4 = _bridgeAnythingToObjectiveC<A>(_:)();
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v4;
}

- (int64_t)firstWeekday
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____NSSwiftCalendar__lock);
  v3 = self;
  os_unfair_lock_lock((v2 + 32));
  v4 = *(v2 + 24);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v2 + 32));
  ObjectType = swift_getObjectType();
  v6 = (*(v4 + 56))(ObjectType, v4);

  swift_unknownObjectRelease();
  return v6;
}

- (int64_t)minimumDaysInFirstWeek
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____NSSwiftCalendar__lock);
  v3 = self;
  os_unfair_lock_lock((v2 + 32));
  v4 = *(v2 + 24);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v2 + 32));
  ObjectType = swift_getObjectType();
  v6 = (*(v4 + 72))(ObjectType, v4);

  swift_unknownObjectRelease();
  return v6;
}

- (id)dateByAddingComponents:(id)a3 toDate:(id)a4 options:(unint64_t)a5
{
  v5 = a5;
  static DateComponents._unconditionallyBridgeFromObjectiveC(_:)(a3, __src);
  v8 = self;
  [a4 timeIntervalSinceReferenceDate];
  v12 = v9;
  _NSSwiftCalendar.date(byAdding:to:options:)(__src, &v12, v5);

  memcpy(__dst, __src, 0x11BuLL);
  outlined destroy of DateComponents(__dst);
  if (v15)
  {
    v10 = 0;
  }

  else
  {
    v10 = [objc_allocWithZone(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate_];
  }

  return v10;
}

- (int64_t)component:(unint64_t)a3 fromDate:(id)a4
{
  v6 = self;
  [a4 timeIntervalSinceReferenceDate];
  v8 = _NSSwiftCalendar.component(_:from:)(a3, v7);

  return v8;
}

- (int64_t)ordinalityOfUnit:(unint64_t)a3 inUnit:(unint64_t)a4 forDate:(id)a5
{
  v8 = self;
  [a5 timeIntervalSinceReferenceDate];
  v10 = _NSSwiftCalendar.ordinality(of:in:for:)(a3, a4, v9);

  return v10;
}

- (Class)classForCoder
{
  v2 = self;
  _NSSwiftCalendar.classForCoder.getter();

  return swift_getObjCClassFromMetadata();
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  _NSSwiftCalendar.encode(with:)(v4);
}

- (NSTimeZone)timeZone
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____NSSwiftCalendar__lock);
  v3 = self;
  os_unfair_lock_lock((v2 + 32));
  v4 = *(v2 + 24);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v2 + 32));
  ObjectType = swift_getObjectType();
  (*(v4 + 48))(v10, ObjectType, v4);

  swift_unknownObjectRelease();
  v6 = v10[1];
  v7 = swift_getObjectType();
  v8 = (*(v6 + 128))(v7, v6);
  swift_unknownObjectRelease();

  return v8;
}

- (id)startOfDayForDate:(id)a3
{
  v4 = self;
  [a3 timeIntervalSinceReferenceDate];
  v5 = *(&v4->super.super.super.isa + OBJC_IVAR____NSSwiftCalendar__lock);
  os_unfair_lock_lock((v5 + 32));
  *&fora[0]._time = *(v5 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v5 + 32));
  Calendar.startOfDay(for:)(fora[0]);

  swift_unknownObjectRelease();
  v6 = [objc_allocWithZone(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate_];

  return v6;
}

- (_NSRange)maximumRangeOfUnit:(unint64_t)a3
{
  v4 = self;
  v5 = _NSSwiftCalendar.maximumRange(of:)(a3);

  location = v5.location;
  length = v5.length;
  result.length = length;
  result.location = location;
  return result;
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

  v6 = _NSSwiftCalendar.isEqual(_:)(v8);

  outlined destroy of TermOfAddress?(v8, &_sypSgMd);
  return v6 & 1;
}

- (id)_componentsInTimeZone:(id)a3 fromDate:(id)a4
{
  type metadata accessor for _NSSwiftTimeZone();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = *(v7 + OBJC_IVAR____NSSwiftTimeZone_timeZone);
    v9 = *(v7 + OBJC_IVAR____NSSwiftTimeZone_timeZone + 8);
    swift_unknownObjectRetain();
  }

  else
  {
    type metadata accessor for _TimeZoneBridged();
    v8 = swift_allocObject();
    *(v8 + 16) = a3;
    v9 = lazy protocol witness table accessor for type _TimeZoneBridged and conformance _TimeZoneBridged(&lazy protocol witness table cache variable for type _TimeZoneBridged and conformance _TimeZoneBridged, type metadata accessor for _TimeZoneBridged);
    v10 = a3;
  }

  *&__dst[0] = v8;
  *(&__dst[0] + 1) = v9;
  v11 = self;
  [a4 timeIntervalSinceReferenceDate];
  v16 = v12;
  _NSSwiftCalendar._components(in:from:)(__dst, &v16, __src);
  swift_unknownObjectRelease();

  memcpy(__dst, __src, 0x11BuLL);
  v13.super.isa = DateComponents._bridgeToObjectiveC()().super.isa;
  outlined destroy of DateComponents(__src);

  return v13.super.isa;
}

- (void)setLocale:(id)a3
{
  v3 = self;
  if (a3)
  {
    type metadata accessor for _NSSwiftLocale();
    if (swift_dynamicCastClass())
    {
      self = swift_unknownObjectRetain();
    }

    else
    {
      type metadata accessor for _LocaleBridged();
      *(swift_allocObject() + 16) = a3;
      lazy protocol witness table accessor for type _TimeZoneBridged and conformance _TimeZoneBridged(&lazy protocol witness table cache variable for type _LocaleBridged and conformance _LocaleBridged, type metadata accessor for _LocaleBridged);
      self = a3;
    }
  }

  v5 = *(&v3->super.super.super.isa + OBJC_IVAR____NSSwiftCalendar__lock);
  MEMORY[0x1EEE9AC00](self);
  v6 = v3;
  os_unfair_lock_lock(v5 + 8);
  partial apply for closure #1 in _NSSwiftCalendar.locale.setter();
  os_unfair_lock_unlock(v5 + 8);
  swift_unknownObjectRelease();
}

- (_NSRange)rangeOfUnit:(unint64_t)a3 inUnit:(unint64_t)a4 forDate:(id)a5
{
  v8 = self;
  [a5 timeIntervalSinceReferenceDate];
  v10 = _NSSwiftCalendar.range(of:in:for:)(a3, a4, v9);

  location = v10.location;
  length = v10.length;
  result.length = length;
  result.location = location;
  return result;
}

- (BOOL)isDateInWeekend:(id)a3
{
  v4 = self;
  [a3 timeIntervalSinceReferenceDate];
  LOBYTE(a3) = _NSSwiftCalendar.isDateInWeekend(_:)(v5);

  return a3 & 1;
}

- (BOOL)isDate:(id)a3 inSameDayAsDate:(id)a4
{
  v6 = self;
  [a3 timeIntervalSinceReferenceDate];
  [a4 timeIntervalSinceReferenceDate];
  LOBYTE(a4) = _NSSwiftCalendar.isDate(_:inSameDayAs:)(v7, v8);

  return a4 & 1;
}

- (id)nextDateAfterDate:(id)a3 matchingComponents:(id)a4 options:(unint64_t)a5
{
  v5 = a5;
  v8 = self;
  [a3 timeIntervalSinceReferenceDate];
  v13 = v9;
  static DateComponents._unconditionallyBridgeFromObjectiveC(_:)(a4, __src);
  _NSSwiftCalendar.nextDate(after:matching:options:)(&v13, __src, v5, &v14);

  memcpy(__dst, __src, 0x11BuLL);
  outlined destroy of DateComponents(__dst);
  if (v15)
  {
    v10 = 0;
  }

  else
  {
    v10 = [objc_allocWithZone(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate_];
  }

  return v10;
}

- (int64_t)compareDate:(id)a3 toDate:(id)a4 toUnitGranularity:(unint64_t)a5
{
  v7 = self;
  [a3 timeIntervalSinceReferenceDate];
  v13 = v8;
  [a4 timeIntervalSinceReferenceDate];
  v11 = _NSSwiftCalendar.compare(_:to:toUnitGranularity:)(v9, v10, &v13);

  return v11;
}

- (id)dateBySettingHour:(int64_t)a3 minute:(int64_t)a4 second:(int64_t)a5 ofDate:(id)a6 options:(unint64_t)a7
{
  v11 = self;
  [a6 timeIntervalSinceReferenceDate];
  v15[0] = *&v12._time;
  _NSSwiftCalendar.date(bySettingHour:minute:second:of:options:)(a3, a4, a5, v12, v15);

  if (v16)
  {
    v13 = 0;
  }

  else
  {
    v13 = [objc_allocWithZone(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate_];
  }

  return v13;
}

- (NSString)debugDescription
{
  v2 = self;
  _NSSwiftCalendar.debugDescription.getter();

  v3 = String._bridgeToObjectiveCImpl()();

  return v3;
}

- (_NSRange)minimumRangeOfUnit:(unint64_t)a3
{
  v4 = self;
  v5 = _NSSwiftCalendar.minimumRange(of:)(a3);

  location = v5.location;
  length = v5.length;
  result.length = length;
  result.location = location;
  return result;
}

- (BOOL)rangeOfUnit:(unint64_t)a3 startDate:(id *)a4 interval:(double *)a5 forDate:(id)a6
{
  v10 = self;
  [a6 timeIntervalSinceReferenceDate];
  v13 = v11;
  LOBYTE(a6) = _NSSwiftCalendar.range(of:start:interval:for:)(a3, a4, a5, &v13);

  return a6 & 1;
}

- (BOOL)nextWeekendStartDate:(id *)a3 interval:(double *)a4 options:(unint64_t)a5 afterDate:(id)a6
{
  v10 = self;
  [a6 timeIntervalSinceReferenceDate];
  v13 = v11;
  LOBYTE(a6) = _NSSwiftCalendar.nextWeekendStart(_:interval:options:after:)(a3, a4, a5, &v13);

  return a6 & 1;
}

- (void)_enumerateDatesStartingAfterDate:(id)a3 matchingComponents:(id)a4 options:(unint64_t)a5 usingBlock:(id)a6
{
  v6 = a5;
  v10 = _Block_copy(a6);
  v11 = self;
  [a3 timeIntervalSinceReferenceDate];
  v14 = v12;
  static DateComponents._unconditionallyBridgeFromObjectiveC(_:)(a4, __src);
  _Block_copy(v10);
  specialized _NSSwiftCalendar._enumerateDatesStarting(after:matching:options:using:)(&v14, __src, v6, v11, v10);
  _Block_release(v10);
  _Block_release(v10);

  memcpy(__dst, __src, 0x11BuLL);
  outlined destroy of DateComponents(__dst);
}

- (BOOL)date:(id)a3 matchesComponents:(id)a4
{
  v6 = self;
  [a3 timeIntervalSinceReferenceDate];
  v10 = v7;
  static DateComponents._unconditionallyBridgeFromObjectiveC(_:)(a4, __src);
  LOBYTE(a4) = _NSSwiftCalendar.date(_:matchesComponents:)(&v10, __src);

  memcpy(__dst, __src, 0x11BuLL);
  outlined destroy of DateComponents(__dst);
  return a4 & 1;
}

- (id)components:(unint64_t)a3 fromDateComponents:(id)a4 toDateComponents:(id)a5 options:(unint64_t)a6
{
  v7 = a3;
  static DateComponents._unconditionallyBridgeFromObjectiveC(_:)(a4, __src);
  static DateComponents._unconditionallyBridgeFromObjectiveC(_:)(a5, v12);
  v9 = self;
  _NSSwiftCalendar.components(_:from:to:options:)(v7, __src, v12, v13);

  memcpy(__dst, v12, 0x11BuLL);
  outlined destroy of DateComponents(__dst);
  memcpy(v15, __src, 0x11BuLL);
  outlined destroy of DateComponents(v15);
  memcpy(__src, v13, 0x11BuLL);
  v10.super.isa = DateComponents._bridgeToObjectiveC()().super.isa;
  outlined destroy of DateComponents(__src);

  return v10.super.isa;
}

- (BOOL)rangeOfWeekendStartDate:(id *)a3 interval:(double *)a4 containingDate:(id)a5
{
  v8 = self;
  [a5 timeIntervalSinceReferenceDate];
  v11 = v9;
  LOBYTE(a5) = _NSSwiftCalendar.range(ofWeekendStart:interval:containing:)(a3, a4, &v11);

  return a5 & 1;
}

- (id)nextDateAfterDate:(id)a3 matchingHour:(int64_t)a4 minute:(int64_t)a5 second:(int64_t)a6 options:(unint64_t)a7
{
  v11 = self;
  [a3 timeIntervalSinceReferenceDate];
  v15[0] = *&v12._time;
  _NSSwiftCalendar.nextDate(after:matchingHour:minute:second:options:)(v12, v15, a4, a5, a6);

  if (v16)
  {
    v13 = 0;
  }

  else
  {
    v13 = [objc_allocWithZone(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate_];
  }

  return v13;
}

- (id)nextDateAfterDate:(id)a3 matchingUnit:(unint64_t)a4 value:(int64_t)a5 options:(unint64_t)a6
{
  v9 = self;
  [a3 timeIntervalSinceReferenceDate];
  v13[0] = *&v10._time;
  _NSSwiftCalendar.nextDate(after:matching:value:options:)(v10, v13, a4, a5);

  if (v14)
  {
    v11 = 0;
  }

  else
  {
    v11 = [objc_allocWithZone(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate_];
  }

  return v11;
}

- (BOOL)isDate:(id)a3 equalToDate:(id)a4 toUnitGranularity:(unint64_t)a5
{
  v7 = self;
  [a3 timeIntervalSinceReferenceDate];
  v13 = v8;
  [a4 timeIntervalSinceReferenceDate];
  v11 = _NSSwiftCalendar.isDate(_:equalTo:toUnitGranularity:)(v9, v10, &v13);

  return v11;
}

@end