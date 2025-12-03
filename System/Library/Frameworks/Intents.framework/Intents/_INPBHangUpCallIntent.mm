@interface _INPBHangUpCallIntent
- (BOOL)isEqual:(id)equal;
- (_INPBHangUpCallIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)setCallIdentifier:(id)identifier;
- (void)writeTo:(id)to;
@end

@implementation _INPBHangUpCallIntent

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_callIdentifier)
  {
    callIdentifier = [(_INPBHangUpCallIntent *)self callIdentifier];
    v5 = [callIdentifier copy];
    [dictionary setObject:v5 forKeyedSubscript:@"callIdentifier"];
  }

  intentMetadata = [(_INPBHangUpCallIntent *)self intentMetadata];
  dictionaryRepresentation = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"intentMetadata"];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  callIdentifier = [(_INPBHangUpCallIntent *)self callIdentifier];
  callIdentifier2 = [equalCopy callIdentifier];
  if ((callIdentifier != 0) == (callIdentifier2 == 0))
  {
    goto LABEL_11;
  }

  callIdentifier3 = [(_INPBHangUpCallIntent *)self callIdentifier];
  if (callIdentifier3)
  {
    v8 = callIdentifier3;
    callIdentifier4 = [(_INPBHangUpCallIntent *)self callIdentifier];
    callIdentifier5 = [equalCopy callIdentifier];
    v11 = [callIdentifier4 isEqual:callIdentifier5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  callIdentifier = [(_INPBHangUpCallIntent *)self intentMetadata];
  callIdentifier2 = [equalCopy intentMetadata];
  if ((callIdentifier != 0) != (callIdentifier2 == 0))
  {
    intentMetadata = [(_INPBHangUpCallIntent *)self intentMetadata];
    if (!intentMetadata)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = intentMetadata;
    intentMetadata2 = [(_INPBHangUpCallIntent *)self intentMetadata];
    intentMetadata3 = [equalCopy intentMetadata];
    v16 = [intentMetadata2 isEqual:intentMetadata3];

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
  v5 = [+[_INPBHangUpCallIntent allocWithZone:](_INPBHangUpCallIntent init];
  v6 = [(NSString *)self->_callIdentifier copyWithZone:zone];
  [(_INPBHangUpCallIntent *)v5 setCallIdentifier:v6];

  v7 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBHangUpCallIntent *)v5 setIntentMetadata:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBHangUpCallIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBHangUpCallIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBHangUpCallIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  callIdentifier = [(_INPBHangUpCallIntent *)self callIdentifier];

  if (callIdentifier)
  {
    callIdentifier = self->_callIdentifier;
    PBDataWriterWriteStringField();
  }

  intentMetadata = [(_INPBHangUpCallIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBHangUpCallIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }
}

- (void)setCallIdentifier:(id)identifier
{
  v4 = [identifier copy];
  callIdentifier = self->_callIdentifier;
  self->_callIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, callIdentifier);
}

@end