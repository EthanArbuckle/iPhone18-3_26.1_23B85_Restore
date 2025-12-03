@interface _INPBTemporalEventTrigger
- (BOOL)isEqual:(id)equal;
- (_INPBTemporalEventTrigger)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)writeTo:(id)to;
@end

@implementation _INPBTemporalEventTrigger

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dateTime = [(_INPBTemporalEventTrigger *)self dateTime];
  dictionaryRepresentation = [dateTime dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"dateTime"];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    dateTime = [(_INPBTemporalEventTrigger *)self dateTime];
    dateTime2 = [equalCopy dateTime];
    v7 = dateTime2;
    if ((dateTime != 0) != (dateTime2 == 0))
    {
      dateTime3 = [(_INPBTemporalEventTrigger *)self dateTime];
      if (!dateTime3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = dateTime3;
      dateTime4 = [(_INPBTemporalEventTrigger *)self dateTime];
      dateTime5 = [equalCopy dateTime];
      v12 = [dateTime4 isEqual:dateTime5];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBTemporalEventTrigger allocWithZone:](_INPBTemporalEventTrigger init];
  v6 = [(_INPBDateTimeRangeValue *)self->_dateTime copyWithZone:zone];
  [(_INPBTemporalEventTrigger *)v5 setDateTime:v6];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBTemporalEventTrigger *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBTemporalEventTrigger)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBTemporalEventTrigger *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  dateTime = [(_INPBTemporalEventTrigger *)self dateTime];

  if (dateTime)
  {
    dateTime2 = [(_INPBTemporalEventTrigger *)self dateTime];
    PBDataWriterWriteSubmessage();
  }
}

@end