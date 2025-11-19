@interface CTLazuliChatBotCreateCalendarEvent
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCTLazuliChatBotCreateCalendarEvent:(id)a3;
- (CTLazuliChatBotCreateCalendarEvent)initWithCoder:(id)a3;
- (CTLazuliChatBotCreateCalendarEvent)initWithReflection:(const void *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTLazuliChatBotCreateCalendarEvent

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  v4 = [(CTLazuliChatBotCreateCalendarEvent *)self startTime];
  [v3 appendFormat:@", startTime = %@", v4];

  v5 = [(CTLazuliChatBotCreateCalendarEvent *)self endTime];
  [v3 appendFormat:@", endTime = %@", v5];

  v6 = [(CTLazuliChatBotCreateCalendarEvent *)self title];
  [v3 appendFormat:@", title = %@", v6];

  v7 = [(CTLazuliChatBotCreateCalendarEvent *)self calDescription];
  [v3 appendFormat:@", calDescription = %@", v7];

  v8 = [(CTLazuliChatBotCreateCalendarEvent *)self fallbackUrl];
  [v3 appendFormat:@", fallbackUrl = %@", v8];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliChatBotCreateCalendarEvent:(id)a3
{
  v4 = a3;
  v5 = [(CTLazuliChatBotCreateCalendarEvent *)self startTime];
  v6 = [v4 startTime];
  if (v5 != v6)
  {
    v30 = [(CTLazuliChatBotCreateCalendarEvent *)self startTime];
    v27 = [v4 startTime];
    if (![v30 isEqualToString:?])
    {
      v7 = 0;
LABEL_23:

      goto LABEL_24;
    }
  }

  v31 = [(CTLazuliChatBotCreateCalendarEvent *)self endTime];
  v8 = [v4 endTime];
  if (v31 == v8 || (-[CTLazuliChatBotCreateCalendarEvent endTime](self, "endTime"), v28 = objc_claimAutoreleasedReturnValue(), [v4 endTime], v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v28, "isEqualToString:")))
  {
    v29 = [(CTLazuliChatBotCreateCalendarEvent *)self title];
    v25 = [v4 title];
    if (v29 != v25)
    {
      v24 = [(CTLazuliChatBotCreateCalendarEvent *)self title];
      v21 = [v4 title];
      if (![v24 isEqualToString:?])
      {
        v7 = 0;
        v10 = v29;
        v11 = v25;
LABEL_19:

LABEL_20:
        v9 = v31;
        if (v31 == v8)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }
    }

    v26 = [(CTLazuliChatBotCreateCalendarEvent *)self calDescription];
    v12 = [v4 calDescription];
    if (v26 == v12 || (-[CTLazuliChatBotCreateCalendarEvent calDescription](self, "calDescription"), v22 = objc_claimAutoreleasedReturnValue(), [v4 calDescription], v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "isEqualToString:")))
    {
      v14 = [(CTLazuliChatBotCreateCalendarEvent *)self fallbackUrl];
      v15 = [v4 fallbackUrl];
      v16 = v15;
      if (v14 == v15)
      {

        v7 = 1;
      }

      else
      {
        v17 = [(CTLazuliChatBotCreateCalendarEvent *)self fallbackUrl];
        v18 = [v4 fallbackUrl];
        v7 = [v17 isEqualToString:v18];
      }

      v13 = v26;
      if (v26 == v12)
      {
LABEL_18:

        v10 = v29;
        v11 = v25;
        if (v29 == v25)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }
    }

    else
    {
      v7 = 0;
      v13 = v26;
    }

    goto LABEL_18;
  }

  v7 = 0;
  v9 = v31;
LABEL_21:

LABEL_22:
  if (v5 != v6)
  {
    goto LABEL_23;
  }

LABEL_24:

  return v7;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliChatBotCreateCalendarEvent *)self isEqualToCTLazuliChatBotCreateCalendarEvent:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [CTLazuliChatBotCreateCalendarEvent allocWithZone:?];
  v6 = [(NSString *)self->_startTime copyWithZone:a3];
  [(CTLazuliChatBotCreateCalendarEvent *)v5 setStartTime:v6];

  v7 = [(NSString *)self->_endTime copyWithZone:a3];
  [(CTLazuliChatBotCreateCalendarEvent *)v5 setEndTime:v7];

  v8 = [(NSString *)self->_title copyWithZone:a3];
  [(CTLazuliChatBotCreateCalendarEvent *)v5 setTitle:v8];

  v9 = [(NSString *)self->_calDescription copyWithZone:a3];
  [(CTLazuliChatBotCreateCalendarEvent *)v5 setCalDescription:v9];

  v10 = [(NSString *)self->_fallbackUrl copyWithZone:a3];
  [(CTLazuliChatBotCreateCalendarEvent *)v5 setFallbackUrl:v10];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_startTime forKey:@"kStartTimeKey"];
  [v4 encodeObject:self->_endTime forKey:@"kEndTimeKey"];
  [v4 encodeObject:self->_title forKey:@"kTitleKey"];
  [v4 encodeObject:self->_calDescription forKey:@"kCalDescriptionKey"];
  [v4 encodeObject:self->_fallbackUrl forKey:@"kFallbackUrlKey"];
}

- (CTLazuliChatBotCreateCalendarEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = CTLazuliChatBotCreateCalendarEvent;
  v5 = [(CTLazuliChatBotCreateCalendarEvent *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kStartTimeKey"];
    startTime = v5->_startTime;
    v5->_startTime = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kEndTimeKey"];
    endTime = v5->_endTime;
    v5->_endTime = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kTitleKey"];
    title = v5->_title;
    v5->_title = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCalDescriptionKey"];
    calDescription = v5->_calDescription;
    v5->_calDescription = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kFallbackUrlKey"];
    fallbackUrl = v5->_fallbackUrl;
    v5->_fallbackUrl = v14;
  }

  return v5;
}

- (CTLazuliChatBotCreateCalendarEvent)initWithReflection:(const void *)a3
{
  v24.receiver = self;
  v24.super_class = CTLazuliChatBotCreateCalendarEvent;
  v4 = [(CTLazuliChatBotCreateCalendarEvent *)&v24 init];
  if (v4)
  {
    if (*(a3 + 23) >= 0)
    {
      v5 = a3;
    }

    else
    {
      v5 = *a3;
    }

    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v5];
    startTime = v4->_startTime;
    v4->_startTime = v6;

    if (*(a3 + 47) >= 0)
    {
      v8 = a3 + 24;
    }

    else
    {
      v8 = *(a3 + 3);
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];
    endTime = v4->_endTime;
    v4->_endTime = v9;

    if (*(a3 + 71) >= 0)
    {
      v11 = a3 + 48;
    }

    else
    {
      v11 = *(a3 + 6);
    }

    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v11];
    title = v4->_title;
    v4->_title = v12;

    if (*(a3 + 96) == 1)
    {
      if (*(a3 + 95) >= 0)
      {
        v14 = a3 + 72;
      }

      else
      {
        v14 = *(a3 + 9);
      }

      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v14];
    }

    else
    {
      v15 = 0;
    }

    calDescription = v4->_calDescription;
    v4->_calDescription = v15;

    if (*(a3 + 128) == 1)
    {
      v19 = *(a3 + 13);
      v18 = a3 + 104;
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