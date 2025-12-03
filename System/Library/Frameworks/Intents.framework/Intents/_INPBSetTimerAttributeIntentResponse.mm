@interface _INPBSetTimerAttributeIntentResponse
- (BOOL)isEqual:(id)equal;
- (_INPBSetTimerAttributeIntentResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)writeTo:(id)to;
@end

@implementation _INPBSetTimerAttributeIntentResponse

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  updatedTimer = [(_INPBSetTimerAttributeIntentResponse *)self updatedTimer];
  dictionaryRepresentation = [updatedTimer dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"updatedTimer"];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    updatedTimer = [(_INPBSetTimerAttributeIntentResponse *)self updatedTimer];
    updatedTimer2 = [equalCopy updatedTimer];
    v7 = updatedTimer2;
    if ((updatedTimer != 0) != (updatedTimer2 == 0))
    {
      updatedTimer3 = [(_INPBSetTimerAttributeIntentResponse *)self updatedTimer];
      if (!updatedTimer3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = updatedTimer3;
      updatedTimer4 = [(_INPBSetTimerAttributeIntentResponse *)self updatedTimer];
      updatedTimer5 = [equalCopy updatedTimer];
      v12 = [updatedTimer4 isEqual:updatedTimer5];

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
  v5 = [+[_INPBSetTimerAttributeIntentResponse allocWithZone:](_INPBSetTimerAttributeIntentResponse init];
  v6 = [(_INPBTimer *)self->_updatedTimer copyWithZone:zone];
  [(_INPBSetTimerAttributeIntentResponse *)v5 setUpdatedTimer:v6];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBSetTimerAttributeIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBSetTimerAttributeIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBSetTimerAttributeIntentResponse *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  updatedTimer = [(_INPBSetTimerAttributeIntentResponse *)self updatedTimer];

  if (updatedTimer)
  {
    updatedTimer2 = [(_INPBSetTimerAttributeIntentResponse *)self updatedTimer];
    PBDataWriterWriteSubmessage();
  }
}

@end