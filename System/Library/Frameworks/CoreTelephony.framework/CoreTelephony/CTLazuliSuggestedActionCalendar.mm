@interface CTLazuliSuggestedActionCalendar
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCTLazuliSuggestedActionCalendar:(id)a3;
- (CTLazuliSuggestedActionCalendar)initWithCoder:(id)a3;
- (CTLazuliSuggestedActionCalendar)initWithReflection:(const void *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation CTLazuliSuggestedActionCalendar

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  v4 = [(CTLazuliSuggestedActionCalendar *)self event];
  [v3 appendFormat:@", event = %@", v4];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliSuggestedActionCalendar:(id)a3
{
  v4 = a3;
  v5 = [(CTLazuliSuggestedActionCalendar *)self event];
  v6 = [v4 event];
  if (v5 == v6)
  {
    v9 = 1;
  }

  else
  {
    v7 = [(CTLazuliSuggestedActionCalendar *)self event];
    v8 = [v4 event];
    v9 = [v7 isEqualToCTLazuliChatBotCreateCalendarEvent:v8];
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliSuggestedActionCalendar *)self isEqualToCTLazuliSuggestedActionCalendar:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [CTLazuliSuggestedActionCalendar allocWithZone:?];
  v6 = [(CTLazuliChatBotCreateCalendarEvent *)self->_event copyWithZone:a3];
  [(CTLazuliSuggestedActionCalendar *)v5 setEvent:v6];

  return v5;
}

- (CTLazuliSuggestedActionCalendar)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CTLazuliSuggestedActionCalendar;
  v5 = [(CTLazuliSuggestedActionCalendar *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kEventKey"];
    event = v5->_event;
    v5->_event = v6;
  }

  return v5;
}

- (CTLazuliSuggestedActionCalendar)initWithReflection:(const void *)a3
{
  v8.receiver = self;
  v8.super_class = CTLazuliSuggestedActionCalendar;
  v4 = [(CTLazuliSuggestedActionCalendar *)&v8 init];
  if (v4)
  {
    v5 = [[CTLazuliChatBotCreateCalendarEvent alloc] initWithReflection:a3];
    event = v4->_event;
    v4->_event = v5;
  }

  return v4;
}

@end