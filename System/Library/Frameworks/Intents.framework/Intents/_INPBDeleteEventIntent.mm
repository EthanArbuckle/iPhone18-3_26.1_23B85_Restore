@interface _INPBDeleteEventIntent
- (BOOL)isEqual:(id)equal;
- (_INPBDeleteEventIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setTargetEventIdentifier:(id)identifier;
- (void)writeTo:(id)to;
@end

@implementation _INPBDeleteEventIntent

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBDeleteEventIntent *)self hasDeleteAllOccurrences])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBDeleteEventIntent deleteAllOccurrences](self, "deleteAllOccurrences")}];
    [dictionary setObject:v4 forKeyedSubscript:@"deleteAllOccurrences"];
  }

  intentMetadata = [(_INPBDeleteEventIntent *)self intentMetadata];
  dictionaryRepresentation = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"intentMetadata"];

  if (self->_targetEventIdentifier)
  {
    targetEventIdentifier = [(_INPBDeleteEventIntent *)self targetEventIdentifier];
    v8 = [targetEventIdentifier copy];
    [dictionary setObject:v8 forKeyedSubscript:@"targetEventIdentifier"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  if ([(_INPBDeleteEventIntent *)self hasDeleteAllOccurrences])
  {
    v3 = 2654435761 * self->_deleteAllOccurrences;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(_INPBIntentMetadata *)self->_intentMetadata hash]^ v3;
  return v4 ^ [(NSString *)self->_targetEventIdentifier hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  hasDeleteAllOccurrences = [(_INPBDeleteEventIntent *)self hasDeleteAllOccurrences];
  if (hasDeleteAllOccurrences != [equalCopy hasDeleteAllOccurrences])
  {
    goto LABEL_16;
  }

  if ([(_INPBDeleteEventIntent *)self hasDeleteAllOccurrences])
  {
    if ([equalCopy hasDeleteAllOccurrences])
    {
      deleteAllOccurrences = self->_deleteAllOccurrences;
      if (deleteAllOccurrences != [equalCopy deleteAllOccurrences])
      {
        goto LABEL_16;
      }
    }
  }

  intentMetadata = [(_INPBDeleteEventIntent *)self intentMetadata];
  intentMetadata2 = [equalCopy intentMetadata];
  if ((intentMetadata != 0) == (intentMetadata2 == 0))
  {
    goto LABEL_15;
  }

  intentMetadata3 = [(_INPBDeleteEventIntent *)self intentMetadata];
  if (intentMetadata3)
  {
    v10 = intentMetadata3;
    intentMetadata4 = [(_INPBDeleteEventIntent *)self intentMetadata];
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

  intentMetadata = [(_INPBDeleteEventIntent *)self targetEventIdentifier];
  intentMetadata2 = [equalCopy targetEventIdentifier];
  if ((intentMetadata != 0) != (intentMetadata2 == 0))
  {
    targetEventIdentifier = [(_INPBDeleteEventIntent *)self targetEventIdentifier];
    if (!targetEventIdentifier)
    {

LABEL_19:
      v19 = 1;
      goto LABEL_17;
    }

    v15 = targetEventIdentifier;
    targetEventIdentifier2 = [(_INPBDeleteEventIntent *)self targetEventIdentifier];
    targetEventIdentifier3 = [equalCopy targetEventIdentifier];
    v18 = [targetEventIdentifier2 isEqual:targetEventIdentifier3];

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
  v5 = [+[_INPBDeleteEventIntent allocWithZone:](_INPBDeleteEventIntent init];
  if ([(_INPBDeleteEventIntent *)self hasDeleteAllOccurrences])
  {
    [(_INPBDeleteEventIntent *)v5 setDeleteAllOccurrences:[(_INPBDeleteEventIntent *)self deleteAllOccurrences]];
  }

  v6 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBDeleteEventIntent *)v5 setIntentMetadata:v6];

  v7 = [(NSString *)self->_targetEventIdentifier copyWithZone:zone];
  [(_INPBDeleteEventIntent *)v5 setTargetEventIdentifier:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBDeleteEventIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBDeleteEventIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBDeleteEventIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_INPBDeleteEventIntent *)self hasDeleteAllOccurrences])
  {
    deleteAllOccurrences = self->_deleteAllOccurrences;
    PBDataWriterWriteBOOLField();
  }

  intentMetadata = [(_INPBDeleteEventIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBDeleteEventIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  targetEventIdentifier = [(_INPBDeleteEventIntent *)self targetEventIdentifier];

  v8 = toCopy;
  if (targetEventIdentifier)
  {
    targetEventIdentifier = self->_targetEventIdentifier;
    PBDataWriterWriteStringField();
    v8 = toCopy;
  }
}

- (void)setTargetEventIdentifier:(id)identifier
{
  v4 = [identifier copy];
  targetEventIdentifier = self->_targetEventIdentifier;
  self->_targetEventIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, targetEventIdentifier);
}

@end