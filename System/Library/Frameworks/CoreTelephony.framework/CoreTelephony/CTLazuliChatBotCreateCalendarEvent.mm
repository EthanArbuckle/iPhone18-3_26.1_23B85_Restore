@interface CTLazuliChatBotCreateCalendarEvent
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTLazuliChatBotCreateCalendarEvent:(id)event;
- (CTLazuliChatBotCreateCalendarEvent)initWithCoder:(id)coder;
- (CTLazuliChatBotCreateCalendarEvent)initWithReflection:(const void *)reflection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTLazuliChatBotCreateCalendarEvent

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  startTime = [(CTLazuliChatBotCreateCalendarEvent *)self startTime];
  [v3 appendFormat:@", startTime = %@", startTime];

  endTime = [(CTLazuliChatBotCreateCalendarEvent *)self endTime];
  [v3 appendFormat:@", endTime = %@", endTime];

  title = [(CTLazuliChatBotCreateCalendarEvent *)self title];
  [v3 appendFormat:@", title = %@", title];

  calDescription = [(CTLazuliChatBotCreateCalendarEvent *)self calDescription];
  [v3 appendFormat:@", calDescription = %@", calDescription];

  fallbackUrl = [(CTLazuliChatBotCreateCalendarEvent *)self fallbackUrl];
  [v3 appendFormat:@", fallbackUrl = %@", fallbackUrl];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliChatBotCreateCalendarEvent:(id)event
{
  eventCopy = event;
  startTime = [(CTLazuliChatBotCreateCalendarEvent *)self startTime];
  startTime2 = [eventCopy startTime];
  if (startTime != startTime2)
  {
    startTime3 = [(CTLazuliChatBotCreateCalendarEvent *)self startTime];
    startTime4 = [eventCopy startTime];
    if (![startTime3 isEqualToString:?])
    {
      v7 = 0;
LABEL_23:

      goto LABEL_24;
    }
  }

  endTime = [(CTLazuliChatBotCreateCalendarEvent *)self endTime];
  endTime2 = [eventCopy endTime];
  if (endTime == endTime2 || (-[CTLazuliChatBotCreateCalendarEvent endTime](self, "endTime"), v28 = objc_claimAutoreleasedReturnValue(), [eventCopy endTime], v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v28, "isEqualToString:")))
  {
    title = [(CTLazuliChatBotCreateCalendarEvent *)self title];
    title2 = [eventCopy title];
    if (title != title2)
    {
      title3 = [(CTLazuliChatBotCreateCalendarEvent *)self title];
      title4 = [eventCopy title];
      if (![title3 isEqualToString:?])
      {
        v7 = 0;
        v10 = title;
        v11 = title2;
LABEL_19:

LABEL_20:
        v9 = endTime;
        if (endTime == endTime2)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }
    }

    calDescription = [(CTLazuliChatBotCreateCalendarEvent *)self calDescription];
    calDescription2 = [eventCopy calDescription];
    if (calDescription == calDescription2 || (-[CTLazuliChatBotCreateCalendarEvent calDescription](self, "calDescription"), v22 = objc_claimAutoreleasedReturnValue(), [eventCopy calDescription], v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "isEqualToString:")))
    {
      fallbackUrl = [(CTLazuliChatBotCreateCalendarEvent *)self fallbackUrl];
      fallbackUrl2 = [eventCopy fallbackUrl];
      v16 = fallbackUrl2;
      if (fallbackUrl == fallbackUrl2)
      {

        v7 = 1;
      }

      else
      {
        fallbackUrl3 = [(CTLazuliChatBotCreateCalendarEvent *)self fallbackUrl];
        fallbackUrl4 = [eventCopy fallbackUrl];
        v7 = [fallbackUrl3 isEqualToString:fallbackUrl4];
      }

      v13 = calDescription;
      if (calDescription == calDescription2)
      {
LABEL_18:

        v10 = title;
        v11 = title2;
        if (title == title2)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }
    }

    else
    {
      v7 = 0;
      v13 = calDescription;
    }

    goto LABEL_18;
  }

  v7 = 0;
  v9 = endTime;
LABEL_21:

LABEL_22:
  if (startTime != startTime2)
  {
    goto LABEL_23;
  }

LABEL_24:

  return v7;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliChatBotCreateCalendarEvent *)self isEqualToCTLazuliChatBotCreateCalendarEvent:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CTLazuliChatBotCreateCalendarEvent allocWithZone:?];
  v6 = [(NSString *)self->_startTime copyWithZone:zone];
  [(CTLazuliChatBotCreateCalendarEvent *)v5 setStartTime:v6];

  v7 = [(NSString *)self->_endTime copyWithZone:zone];
  [(CTLazuliChatBotCreateCalendarEvent *)v5 setEndTime:v7];

  v8 = [(NSString *)self->_title copyWithZone:zone];
  [(CTLazuliChatBotCreateCalendarEvent *)v5 setTitle:v8];

  v9 = [(NSString *)self->_calDescription copyWithZone:zone];
  [(CTLazuliChatBotCreateCalendarEvent *)v5 setCalDescription:v9];

  v10 = [(NSString *)self->_fallbackUrl copyWithZone:zone];
  [(CTLazuliChatBotCreateCalendarEvent *)v5 setFallbackUrl:v10];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_startTime forKey:@"kStartTimeKey"];
  [coderCopy encodeObject:self->_endTime forKey:@"kEndTimeKey"];
  [coderCopy encodeObject:self->_title forKey:@"kTitleKey"];
  [coderCopy encodeObject:self->_calDescription forKey:@"kCalDescriptionKey"];
  [coderCopy encodeObject:self->_fallbackUrl forKey:@"kFallbackUrlKey"];
}

- (CTLazuliChatBotCreateCalendarEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = CTLazuliChatBotCreateCalendarEvent;
  v5 = [(CTLazuliChatBotCreateCalendarEvent *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kStartTimeKey"];
    startTime = v5->_startTime;
    v5->_startTime = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kEndTimeKey"];
    endTime = v5->_endTime;
    v5->_endTime = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kTitleKey"];
    title = v5->_title;
    v5->_title = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCalDescriptionKey"];
    calDescription = v5->_calDescription;
    v5->_calDescription = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kFallbackUrlKey"];
    fallbackUrl = v5->_fallbackUrl;
    v5->_fallbackUrl = v14;
  }

  return v5;
}

- (CTLazuliChatBotCreateCalendarEvent)initWithReflection:(const void *)reflection
{
  v24.receiver = self;
  v24.super_class = CTLazuliChatBotCreateCalendarEvent;
  v4 = [(CTLazuliChatBotCreateCalendarEvent *)&v24 init];
  if (v4)
  {
    if (*(reflection + 23) >= 0)
    {
      reflectionCopy = reflection;
    }

    else
    {
      reflectionCopy = *reflection;
    }

    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:reflectionCopy];
    startTime = v4->_startTime;
    v4->_startTime = v6;

    if (*(reflection + 47) >= 0)
    {
      v8 = reflection + 24;
    }

    else
    {
      v8 = *(reflection + 3);
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];
    endTime = v4->_endTime;
    v4->_endTime = v9;

    if (*(reflection + 71) >= 0)
    {
      v11 = reflection + 48;
    }

    else
    {
      v11 = *(reflection + 6);
    }

    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v11];
    title = v4->_title;
    v4->_title = v12;

    if (*(reflection + 96) == 1)
    {
      if (*(reflection + 95) >= 0)
      {
        v14 = reflection + 72;
      }

      else
      {
        v14 = *(reflection + 9);
      }

      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v14];
    }

    else
    {
      v15 = 0;
    }

    calDescription = v4->_calDescription;
    v4->_calDescription = v15;

    if (*(reflection + 128) == 1)
    {
      v19 = *(reflection + 13);
      v18 = reflection + 104;
      v17 = v19;
      if (v18[23] >= 0)
      {
        v20 = v18;
      }

      else
      {
        v20 = v17;
      }

      v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v20];
    }

    else
    {
      v21 = 0;
    }

    fallbackUrl = v4->_fallbackUrl;
    v4->_fallbackUrl = v21;
  }

  return v4;
}

@end