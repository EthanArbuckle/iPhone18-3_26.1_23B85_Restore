@interface CTLazuliSuggestedActionCalendar
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTLazuliSuggestedActionCalendar:(id)calendar;
- (CTLazuliSuggestedActionCalendar)initWithCoder:(id)coder;
- (CTLazuliSuggestedActionCalendar)initWithReflection:(const void *)reflection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation CTLazuliSuggestedActionCalendar

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  event = [(CTLazuliSuggestedActionCalendar *)self event];
  [v3 appendFormat:@", event = %@", event];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliSuggestedActionCalendar:(id)calendar
{
  calendarCopy = calendar;
  event = [(CTLazuliSuggestedActionCalendar *)self event];
  event2 = [calendarCopy event];
  if (event == event2)
  {
    v9 = 1;
  }

  else
  {
    event3 = [(CTLazuliSuggestedActionCalendar *)self event];
    event4 = [calendarCopy event];
    v9 = [event3 isEqualToCTLazuliChatBotCreateCalendarEvent:event4];
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliSuggestedActionCalendar *)self isEqualToCTLazuliSuggestedActionCalendar:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CTLazuliSuggestedActionCalendar allocWithZone:?];
  v6 = [(CTLazuliChatBotCreateCalendarEvent *)self->_event copyWithZone:zone];
  [(CTLazuliSuggestedActionCalendar *)v5 setEvent:v6];

  return v5;
}

- (CTLazuliSuggestedActionCalendar)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CTLazuliSuggestedActionCalendar;
  v5 = [(CTLazuliSuggestedActionCalendar *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kEventKey"];
    event = v5->_event;
    v5->_event = v6;
  }

  return v5;
}

- (CTLazuliSuggestedActionCalendar)initWithReflection:(const void *)reflection
{
  v8.receiver = self;
  v8.super_class = CTLazuliSuggestedActionCalendar;
  v4 = [(CTLazuliSuggestedActionCalendar *)&v8 init];
  if (v4)
  {
    v5 = [[CTLazuliChatBotCreateCalendarEvent alloc] initWithReflection:reflection];
    event = v4->_event;
    v4->_event = v5;
  }

  return v4;
}

@end