@interface _INPBCreateTimerIntentResponse
- (BOOL)isEqual:(id)equal;
- (_INPBCreateTimerIntentResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)writeTo:(id)to;
@end

@implementation _INPBCreateTimerIntentResponse

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  createdTimer = [(_INPBCreateTimerIntentResponse *)self createdTimer];
  dictionaryRepresentation = [createdTimer dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"createdTimer"];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    createdTimer = [(_INPBCreateTimerIntentResponse *)self createdTimer];
    createdTimer2 = [equalCopy createdTimer];
    v7 = createdTimer2;
    if ((createdTimer != 0) != (createdTimer2 == 0))
    {
      createdTimer3 = [(_INPBCreateTimerIntentResponse *)self createdTimer];
      if (!createdTimer3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = createdTimer3;
      createdTimer4 = [(_INPBCreateTimerIntentResponse *)self createdTimer];
      createdTimer5 = [equalCopy createdTimer];
      v12 = [createdTimer4 isEqual:createdTimer5];

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
  v5 = [+[_INPBCreateTimerIntentResponse allocWithZone:](_INPBCreateTimerIntentResponse init];
  v6 = [(_INPBTimer *)self->_createdTimer copyWithZone:zone];
  [(_INPBCreateTimerIntentResponse *)v5 setCreatedTimer:v6];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBCreateTimerIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBCreateTimerIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBCreateTimerIntentResponse *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  createdTimer = [(_INPBCreateTimerIntentResponse *)self createdTimer];

  if (createdTimer)
  {
    createdTimer2 = [(_INPBCreateTimerIntentResponse *)self createdTimer];
    PBDataWriterWriteSubmessage();
  }
}

@end