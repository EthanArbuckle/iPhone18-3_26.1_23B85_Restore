@interface _INPBPlayVoicemailIntent
- (BOOL)isEqual:(id)equal;
- (_INPBPlayVoicemailIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)setCallRecordIdentifier:(id)identifier;
- (void)writeTo:(id)to;
@end

@implementation _INPBPlayVoicemailIntent

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_callRecordIdentifier)
  {
    callRecordIdentifier = [(_INPBPlayVoicemailIntent *)self callRecordIdentifier];
    v5 = [callRecordIdentifier copy];
    [dictionary setObject:v5 forKeyedSubscript:@"callRecordIdentifier"];
  }

  intentMetadata = [(_INPBPlayVoicemailIntent *)self intentMetadata];
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

  callRecordIdentifier = [(_INPBPlayVoicemailIntent *)self callRecordIdentifier];
  callRecordIdentifier2 = [equalCopy callRecordIdentifier];
  if ((callRecordIdentifier != 0) == (callRecordIdentifier2 == 0))
  {
    goto LABEL_11;
  }

  callRecordIdentifier3 = [(_INPBPlayVoicemailIntent *)self callRecordIdentifier];
  if (callRecordIdentifier3)
  {
    v8 = callRecordIdentifier3;
    callRecordIdentifier4 = [(_INPBPlayVoicemailIntent *)self callRecordIdentifier];
    callRecordIdentifier5 = [equalCopy callRecordIdentifier];
    v11 = [callRecordIdentifier4 isEqual:callRecordIdentifier5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  callRecordIdentifier = [(_INPBPlayVoicemailIntent *)self intentMetadata];
  callRecordIdentifier2 = [equalCopy intentMetadata];
  if ((callRecordIdentifier != 0) != (callRecordIdentifier2 == 0))
  {
    intentMetadata = [(_INPBPlayVoicemailIntent *)self intentMetadata];
    if (!intentMetadata)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = intentMetadata;
    intentMetadata2 = [(_INPBPlayVoicemailIntent *)self intentMetadata];
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
  v5 = [+[_INPBPlayVoicemailIntent allocWithZone:](_INPBPlayVoicemailIntent init];
  v6 = [(NSString *)self->_callRecordIdentifier copyWithZone:zone];
  [(_INPBPlayVoicemailIntent *)v5 setCallRecordIdentifier:v6];

  v7 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBPlayVoicemailIntent *)v5 setIntentMetadata:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBPlayVoicemailIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBPlayVoicemailIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBPlayVoicemailIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  callRecordIdentifier = [(_INPBPlayVoicemailIntent *)self callRecordIdentifier];

  if (callRecordIdentifier)
  {
    callRecordIdentifier = self->_callRecordIdentifier;
    PBDataWriterWriteStringField();
  }

  intentMetadata = [(_INPBPlayVoicemailIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBPlayVoicemailIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }
}

- (void)setCallRecordIdentifier:(id)identifier
{
  v4 = [identifier copy];
  callRecordIdentifier = self->_callRecordIdentifier;
  self->_callRecordIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, callRecordIdentifier);
}

@end