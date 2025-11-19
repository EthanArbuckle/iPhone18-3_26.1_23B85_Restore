@interface _INPBSetMessageAttributeIntent
- (BOOL)isEqual:(id)a3;
- (_INPBSetMessageAttributeIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsAttribute:(id)a3;
- (unint64_t)hash;
- (void)addIdentifier:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setAttribute:(int)a3;
- (void)setIdentifiers:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBSetMessageAttributeIntent

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBSetMessageAttributeIntent *)self hasAttribute])
  {
    v4 = [(_INPBSetMessageAttributeIntent *)self attribute];
    if ((v4 - 1) >= 5)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v4];
    }

    else
    {
      v5 = off_1E7283DE0[(v4 - 1)];
    }

    [v3 setObject:v5 forKeyedSubscript:@"attribute"];
  }

  if (self->_identifiers)
  {
    v6 = [(_INPBSetMessageAttributeIntent *)self identifiers];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"identifier"];
  }

  v8 = [(_INPBSetMessageAttributeIntent *)self intentMetadata];
  v9 = [v8 dictionaryRepresentation];
  [v3 setObject:v9 forKeyedSubscript:@"intentMetadata"];

  return v3;
}

- (unint64_t)hash
{
  if ([(_INPBSetMessageAttributeIntent *)self hasAttribute])
  {
    v3 = 2654435761 * self->_attribute;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSArray *)self->_identifiers hash]^ v3;
  return v4 ^ [(_INPBIntentMetadata *)self->_intentMetadata hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  v5 = [(_INPBSetMessageAttributeIntent *)self hasAttribute];
  if (v5 != [v4 hasAttribute])
  {
    goto LABEL_16;
  }

  if ([(_INPBSetMessageAttributeIntent *)self hasAttribute])
  {
    if ([v4 hasAttribute])
    {
      attribute = self->_attribute;
      if (attribute != [v4 attribute])
      {
        goto LABEL_16;
      }
    }
  }

  v7 = [(_INPBSetMessageAttributeIntent *)self identifiers];
  v8 = [v4 identifiers];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_15;
  }

  v9 = [(_INPBSetMessageAttributeIntent *)self identifiers];
  if (v9)
  {
    v10 = v9;
    v11 = [(_INPBSetMessageAttributeIntent *)self identifiers];
    v12 = [v4 identifiers];
    v13 = [v11 isEqual:v12];

    if (!v13)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  v7 = [(_INPBSetMessageAttributeIntent *)self intentMetadata];
  v8 = [v4 intentMetadata];
  if ((v7 != 0) != (v8 == 0))
  {
    v14 = [(_INPBSetMessageAttributeIntent *)self intentMetadata];
    if (!v14)
    {

LABEL_19:
      v19 = 1;
      goto LABEL_17;
    }

    v15 = v14;
    v16 = [(_INPBSetMessageAttributeIntent *)self intentMetadata];
    v17 = [v4 intentMetadata];
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
  v5 = [+[_INPBSetMessageAttributeIntent allocWithZone:](_INPBSetMessageAttributeIntent init];
  if ([(_INPBSetMessageAttributeIntent *)self hasAttribute])
  {
    [(_INPBSetMessageAttributeIntent *)v5 setAttribute:[(_INPBSetMessageAttributeIntent *)self attribute]];
  }

  v6 = [(NSArray *)self->_identifiers copyWithZone:a3];
  [(_INPBSetMessageAttributeIntent *)v5 setIdentifiers:v6];

  v7 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBSetMessageAttributeIntent *)v5 setIntentMetadata:v7];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBSetMessageAttributeIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBSetMessageAttributeIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBSetMessageAttributeIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(_INPBSetMessageAttributeIntent *)self hasAttribute])
  {
    attribute = self->_attribute;
    PBDataWriterWriteInt32Field();
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_identifiers;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        PBDataWriterWriteStringField();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [(_INPBSetMessageAttributeIntent *)self intentMetadata];

  if (v12)
  {
    v13 = [(_INPBSetMessageAttributeIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)addIdentifier:(id)a3
{
  v4 = a3;
  identifiers = self->_identifiers;
  v8 = v4;
  if (!identifiers)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_identifiers;
    self->_identifiers = v6;

    v4 = v8;
    identifiers = self->_identifiers;
  }

  [(NSArray *)identifiers addObject:v4];
}

- (void)setIdentifiers:(id)a3
{
  v4 = [a3 mutableCopy];
  identifiers = self->_identifiers;
  self->_identifiers = v4;

  MEMORY[0x1EEE66BB8](v4, identifiers);
}

- (int)StringAsAttribute:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"READ"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"UNREAD"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"FLAGGED"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"UNFLAGGED"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"PLAYED"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setAttribute:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_attribute = a3;
  }
}

@end