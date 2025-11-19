@interface _INPBDeleteTimerIntent
- (BOOL)isEqual:(id)a3;
- (_INPBDeleteTimerIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBDeleteTimerIntent

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBDeleteTimerIntent *)self hasDeleteMultiple])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBDeleteTimerIntent deleteMultiple](self, "deleteMultiple")}];
    [v3 setObject:v4 forKeyedSubscript:@"deleteMultiple"];
  }

  v5 = [(_INPBDeleteTimerIntent *)self intentMetadata];
  v6 = [v5 dictionaryRepresentation];
  [v3 setObject:v6 forKeyedSubscript:@"intentMetadata"];

  v7 = [(_INPBDeleteTimerIntent *)self targetTimer];
  v8 = [v7 dictionaryRepresentation];
  [v3 setObject:v8 forKeyedSubscript:@"targetTimer"];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  v5 = [(_INPBDeleteTimerIntent *)self hasDeleteMultiple];
  if (v5 != [v4 hasDeleteMultiple])
  {
    goto LABEL_16;
  }

  if ([(_INPBDeleteTimerIntent *)self hasDeleteMultiple])
  {
    if ([v4 hasDeleteMultiple])
    {
      deleteMultiple = self->_deleteMultiple;
      if (deleteMultiple != [v4 deleteMultiple])
      {
        goto LABEL_16;
      }
    }
  }

  v7 = [(_INPBDeleteTimerIntent *)self intentMetadata];
  v8 = [v4 intentMetadata];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_15;
  }

  v9 = [(_INPBDeleteTimerIntent *)self intentMetadata];
  if (v9)
  {
    v10 = v9;
    v11 = [(_INPBDeleteTimerIntent *)self intentMetadata];
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

  v7 = [(_INPBDeleteTimerIntent *)self targetTimer];
  v8 = [v4 targetTimer];
  if ((v7 != 0) != (v8 == 0))
  {
    v14 = [(_INPBDeleteTimerIntent *)self targetTimer];
    if (!v14)
    {

LABEL_19:
      v19 = 1;
      goto LABEL_17;
    }

    v15 = v14;
    v16 = [(_INPBDeleteTimerIntent *)self targetTimer];
    v17 = [v4 targetTimer];
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
  v5 = [+[_INPBDeleteTimerIntent allocWithZone:](_INPBDeleteTimerIntent init];
  if ([(_INPBDeleteTimerIntent *)self hasDeleteMultiple])
  {
    [(_INPBDeleteTimerIntent *)v5 setDeleteMultiple:[(_INPBDeleteTimerIntent *)self deleteMultiple]];
  }

  v6 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBDeleteTimerIntent *)v5 setIntentMetadata:v6];

  v7 = [(_INPBTimer *)self->_targetTimer copyWithZone:a3];
  [(_INPBDeleteTimerIntent *)v5 setTargetTimer:v7];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBDeleteTimerIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBDeleteTimerIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBDeleteTimerIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v10 = a3;
  if ([(_INPBDeleteTimerIntent *)self hasDeleteMultiple])
  {
    deleteMultiple = self->_deleteMultiple;
    PBDataWriterWriteBOOLField();
  }

  v5 = [(_INPBDeleteTimerIntent *)self intentMetadata];

  if (v5)
  {
    v6 = [(_INPBDeleteTimerIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(_INPBDeleteTimerIntent *)self targetTimer];

  v8 = v10;
  if (v7)
  {
    v9 = [(_INPBDeleteTimerIntent *)self targetTimer];
    PBDataWriterWriteSubmessage();

    v8 = v10;
  }
}

@end