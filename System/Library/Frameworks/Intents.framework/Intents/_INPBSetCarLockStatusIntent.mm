@interface _INPBSetCarLockStatusIntent
- (BOOL)isEqual:(id)a3;
- (_INPBSetCarLockStatusIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBSetCarLockStatusIntent

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBSetCarLockStatusIntent *)self carName];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"carName"];

  v6 = [(_INPBSetCarLockStatusIntent *)self intentMetadata];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"intentMetadata"];

  if ([(_INPBSetCarLockStatusIntent *)self hasLocked])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBSetCarLockStatusIntent locked](self, "locked")}];
    [v3 setObject:v8 forKeyedSubscript:@"locked"];
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_INPBDataString *)self->_carName hash];
  v4 = [(_INPBIntentMetadata *)self->_intentMetadata hash];
  if ([(_INPBSetCarLockStatusIntent *)self hasLocked])
  {
    v5 = 2654435761 * self->_locked;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(_INPBSetCarLockStatusIntent *)self carName];
  v6 = [v4 carName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(_INPBSetCarLockStatusIntent *)self carName];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBSetCarLockStatusIntent *)self carName];
    v10 = [v4 carName];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(_INPBSetCarLockStatusIntent *)self intentMetadata];
  v6 = [v4 intentMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  v12 = [(_INPBSetCarLockStatusIntent *)self intentMetadata];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBSetCarLockStatusIntent *)self intentMetadata];
    v15 = [v4 intentMetadata];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v19 = [(_INPBSetCarLockStatusIntent *)self hasLocked];
  if (v19 == [v4 hasLocked])
  {
    if (!-[_INPBSetCarLockStatusIntent hasLocked](self, "hasLocked") || ![v4 hasLocked] || (locked = self->_locked, locked == objc_msgSend(v4, "locked")))
    {
      v17 = 1;
      goto LABEL_13;
    }
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBSetCarLockStatusIntent allocWithZone:](_INPBSetCarLockStatusIntent init];
  v6 = [(_INPBDataString *)self->_carName copyWithZone:a3];
  [(_INPBSetCarLockStatusIntent *)v5 setCarName:v6];

  v7 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBSetCarLockStatusIntent *)v5 setIntentMetadata:v7];

  if ([(_INPBSetCarLockStatusIntent *)self hasLocked])
  {
    [(_INPBSetCarLockStatusIntent *)v5 setLocked:[(_INPBSetCarLockStatusIntent *)self locked]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBSetCarLockStatusIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBSetCarLockStatusIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBSetCarLockStatusIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
  v4 = [(_INPBSetCarLockStatusIntent *)self carName];

  if (v4)
  {
    v5 = [(_INPBSetCarLockStatusIntent *)self carName];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_INPBSetCarLockStatusIntent *)self intentMetadata];

  if (v6)
  {
    v7 = [(_INPBSetCarLockStatusIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBSetCarLockStatusIntent *)self hasLocked])
  {
    locked = self->_locked;
    PBDataWriterWriteBOOLField();
  }
}

@end