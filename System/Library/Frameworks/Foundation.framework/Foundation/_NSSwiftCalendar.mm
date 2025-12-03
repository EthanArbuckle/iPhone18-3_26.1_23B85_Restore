@interface _NSSwiftCalendar
- (BOOL)date:(id)date matchesComponents:(id)components;
- (BOOL)isDate:(id)date equalToDate:(id)toDate toUnitGranularity:(unint64_t)granularity;
- (BOOL)isDate:(id)date inSameDayAsDate:(id)asDate;
- (BOOL)isDateInWeekend:(id)weekend;
- (BOOL)isEqual:(id)equal;
- (BOOL)nextWeekendStartDate:(id *)date interval:(double *)interval options:(unint64_t)options afterDate:(id)afterDate;
- (BOOL)rangeOfUnit:(unint64_t)unit startDate:(id *)date interval:(double *)interval forDate:(id)forDate;
- (BOOL)rangeOfWeekendStartDate:(id *)date interval:(double *)interval containingDate:(id)containingDate;
- (Class)classForCoder;
- (NSLocale)locale;
- (NSString)calendarIdentifier;
- (NSString)debugDescription;
- (NSTimeZone)timeZone;
- (_NSRange)maximumRangeOfUnit:(unint64_t)unit;
- (_NSRange)minimumRangeOfUnit:(unint64_t)unit;
- (_NSRange)rangeOfUnit:(unint64_t)unit inUnit:(unint64_t)inUnit forDate:(id)date;
- (id)_components:(unint64_t)_components fromDate:(id)date;
- (id)_componentsInTimeZone:(id)zone fromDate:(id)date;
- (id)_dateFromComponents:(id)components;
- (id)components:(unint64_t)components fromDate:(id)date toDate:(id)toDate options:(unint64_t)options;
- (id)components:(unint64_t)components fromDateComponents:(id)dateComponents toDateComponents:(id)toDateComponents options:(unint64_t)options;
- (id)copyWithZone:(void *)zone;
- (id)dateByAddingComponents:(id)components toDate:(id)date options:(unint64_t)options;
- (id)dateBySettingHour:(int64_t)hour minute:(int64_t)minute second:(int64_t)second ofDate:(id)date options:(unint64_t)options;
- (id)nextDateAfterDate:(id)date matchingComponents:(id)components options:(unint64_t)options;
- (id)nextDateAfterDate:(id)date matchingHour:(int64_t)hour minute:(int64_t)minute second:(int64_t)second options:(unint64_t)options;
- (id)nextDateAfterDate:(id)date matchingUnit:(unint64_t)unit value:(int64_t)value options:(unint64_t)options;
- (id)startOfDayForDate:(id)date;
- (int64_t)compareDate:(id)date toDate:(id)toDate toUnitGranularity:(unint64_t)granularity;
- (int64_t)component:(unint64_t)component fromDate:(id)date;
- (int64_t)firstWeekday;
- (int64_t)minimumDaysInFirstWeek;
- (int64_t)ordinalityOfUnit:(unint64_t)unit inUnit:(unint64_t)inUnit forDate:(id)date;
- (void)_enumerateDatesStartingAfterDate:(id)date matchingComponents:(id)components options:(unint64_t)options usingBlock:(id)block;
- (void)encodeWithCoder:(id)coder;
- (void)setLocale:(id)locale;
- (void)setTimeZone:(id)zone;
@end

@implementation _NSSwiftCalendar

- (void)setTimeZone:(id)zone
{
  selfCopy = self;
  if (zone)
  {
    type metadata accessor for _NSSwiftTimeZone();
    if (swift_dynamicCastClass())
    {
      self = swift_unknownObjectRetain();
    }

    else
    {
      type metadata accessor for _TimeZoneBridged();
      *(swift_allocObject() + 16) = zone;
      lazy protocol witness table accessor for type _TimeZoneBridged and conformance _TimeZoneBridged(&lazy protocol witness table cache variable for type _TimeZoneBridged and conformance _TimeZoneBridged, type metadata accessor for _TimeZoneBridged);
      self = zone;
    }
  }

  v5 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____NSSwiftCalendar__lock);
  MEMORY[0x1EEE9AC00](self);
  v6 = selfCopy;
  os_unfair_lock_lock(v5 + 8);
  partial apply for closure #1 in _NSSwiftCalendar.timeZone.setter(&v5[4]);
  os_unfair_lock_unlock(v5 + 8);
  swift_unknownObjectRelease();
}

- (id)_components:(unint64_t)_components fromDate:(id)date
{
  _componentsCopy = _components;
  selfCopy = self;
  [date timeIntervalSinceReferenceDate];
  v10[0] = v7;
  _NSSwiftCalendar._components(_:from:)(_componentsCopy, v10, __src);

  memcpy(v10, __src, 0x11BuLL);
  v8.super.isa = DateComponents._bridgeToObjectiveC()().super.isa;
  outlined destroy of DateComponents(__src);

  return v8.super.isa;
}

- (id)_dateFromComponents:(id)components
{
  static DateComponents._unconditionallyBridgeFromObjectiveC(_:)(components, __src);
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____NSSwiftCalendar__lock);
  selfCopy = self;
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
    initWithTimeIntervalSinceReferenceDate_ = 0;
  }

  else
  {
    initWithTimeIntervalSinceReferenceDate_ = [objc_allocWithZone(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate_];
  }

  return initWithTimeIntervalSinceReferenceDate_;
}

- (NSString)calendarIdentifier
{
  selfCopy = self;
  v3 = specialized _NSSwiftCalendar.calendarIdentifier.getter();

  return v3;
}

- (NSLocale)locale
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____NSSwiftCalendar__lock);
  selfCopy = self;
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

- (id)components:(unint64_t)components fromDate:(id)date toDate:(id)toDate options:(unint64_t)options
{
  componentsCopy = components;
  selfCopy = self;
  [date timeIntervalSinceReferenceDate];
  __dst[0] = v10;
  [toDate timeIntervalSinceReferenceDate];
  v15 = v11;
  _NSSwiftCalendar.components(_:from:to:options:)(componentsCopy, __dst, &v15, __src);

  memcpy(__dst, __src, 0x11BuLL);
  v12.super.isa = DateComponents._bridgeToObjectiveC()().super.isa;
  outlined destroy of DateComponents(__src);

  return v12.super.isa;
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  _NSSwiftCalendar.copy(with:)(v6);

  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v4 = _bridgeAnythingToObjectiveC<A>(_:)();
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v4;
}

- (int64_t)firstWeekday
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____NSSwiftCalendar__lock);
  selfCopy = self;
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
  selfCopy = self;
  os_unfair_lock_lock((v2 + 32));
  v4 = *(v2 + 24);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v2 + 32));
  ObjectType = swift_getObjectType();
  v6 = (*(v4 + 72))(ObjectType, v4);

  swift_unknownObjectRelease();
  return v6;
}

- (id)dateByAddingComponents:(id)components toDate:(id)date options:(unint64_t)options
{
  optionsCopy = options;
  static DateComponents._unconditionallyBridgeFromObjectiveC(_:)(components, __src);
  selfCopy = self;
  [date timeIntervalSinceReferenceDate];
  v12 = v9;
  _NSSwiftCalendar.date(byAdding:to:options:)(__src, &v12, optionsCopy);

  memcpy(__dst, __src, 0x11BuLL);
  outlined destroy of DateComponents(__dst);
  if (v15)
  {
    initWithTimeIntervalSinceReferenceDate_ = 0;
  }

  else
  {
    initWithTimeIntervalSinceReferenceDate_ = [objc_allocWithZone(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate_];
  }

  return initWithTimeIntervalSinceReferenceDate_;
}

- (int64_t)component:(unint64_t)component fromDate:(id)date
{
  selfCopy = self;
  [date timeIntervalSinceReferenceDate];
  v8 = _NSSwiftCalendar.component(_:from:)(component, v7);

  return v8;
}

- (int64_t)ordinalityOfUnit:(unint64_t)unit inUnit:(unint64_t)inUnit forDate:(id)date
{
  selfCopy = self;
  [date timeIntervalSinceReferenceDate];
  v10 = _NSSwiftCalendar.ordinality(of:in:for:)(unit, inUnit, v9);

  return v10;
}

- (Class)classForCoder
{
  selfCopy = self;
  _NSSwiftCalendar.classForCoder.getter();

  return swift_getObjCClassFromMetadata();
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  _NSSwiftCalendar.encode(with:)(coderCopy);
}

- (NSTimeZone)timeZone
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____NSSwiftCalendar__lock);
  selfCopy = self;
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

- (id)startOfDayForDate:(id)date
{
  selfCopy = self;
  [date timeIntervalSinceReferenceDate];
  v5 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____NSSwiftCalendar__lock);
  os_unfair_lock_lock((v5 + 32));
  *&fora[0]._time = *(v5 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v5 + 32));
  Calendar.startOfDay(for:)(fora[0]);

  swift_unknownObjectRelease();
  initWithTimeIntervalSinceReferenceDate_ = [objc_allocWithZone(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate_];

  return initWithTimeIntervalSinceReferenceDate_;
}

- (_NSRange)maximumRangeOfUnit:(unint64_t)unit
{
  selfCopy = self;
  v5 = _NSSwiftCalendar.maximumRange(of:)(unit);

  location = v5.location;
  length = v5.length;
  result.length = length;
  result.location = location;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = _NSSwiftCalendar.isEqual(_:)(v8);

  outlined destroy of TermOfAddress?(v8, &_sypSgMd);
  return v6 & 1;
}

- (id)_componentsInTimeZone:(id)zone fromDate:(id)date
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
    *(v8 + 16) = zone;
    v9 = lazy protocol witness table accessor for type _TimeZoneBridged and conformance _TimeZoneBridged(&lazy protocol witness table cache variable for type _TimeZoneBridged and conformance _TimeZoneBridged, type metadata accessor for _TimeZoneBridged);
    zoneCopy = zone;
  }

  *&__dst[0] = v8;
  *(&__dst[0] + 1) = v9;
  selfCopy = self;
  [date timeIntervalSinceReferenceDate];
  v16 = v12;
  _NSSwiftCalendar._components(in:from:)(__dst, &v16, __src);
  swift_unknownObjectRelease();

  memcpy(__dst, __src, 0x11BuLL);
  v13.super.isa = DateComponents._bridgeToObjectiveC()().super.isa;
  outlined destroy of DateComponents(__src);

  return v13.super.isa;
}

- (void)setLocale:(id)locale
{
  selfCopy = self;
  if (locale)
  {
    type metadata accessor for _NSSwiftLocale();
    if (swift_dynamicCastClass())
    {
      self = swift_unknownObjectRetain();
    }

    else
    {
      type metadata accessor for _LocaleBridged();
      *(swift_allocObject() + 16) = locale;
      lazy protocol witness table accessor for type _TimeZoneBridged and conformance _TimeZoneBridged(&lazy protocol witness table cache variable for type _LocaleBridged and conformance _LocaleBridged, type metadata accessor for _LocaleBridged);
      self = locale;
    }
  }

  v5 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____NSSwiftCalendar__lock);
  MEMORY[0x1EEE9AC00](self);
  v6 = selfCopy;
  os_unfair_lock_lock(v5 + 8);
  partial apply for closure #1 in _NSSwiftCalendar.locale.setter();
  os_unfair_lock_unlock(v5 + 8);
  swift_unknownObjectRelease();
}

- (_NSRange)rangeOfUnit:(unint64_t)unit inUnit:(unint64_t)inUnit forDate:(id)date
{
  selfCopy = self;
  [date timeIntervalSinceReferenceDate];
  v10 = _NSSwiftCalendar.range(of:in:for:)(unit, inUnit, v9);

  location = v10.location;
  length = v10.length;
  result.length = length;
  result.location = location;
  return result;
}

- (BOOL)isDateInWeekend:(id)weekend
{
  selfCopy = self;
  [weekend timeIntervalSinceReferenceDate];
  LOBYTE(weekend) = _NSSwiftCalendar.isDateInWeekend(_:)(v5);

  return weekend & 1;
}

- (BOOL)isDate:(id)date inSameDayAsDate:(id)asDate
{
  selfCopy = self;
  [date timeIntervalSinceReferenceDate];
  [asDate timeIntervalSinceReferenceDate];
  LOBYTE(asDate) = _NSSwiftCalendar.isDate(_:inSameDayAs:)(v7, v8);

  return asDate & 1;
}

- (id)nextDateAfterDate:(id)date matchingComponents:(id)components options:(unint64_t)options
{
  optionsCopy = options;
  selfCopy = self;
  [date timeIntervalSinceReferenceDate];
  v13 = v9;
  static DateComponents._unconditionallyBridgeFromObjectiveC(_:)(components, __src);
  _NSSwiftCalendar.nextDate(after:matching:options:)(&v13, __src, optionsCopy, &v14);

  memcpy(__dst, __src, 0x11BuLL);
  outlined destroy of DateComponents(__dst);
  if (v15)
  {
    initWithTimeIntervalSinceReferenceDate_ = 0;
  }

  else
  {
    initWithTimeIntervalSinceReferenceDate_ = [objc_allocWithZone(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate_];
  }

  return initWithTimeIntervalSinceReferenceDate_;
}

- (int64_t)compareDate:(id)date toDate:(id)toDate toUnitGranularity:(unint64_t)granularity
{
  selfCopy = self;
  [date timeIntervalSinceReferenceDate];
  v13 = v8;
  [toDate timeIntervalSinceReferenceDate];
  v11 = _NSSwiftCalendar.compare(_:to:toUnitGranularity:)(v9, v10, &v13);

  return v11;
}

- (id)dateBySettingHour:(int64_t)hour minute:(int64_t)minute second:(int64_t)second ofDate:(id)date options:(unint64_t)options
{
  selfCopy = self;
  [date timeIntervalSinceReferenceDate];
  v15[0] = *&v12._time;
  _NSSwiftCalendar.date(bySettingHour:minute:second:of:options:)(hour, minute, second, v12, v15);

  if (v16)
  {
    initWithTimeIntervalSinceReferenceDate_ = 0;
  }

  else
  {
    initWithTimeIntervalSinceReferenceDate_ = [objc_allocWithZone(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate_];
  }

  return initWithTimeIntervalSinceReferenceDate_;
}

- (NSString)debugDescription
{
  selfCopy = self;
  _NSSwiftCalendar.debugDescription.getter();

  v3 = String._bridgeToObjectiveCImpl()();

  return v3;
}

- (_NSRange)minimumRangeOfUnit:(unint64_t)unit
{
  selfCopy = self;
  v5 = _NSSwiftCalendar.minimumRange(of:)(unit);

  location = v5.location;
  length = v5.length;
  result.length = length;
  result.location = location;
  return result;
}

- (BOOL)rangeOfUnit:(unint64_t)unit startDate:(id *)date interval:(double *)interval forDate:(id)forDate
{
  selfCopy = self;
  [forDate timeIntervalSinceReferenceDate];
  v13 = v11;
  LOBYTE(forDate) = _NSSwiftCalendar.range(of:start:interval:for:)(unit, date, interval, &v13);

  return forDate & 1;
}

- (BOOL)nextWeekendStartDate:(id *)date interval:(double *)interval options:(unint64_t)options afterDate:(id)afterDate
{
  selfCopy = self;
  [afterDate timeIntervalSinceReferenceDate];
  v13 = v11;
  LOBYTE(afterDate) = _NSSwiftCalendar.nextWeekendStart(_:interval:options:after:)(date, interval, options, &v13);

  return afterDate & 1;
}

- (void)_enumerateDatesStartingAfterDate:(id)date matchingComponents:(id)components options:(unint64_t)options usingBlock:(id)block
{
  optionsCopy = options;
  v10 = _Block_copy(block);
  selfCopy = self;
  [date timeIntervalSinceReferenceDate];
  v14 = v12;
  static DateComponents._unconditionallyBridgeFromObjectiveC(_:)(components, __src);
  _Block_copy(v10);
  specialized _NSSwiftCalendar._enumerateDatesStarting(after:matching:options:using:)(&v14, __src, optionsCopy, selfCopy, v10);
  _Block_release(v10);
  _Block_release(v10);

  memcpy(__dst, __src, 0x11BuLL);
  outlined destroy of DateComponents(__dst);
}

- (BOOL)date:(id)date matchesComponents:(id)components
{
  selfCopy = self;
  [date timeIntervalSinceReferenceDate];
  v10 = v7;
  static DateComponents._unconditionallyBridgeFromObjectiveC(_:)(components, __src);
  LOBYTE(components) = _NSSwiftCalendar.date(_:matchesComponents:)(&v10, __src);

  memcpy(__dst, __src, 0x11BuLL);
  outlined destroy of DateComponents(__dst);
  return components & 1;
}

- (id)components:(unint64_t)components fromDateComponents:(id)dateComponents toDateComponents:(id)toDateComponents options:(unint64_t)options
{
  componentsCopy = components;
  static DateComponents._unconditionallyBridgeFromObjectiveC(_:)(dateComponents, __src);
  static DateComponents._unconditionallyBridgeFromObjectiveC(_:)(toDateComponents, v12);
  selfCopy = self;
  _NSSwiftCalendar.components(_:from:to:options:)(componentsCopy, __src, v12, v13);

  memcpy(__dst, v12, 0x11BuLL);
  outlined destroy of DateComponents(__dst);
  memcpy(v15, __src, 0x11BuLL);
  outlined destroy of DateComponents(v15);
  memcpy(__src, v13, 0x11BuLL);
  v10.super.isa = DateComponents._bridgeToObjectiveC()().super.isa;
  outlined destroy of DateComponents(__src);

  return v10.super.isa;
}

- (BOOL)rangeOfWeekendStartDate:(id *)date interval:(double *)interval containingDate:(id)containingDate
{
  selfCopy = self;
  [containingDate timeIntervalSinceReferenceDate];
  v11 = v9;
  LOBYTE(containingDate) = _NSSwiftCalendar.range(ofWeekendStart:interval:containing:)(date, interval, &v11);

  return containingDate & 1;
}

- (id)nextDateAfterDate:(id)date matchingHour:(int64_t)hour minute:(int64_t)minute second:(int64_t)second options:(unint64_t)options
{
  selfCopy = self;
  [date timeIntervalSinceReferenceDate];
  v15[0] = *&v12._time;
  _NSSwiftCalendar.nextDate(after:matchingHour:minute:second:options:)(v12, v15, hour, minute, second);

  if (v16)
  {
    initWithTimeIntervalSinceReferenceDate_ = 0;
  }

  else
  {
    initWithTimeIntervalSinceReferenceDate_ = [objc_allocWithZone(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate_];
  }

  return initWithTimeIntervalSinceReferenceDate_;
}

- (id)nextDateAfterDate:(id)date matchingUnit:(unint64_t)unit value:(int64_t)value options:(unint64_t)options
{
  selfCopy = self;
  [date timeIntervalSinceReferenceDate];
  v13[0] = *&v10._time;
  _NSSwiftCalendar.nextDate(after:matching:value:options:)(v10, v13, unit, value);

  if (v14)
  {
    initWithTimeIntervalSinceReferenceDate_ = 0;
  }

  else
  {
    initWithTimeIntervalSinceReferenceDate_ = [objc_allocWithZone(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate_];
  }

  return initWithTimeIntervalSinceReferenceDate_;
}

- (BOOL)isDate:(id)date equalToDate:(id)toDate toUnitGranularity:(unint64_t)granularity
{
  selfCopy = self;
  [date timeIntervalSinceReferenceDate];
  v13 = v8;
  [toDate timeIntervalSinceReferenceDate];
  v11 = _NSSwiftCalendar.isDate(_:equalTo:toUnitGranularity:)(v9, v10, &v13);

  return v11;
}

@end