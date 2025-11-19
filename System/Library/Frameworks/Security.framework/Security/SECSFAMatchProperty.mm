@interface SECSFAMatchProperty
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SECSFAMatchProperty

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4[1])
  {
    [(SECSFAMatchProperty *)self setPropertyName:?];
    v4 = v7;
  }

  value = self->_value;
  v6 = v4[2];
  if (value)
  {
    if (v6)
    {
      [(SECSFAPropertyValue *)value mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SECSFAMatchProperty *)self setValue:?];
  }

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((propertyName = self->_propertyName, !(propertyName | v4[1])) || -[NSString isEqual:](propertyName, "isEqual:")))
  {
    value = self->_value;
    if (value | v4[2])
    {
      v7 = [(SECSFAPropertyValue *)value isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_propertyName copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(SECSFAPropertyValue *)self->_value copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_propertyName)
  {
    [v4 setPropertyName:?];
    v4 = v5;
  }

  if (self->_value)
  {
    [v5 setValue:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_propertyName)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_value)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
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
        LOBYTE(v18[0]) = 0;
        v9 = [a3 position] + 1;
        if (v9 >= [a3 position] && (v10 = objc_msgSend(a3, "position") + 1, v10 <= objc_msgSend(a3, "length")))
        {
          v11 = [a3 data];
          [v11 getBytes:v18 range:{objc_msgSend(a3, "position"), 1}];

          [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
        }

        else
        {
          [a3 _setError];
        }

        v8 |= (v18[0] & 0x7F) << v6;
        if ((v18[0] & 0x80) == 0)
        {
          break;
        }

        v6 += 7;
        if (v7++ >= 9)
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

      if ((v13 >> 3) == 2)
      {
        break;
      }

      if ((v13 >> 3) == 1)
      {
        v14 = PBReaderReadString();
        propertyName = self->_propertyName;
        self->_propertyName = v14;
LABEL_23:

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v16 = [a3 position];
      if (v16 >= [a3 length])
      {
        return [a3 hasError] ^ 1;
      }
    }

    propertyName = objc_alloc_init(SECSFAPropertyValue);
    objc_storeStrong(&self->_value, propertyName);
    v18[0] = 0xAAAAAAAAAAAAAAAALL;
    v18[1] = 0xAAAAAAAAAAAAAAAALL;
    if (!PBReaderPlaceMark() || !SECSFAPropertyValueReadFrom(propertyName, a3))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_23;
  }

  return [a3 hasError] ^ 1;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  propertyName = self->_propertyName;
  if (propertyName)
  {
    [v3 setObject:propertyName forKey:@"propertyName"];
  }

  value = self->_value;
  if (value)
  {
    v7 = [(SECSFAPropertyValue *)value dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"value"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SECSFAMatchProperty;
  v4 = [(SECSFAMatchProperty *)&v8 description];
  v5 = [(SECSFAMatchProperty *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end