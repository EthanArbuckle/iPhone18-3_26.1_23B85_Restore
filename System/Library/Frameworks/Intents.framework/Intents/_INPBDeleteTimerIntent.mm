@interface _INPBDeleteTimerIntent
- (BOOL)isEqual:(id)equal;
- (_INPBDeleteTimerIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)writeTo:(id)to;
@end

@implementation _INPBDeleteTimerIntent

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBDeleteTimerIntent *)self hasDeleteMultiple])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBDeleteTimerIntent deleteMultiple](self, "deleteMultiple")}];
    [dictionary setObject:v4 forKeyedSubscript:@"deleteMultiple"];
  }

  intentMetadata = [(_INPBDeleteTimerIntent *)self intentMetadata];
  dictionaryRepresentation = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"intentMetadata"];

  targetTimer = [(_INPBDeleteTimerIntent *)self targetTimer];
  dictionaryRepresentation2 = [targetTimer dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"targetTimer"];

  return dictionary;
}

- (unint64_t)hash
{
  if ([(_INPBDeleteTimerIntent *)self hasDeleteMultiple])
  {
    v3 = 2654435761 * self->_deleteMultiple;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(_INPBIntentMetadata *)self->_intentMetadata hash]^ v3;
  return v4 ^ [(_INPBTimer *)self->_targetTimer hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  hasDeleteMultiple = [(_INPBDeleteTimerIntent *)self hasDeleteMultiple];
  if (hasDeleteMultiple != [equalCopy hasDeleteMultiple])
  {
    goto LABEL_16;
  }

  if ([(_INPBDeleteTimerIntent *)self hasDeleteMultiple])
  {
    if ([equalCopy hasDeleteMultiple])
    {
      deleteMultiple = self->_deleteMultiple;
      if (deleteMultiple != [equalCopy deleteMultiple])
      {
        goto LABEL_16;
      }
    }
  }

  intentMetadata = [(_INPBDeleteTimerIntent *)self intentMetadata];
  intentMetadata2 = [equalCopy intentMetadata];
  if ((intentMetadata != 0) == (intentMetadata2 == 0))
  {
    goto LABEL_15;
  }

  intentMetadata3 = [(_INPBDeleteTimerIntent *)self intentMetadata];
  if (intentMetadata3)
  {
    v10 = intentMetadata3;
    intentMetadata4 = [(_INPBDeleteTimerIntent *)self intentMetadata];
    intentMetadata5 = [equalCopy intentMetadata];
    v13 = [intentMetadata4 isEqual:intentMetadata5];

    if (!v13)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  intentMetadata = [(_INPBDeleteTimerIntent *)self targetTimer];
  intentMetadata2 = [equalCopy targetTimer];
  if ((intentMetadata != 0) != (intentMetadata2 == 0))
  {
    targetTimer = [(_INPBDeleteTimerIntent *)self targetTimer];
    if (!targetTimer)
    {

LABEL_19:
      v19 = 1;
      goto LABEL_17;
    }

    v15 = targetTimer;
    targetTimer2 = [(_INPBDeleteTimerIntent *)self targetTimer];
    targetTimer3 = [equalCopy targetTimer];
    v18 = [targetTimer2 isEqual:targetTimer3];

    if (v18)
    {
      goto LABEL_19;
    }
  }

  else
  {
LABEL_15:
  }

LABEL_16:
  v19 = 0;
LABEL_17:

  return v19;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBDeleteTimerIntent allocWithZone:](_INPBDeleteTimerIntent init];
  if ([(_INPBDeleteTimerIntent *)self hasDeleteMultiple])
  {
    [(_INPBDeleteTimerIntent *)v5 setDeleteMultiple:[(_INPBDeleteTimerIntent *)self deleteMultiple]];
  }

  v6 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBDeleteTimerIntent *)v5 setIntentMetadata:v6];

  v7 = [(_INPBTimer *)self->_targetTimer copyWithZone:zone];
  [(_INPBDeleteTimerIntent *)v5 setTargetTimer:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBDeleteTimerIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBDeleteTimerIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBDeleteTimerIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_INPBDeleteTimerIntent *)self hasDeleteMultiple])
  {
    deleteMultiple = self->_deleteMultiple;
    PBDataWriterWriteBOOLField();
  }

  intentMetadata = [(_INPBDeleteTimerIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBDeleteTimerIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  targetTimer = [(_INPBDeleteTimerIntent *)self targetTimer];

  v8 = toCopy;
  if (targetTimer)
  {
    targetTimer2 = [(_INPBDeleteTimerIntent *)self targetTimer];
    PBDataWriterWriteSubmessage();

    v8 = toCopy;
  }
}

@end