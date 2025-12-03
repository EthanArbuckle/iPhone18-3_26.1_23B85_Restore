@interface _INPBContactEventTrigger
- (BOOL)isEqual:(id)equal;
- (_INPBContactEventTrigger)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)writeTo:(id)to;
@end

@implementation _INPBContactEventTrigger

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  triggerContact = [(_INPBContactEventTrigger *)self triggerContact];
  dictionaryRepresentation = [triggerContact dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"triggerContact"];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    triggerContact = [(_INPBContactEventTrigger *)self triggerContact];
    triggerContact2 = [equalCopy triggerContact];
    v7 = triggerContact2;
    if ((triggerContact != 0) != (triggerContact2 == 0))
    {
      triggerContact3 = [(_INPBContactEventTrigger *)self triggerContact];
      if (!triggerContact3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = triggerContact3;
      triggerContact4 = [(_INPBContactEventTrigger *)self triggerContact];
      triggerContact5 = [equalCopy triggerContact];
      v12 = [triggerContact4 isEqual:triggerContact5];

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
  v5 = [+[_INPBContactEventTrigger allocWithZone:](_INPBContactEventTrigger init];
  v6 = [(_INPBContact *)self->_triggerContact copyWithZone:zone];
  [(_INPBContactEventTrigger *)v5 setTriggerContact:v6];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBContactEventTrigger *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBContactEventTrigger)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBContactEventTrigger *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  triggerContact = [(_INPBContactEventTrigger *)self triggerContact];

  if (triggerContact)
  {
    triggerContact2 = [(_INPBContactEventTrigger *)self triggerContact];
    PBDataWriterWriteSubmessage();
  }
}

@end