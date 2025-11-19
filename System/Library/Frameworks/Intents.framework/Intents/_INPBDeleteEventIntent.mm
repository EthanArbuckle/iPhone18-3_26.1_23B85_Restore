@interface _INPBDeleteEventIntent
- (BOOL)isEqual:(id)a3;
- (_INPBDeleteEventIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setTargetEventIdentifier:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBDeleteEventIntent

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBDeleteEventIntent *)self hasDeleteAllOccurrences])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBDeleteEventIntent deleteAllOccurrences](self, "deleteAllOccurrences")}];
    [v3 setObject:v4 forKeyedSubscript:@"deleteAllOccurrences"];
  }

  v5 = [(_INPBDeleteEventIntent *)self intentMetadata];
  v6 = [v5 dictionaryRepresentation];
  [v3 setObject:v6 forKeyedSubscript:@"intentMetadata"];

  if (self->_targetEventIdentifier)
  {
    v7 = [(_INPBDeleteEventIntent *)self targetEventIdentifier];
    v8 = [v7 copy];
    [v3 setObject:v8 forKeyedSubscript:@"targetEventIdentifier"];
  }

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  v5 = [(_INPBDeleteEventIntent *)self hasDeleteAllOccurrences];
  if (v5 != [v4 hasDeleteAllOccurrences])
  {
    goto LABEL_16;
  }

  if ([(_INPBDeleteEventIntent *)self hasDeleteAllOccurrences])
  {
    if ([v4 hasDeleteAllOccurrences])
    {
      deleteAllOccurrences = self->_deleteAllOccurrences;
      if (deleteAllOccurrences != [v4 deleteAllOccurrences])
      {
        goto LABEL_16;
      }
    }
  }

  v7 = [(_INPBDeleteEventIntent *)self intentMetadata];
  v8 = [v4 intentMetadata];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_15;
  }

  v9 = [(_INPBDeleteEventIntent *)self intentMetadata];
  if (v9)
  {
    v10 = v9;
    v11 = [(_INPBDeleteEventIntent *)self intentMetadata];
    v12 = [v4 intentMetadata];
    v13 = [v11 isEqual:v12];

    if (!v13)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  v7 = [(_INPBDeleteEventIntent *)self targetEventIdentifier];
  v8 = [v4 targetEventIdentifier];
  if ((v7 != 0) != (v8 == 0))
  {
    v14 = [(_INPBDeleteEventIntent *)self targetEventIdentifier];
    if (!v14)
    {

LABEL_19:
      v19 = 1;
      goto LABEL_17;
    }

    v15 = v14;
    v16 = [(_INPBDeleteEventIntent *)self targetEventIdentifier];
    v17 = [v4 targetEventIdentifier];
    v18 = [v16 isEqual:v17];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBDeleteEventIntent allocWithZone:](_INPBDeleteEventIntent init];
  if ([(_INPBDeleteEventIntent *)self hasDeleteAllOccurrences])
  {
    [(_INPBDeleteEventIntent *)v5 setDeleteAllOccurrences:[(_INPBDeleteEventIntent *)self deleteAllOccurrences]];
  }

  v6 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBDeleteEventIntent *)v5 setIntentMetadata:v6];

  v7 = [(NSString *)self->_targetEventIdentifier copyWithZone:a3];
  [(_INPBDeleteEventIntent *)v5 setTargetEventIdentifier:v7];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBDeleteEventIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBDeleteEventIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBDeleteEventIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v10 = a3;
  if ([(_INPBDeleteEventIntent *)self hasDeleteAllOccurrences])
  {
    deleteAllOccurrences = self->_deleteAllOccurrences;
    PBDataWriterWriteBOOLField();
  }

  v5 = [(_INPBDeleteEventIntent *)self intentMetadata];

  if (v5)
  {
    v6 = [(_INPBDeleteEventIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(_INPBDeleteEventIntent *)self targetEventIdentifier];

  v8 = v10;
  if (v7)
  {
    targetEventIdentifier = self->_targetEventIdentifier;
    PBDataWriterWriteStringField();
    v8 = v10;
  }
}

- (void)setTargetEventIdentifier:(id)a3
{
  v4 = [a3 copy];
  targetEventIdentifier = self->_targetEventIdentifier;
  self->_targetEventIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, targetEventIdentifier);
}

@end