@interface _INPBSetNicknameIntentResponse
- (BOOL)isEqual:(id)equal;
- (_INPBSetNicknameIntentResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)writeTo:(id)to;
@end

@implementation _INPBSetNicknameIntentResponse

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  meCard = [(_INPBSetNicknameIntentResponse *)self meCard];
  dictionaryRepresentation = [meCard dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"meCard"];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    meCard = [(_INPBSetNicknameIntentResponse *)self meCard];
    meCard2 = [equalCopy meCard];
    v7 = meCard2;
    if ((meCard != 0) != (meCard2 == 0))
    {
      meCard3 = [(_INPBSetNicknameIntentResponse *)self meCard];
      if (!meCard3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = meCard3;
      meCard4 = [(_INPBSetNicknameIntentResponse *)self meCard];
      meCard5 = [equalCopy meCard];
      v12 = [meCard4 isEqual:meCard5];

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
  v5 = [+[_INPBSetNicknameIntentResponse allocWithZone:](_INPBSetNicknameIntentResponse init];
  v6 = [(_INPBContactCard *)self->_meCard copyWithZone:zone];
  [(_INPBSetNicknameIntentResponse *)v5 setMeCard:v6];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBSetNicknameIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBSetNicknameIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBSetNicknameIntentResponse *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  meCard = [(_INPBSetNicknameIntentResponse *)self meCard];

  if (meCard)
  {
    meCard2 = [(_INPBSetNicknameIntentResponse *)self meCard];
    PBDataWriterWriteSubmessage();
  }
}

@end