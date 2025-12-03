@interface _INPBShareFocusStatusIntent
- (BOOL)isEqual:(id)equal;
- (_INPBShareFocusStatusIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)writeTo:(id)to;
@end

@implementation _INPBShareFocusStatusIntent

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  focusStatus = [(_INPBShareFocusStatusIntent *)self focusStatus];
  dictionaryRepresentation = [focusStatus dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"focusStatus"];

  intentMetadata = [(_INPBShareFocusStatusIntent *)self intentMetadata];
  dictionaryRepresentation2 = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"intentMetadata"];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  focusStatus = [(_INPBShareFocusStatusIntent *)self focusStatus];
  focusStatus2 = [equalCopy focusStatus];
  if ((focusStatus != 0) == (focusStatus2 == 0))
  {
    goto LABEL_11;
  }

  focusStatus3 = [(_INPBShareFocusStatusIntent *)self focusStatus];
  if (focusStatus3)
  {
    v8 = focusStatus3;
    focusStatus4 = [(_INPBShareFocusStatusIntent *)self focusStatus];
    focusStatus5 = [equalCopy focusStatus];
    v11 = [focusStatus4 isEqual:focusStatus5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  focusStatus = [(_INPBShareFocusStatusIntent *)self intentMetadata];
  focusStatus2 = [equalCopy intentMetadata];
  if ((focusStatus != 0) != (focusStatus2 == 0))
  {
    intentMetadata = [(_INPBShareFocusStatusIntent *)self intentMetadata];
    if (!intentMetadata)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = intentMetadata;
    intentMetadata2 = [(_INPBShareFocusStatusIntent *)self intentMetadata];
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
  v5 = [+[_INPBShareFocusStatusIntent allocWithZone:](_INPBShareFocusStatusIntent init];
  v6 = [(_INPBFocusStatus *)self->_focusStatus copyWithZone:zone];
  [(_INPBShareFocusStatusIntent *)v5 setFocusStatus:v6];

  v7 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBShareFocusStatusIntent *)v5 setIntentMetadata:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBShareFocusStatusIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBShareFocusStatusIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBShareFocusStatusIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  focusStatus = [(_INPBShareFocusStatusIntent *)self focusStatus];

  if (focusStatus)
  {
    focusStatus2 = [(_INPBShareFocusStatusIntent *)self focusStatus];
    PBDataWriterWriteSubmessage();
  }

  intentMetadata = [(_INPBShareFocusStatusIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBShareFocusStatusIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }
}

@end