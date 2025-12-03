@interface _INPBSetNicknameIntent
- (BOOL)isEqual:(id)equal;
- (_INPBSetNicknameIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)writeTo:(id)to;
@end

@implementation _INPBSetNicknameIntent

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  intentMetadata = [(_INPBSetNicknameIntent *)self intentMetadata];
  dictionaryRepresentation = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"intentMetadata"];

  targetNickname = [(_INPBSetNicknameIntent *)self targetNickname];
  dictionaryRepresentation2 = [targetNickname dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"targetNickname"];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  intentMetadata = [(_INPBSetNicknameIntent *)self intentMetadata];
  intentMetadata2 = [equalCopy intentMetadata];
  if ((intentMetadata != 0) == (intentMetadata2 == 0))
  {
    goto LABEL_11;
  }

  intentMetadata3 = [(_INPBSetNicknameIntent *)self intentMetadata];
  if (intentMetadata3)
  {
    v8 = intentMetadata3;
    intentMetadata4 = [(_INPBSetNicknameIntent *)self intentMetadata];
    intentMetadata5 = [equalCopy intentMetadata];
    v11 = [intentMetadata4 isEqual:intentMetadata5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  intentMetadata = [(_INPBSetNicknameIntent *)self targetNickname];
  intentMetadata2 = [equalCopy targetNickname];
  if ((intentMetadata != 0) != (intentMetadata2 == 0))
  {
    targetNickname = [(_INPBSetNicknameIntent *)self targetNickname];
    if (!targetNickname)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = targetNickname;
    targetNickname2 = [(_INPBSetNicknameIntent *)self targetNickname];
    targetNickname3 = [equalCopy targetNickname];
    v16 = [targetNickname2 isEqual:targetNickname3];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBSetNicknameIntent allocWithZone:](_INPBSetNicknameIntent init];
  v6 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBSetNicknameIntent *)v5 setIntentMetadata:v6];

  v7 = [(_INPBModifyNickname *)self->_targetNickname copyWithZone:zone];
  [(_INPBSetNicknameIntent *)v5 setTargetNickname:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBSetNicknameIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBSetNicknameIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBSetNicknameIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  intentMetadata = [(_INPBSetNicknameIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBSetNicknameIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  targetNickname = [(_INPBSetNicknameIntent *)self targetNickname];

  if (targetNickname)
  {
    targetNickname2 = [(_INPBSetNicknameIntent *)self targetNickname];
    PBDataWriterWriteSubmessage();
  }
}

@end