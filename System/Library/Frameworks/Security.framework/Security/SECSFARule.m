@interface SECSFARule
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsEventClass:(id)a3;
- (int)eventClass;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasEventClass:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SECSFARule

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (*(v4 + 4))
  {
    [(SECSFARule *)self setEventType:?];
    v4 = v7;
  }

  if (*(v4 + 5))
  {
    [(SECSFARule *)self setMatch:?];
    v4 = v7;
  }

  action = self->_action;
  v6 = *(v4 + 2);
  if (action)
  {
    if (!v6)
    {
      goto LABEL_11;
    }

    [(SECSFAAction *)action mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_11;
    }

    [(SECSFARule *)self setAction:?];
  }

  v4 = v7;
LABEL_11:
  if (*(v4 + 56))
  {
    self->_repeatAfterSeconds = *(v4 + 1);
    *&self->_has |= 1u;
  }

  if (*(v4 + 6))
  {
    [(SECSFARule *)self setProcess:?];
    v4 = v7;
  }

  if ((*(v4 + 56) & 2) != 0)
  {
    self->_eventClass = *(v4 + 6);
    *&self->_has |= 2u;
  }

  MEMORY[0x1EEE66BB8]();
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_eventType hash];
  v4 = [(NSData *)self->_match hash];
  v5 = [(SECSFAAction *)self->_action hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_repeatAfterSeconds;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(NSString *)self->_process hash];
  if ((*&self->_has & 2) != 0)
  {
    v8 = 2654435761 * self->_eventClass;
  }

  else
  {
    v8 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  eventType = self->_eventType;
  if (eventType | *(v4 + 4))
  {
    if (![(NSString *)eventType isEqual:?])
    {
      goto LABEL_20;
    }
  }

  match = self->_match;
  if (match | *(v4 + 5))
  {
    if (![(NSData *)match isEqual:?])
    {
      goto LABEL_20;
    }
  }

  action = self->_action;
  if (action | *(v4 + 2))
  {
    if (![(SECSFAAction *)action isEqual:?])
    {
      goto LABEL_20;
    }
  }

  has = self->_has;
  v9 = *(v4 + 56);
  if (has)
  {
    if ((*(v4 + 56) & 1) == 0 || self->_repeatAfterSeconds != *(v4 + 1))
    {
      goto LABEL_20;
    }
  }

  else if (*(v4 + 56))
  {
    goto LABEL_20;
  }

  process = self->_process;
  if (process | *(v4 + 6))
  {
    if (![(NSString *)process isEqual:?])
    {
LABEL_20:
      v11 = 0;
      goto LABEL_21;
    }

    has = self->_has;
    v9 = *(v4 + 56);
  }

  v11 = (v9 & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((v9 & 2) == 0 || self->_eventClass != *(v4 + 6))
    {
      goto LABEL_20;
    }

    v11 = 1;
  }

LABEL_21:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_eventType copyWithZone:a3];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSData *)self->_match copyWithZone:a3];
  v9 = *(v5 + 40);
  *(v5 + 40) = v8;

  v10 = [(SECSFAAction *)self->_action copyWithZone:a3];
  v11 = *(v5 + 16);
  *(v5 + 16) = v10;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_repeatAfterSeconds;
    *(v5 + 56) |= 1u;
  }

  v12 = [(NSString *)self->_process copyWithZone:a3];
  v13 = *(v5 + 48);
  *(v5 + 48) = v12;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 24) = self->_eventClass;
    *(v5 + 56) |= 2u;
  }

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_eventType)
  {
    [v4 setEventType:?];
    v4 = v5;
  }

  if (self->_match)
  {
    [v5 setMatch:?];
    v4 = v5;
  }

  if (self->_action)
  {
    [v5 setAction:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = self->_repeatAfterSeconds;
    *(v4 + 56) |= 1u;
  }

  if (self->_process)
  {
    [v5 setProcess:?];
    v4 = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v4 + 6) = self->_eventClass;
    *(v4 + 56) |= 2u;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_eventType)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (self->_match)
  {
    PBDataWriterWriteDataField();
    v4 = v7;
  }

  if (self->_action)
  {
    PBDataWriterWriteSubmessage();
    v4 = v7;
  }

  if (*&self->_has)
  {
    repeatAfterSeconds = self->_repeatAfterSeconds;
    PBDataWriterWriteInt64Field();
    v4 = v7;
  }

  if (self->_process)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if ((*&self->_has & 2) != 0)
  {
    eventClass = self->_eventClass;
    PBDataWriterWriteInt32Field();
    v4 = v7;
  }
}

- (BOOL)readFrom:(id)a3
{
  v5 = [a3 position];
  if (v5 < [a3 length])
  {
    while (1)
    {
      if ([a3 hasError])
      {
        return [a3 hasError] ^ 1;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        LOBYTE(v35[0]) = 0;
        v9 = [a3 position] + 1;
        if (v9 >= [a3 position] && (v10 = objc_msgSend(a3, "position") + 1, v10 <= objc_msgSend(a3, "length")))
        {
          v11 = [a3 data];
          [v11 getBytes:v35 range:{objc_msgSend(a3, "position"), 1}];

          [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
        }

        else
        {
          [a3 _setError];
        }

        v8 |= (v35[0] & 0x7F) << v6;
        if ((v35[0] & 0x80) == 0)
        {
          break;
        }

        v6 += 7;
        v12 = v7++ >= 9;
        if (v12)
        {
          v13 = 0;
          goto LABEL_15;
        }
      }

      v13 = [a3 hasError] ? 0 : v8;
LABEL_15:
      if (([a3 hasError] & 1) != 0 || (v13 & 7) == 4)
      {
        return [a3 hasError] ^ 1;
      }

      v14 = v13 >> 3;
      if ((v13 >> 3) > 3)
      {
        break;
      }

      if (v14 == 1)
      {
        v23 = PBReaderReadString();
        v24 = 32;
LABEL_50:
        v32 = *(&self->super.super.isa + v24);
        *(&self->super.super.isa + v24) = v23;

        goto LABEL_59;
      }

      if (v14 == 2)
      {
        v23 = PBReaderReadData();
        v24 = 40;
        goto LABEL_50;
      }

      if (v14 != 3)
      {
        goto LABEL_46;
      }

      v15 = objc_alloc_init(SECSFAAction);
      objc_storeStrong(&self->_action, v15);
      v35[0] = 0xAAAAAAAAAAAAAAAALL;
      v35[1] = 0xAAAAAAAAAAAAAAAALL;
      if (!PBReaderPlaceMark() || !SECSFAActionReadFrom(v15, a3))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_59:
      v33 = [a3 position];
      if (v33 >= [a3 length])
      {
        return [a3 hasError] ^ 1;
      }
    }

    switch(v14)
    {
      case 4:
        v25 = 0;
        v26 = 0;
        v27 = 0;
        *&self->_has |= 1u;
        while (1)
        {
          LOBYTE(v35[0]) = 0;
          v28 = [a3 position] + 1;
          if (v28 >= [a3 position] && (v29 = objc_msgSend(a3, "position") + 1, v29 <= objc_msgSend(a3, "length")))
          {
            v30 = [a3 data];
            [v30 getBytes:v35 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
          }

          v27 |= (v35[0] & 0x7F) << v25;
          if ((v35[0] & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v12 = v26++ >= 9;
          if (v12)
          {
            v31 = 0;
            goto LABEL_54;
          }
        }

        if ([a3 hasError])
        {
          v31 = 0;
        }

        else
        {
          v31 = v27;
        }

LABEL_54:
        self->_repeatAfterSeconds = v31;
        goto LABEL_59;
      case 5:
        v23 = PBReaderReadString();
        v24 = 48;
        goto LABEL_50;
      case 6:
        v16 = 0;
        v17 = 0;
        v18 = 0;
        *&self->_has |= 2u;
        while (1)
        {
          LOBYTE(v35[0]) = 0;
          v19 = [a3 position] + 1;
          if (v19 >= [a3 position] && (v20 = objc_msgSend(a3, "position") + 1, v20 <= objc_msgSend(a3, "length")))
          {
            v21 = [a3 data];
            [v21 getBytes:v35 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
          }

          v18 |= (v35[0] & 0x7F) << v16;
          if ((v35[0] & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v12 = v17++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_58;
          }
        }

        if ([a3 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v18;
        }

LABEL_58:
        self->_eventClass = v22;
        goto LABEL_59;
    }

LABEL_46:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_59;
  }

  return [a3 hasError] ^ 1;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  eventType = self->_eventType;
  if (eventType)
  {
    [v3 setObject:eventType forKey:@"eventType"];
  }

  match = self->_match;
  if (match)
  {
    [v4 setObject:match forKey:@"match"];
  }

  action = self->_action;
  if (action)
  {
    v8 = [(SECSFAAction *)action dictionaryRepresentation];
    [v4 setObject:v8 forKey:@"action"];
  }

  if (*&self->_has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_repeatAfterSeconds];
    [v4 setObject:v9 forKey:@"repeatAfterSeconds"];
  }

  process = self->_process;
  if (process)
  {
    [v4 setObject:process forKey:@"process"];
  }

  if ((*&self->_has & 2) != 0)
  {
    eventClass = self->_eventClass;
    if (eventClass < 0xF && ((0x7C03u >> eventClass) & 1) != 0)
    {
      v12 = off_1E70D69A8[eventClass];
    }

    else
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_eventClass];
    }

    [v4 setObject:v12 forKey:@"eventClass"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SECSFARule;
  v4 = [(SECSFARule *)&v8 description];
  v5 = [(SECSFARule *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (int)StringAsEventClass:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Errors"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"All"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Success"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"HardFailure"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"SoftFailure"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"Note"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"Rockwell"])
  {
    v4 = 14;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasEventClass:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)eventClass
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_eventClass;
  }

  else
  {
    return 0;
  }
}

@end