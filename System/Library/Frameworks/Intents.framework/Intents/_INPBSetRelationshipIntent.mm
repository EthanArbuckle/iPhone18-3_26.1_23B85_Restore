@interface _INPBSetRelationshipIntent
- (BOOL)isEqual:(id)a3;
- (_INPBSetRelationshipIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addContactIdentifiers:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setContactIdentifiers:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBSetRelationshipIntent

- (id)dictionaryRepresentation
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_contactIdentifiers count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = self->_contactIdentifiers;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:v10];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"contactIdentifiers"];
  }

  v11 = [(_INPBSetRelationshipIntent *)self intentMetadata];
  v12 = [v11 dictionaryRepresentation];
  [v3 setObject:v12 forKeyedSubscript:@"intentMetadata"];

  v13 = [(_INPBSetRelationshipIntent *)self targetRelationship];
  v14 = [v13 dictionaryRepresentation];
  [v3 setObject:v14 forKeyedSubscript:@"targetRelationship"];

  v15 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_contactIdentifiers hash];
  v4 = [(_INPBIntentMetadata *)self->_intentMetadata hash]^ v3;
  return v4 ^ [(_INPBModifyRelationship *)self->_targetRelationship hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(_INPBSetRelationshipIntent *)self contactIdentifiers];
  v6 = [v4 contactIdentifiers];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(_INPBSetRelationshipIntent *)self contactIdentifiers];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBSetRelationshipIntent *)self contactIdentifiers];
    v10 = [v4 contactIdentifiers];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_INPBSetRelationshipIntent *)self intentMetadata];
  v6 = [v4 intentMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(_INPBSetRelationshipIntent *)self intentMetadata];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBSetRelationshipIntent *)self intentMetadata];
    v15 = [v4 intentMetadata];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_INPBSetRelationshipIntent *)self targetRelationship];
  v6 = [v4 targetRelationship];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(_INPBSetRelationshipIntent *)self targetRelationship];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(_INPBSetRelationshipIntent *)self targetRelationship];
    v20 = [v4 targetRelationship];
    v21 = [v19 isEqual:v20];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBSetRelationshipIntent allocWithZone:](_INPBSetRelationshipIntent init];
  v6 = [(NSArray *)self->_contactIdentifiers copyWithZone:a3];
  [(_INPBSetRelationshipIntent *)v5 setContactIdentifiers:v6];

  v7 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBSetRelationshipIntent *)v5 setIntentMetadata:v7];

  v8 = [(_INPBModifyRelationship *)self->_targetRelationship copyWithZone:a3];
  [(_INPBSetRelationshipIntent *)v5 setTargetRelationship:v8];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBSetRelationshipIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBSetRelationshipIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBSetRelationshipIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->_contactIdentifiers;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v11 = [(_INPBSetRelationshipIntent *)self intentMetadata];

  if (v11)
  {
    v12 = [(_INPBSetRelationshipIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  v13 = [(_INPBSetRelationshipIntent *)self targetRelationship];

  if (v13)
  {
    v14 = [(_INPBSetRelationshipIntent *)self targetRelationship];
    PBDataWriterWriteSubmessage();
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)addContactIdentifiers:(id)a3
{
  v4 = a3;
  contactIdentifiers = self->_contactIdentifiers;
  v8 = v4;
  if (!contactIdentifiers)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_contactIdentifiers;
    self->_contactIdentifiers = v6;

    v4 = v8;
    contactIdentifiers = self->_contactIdentifiers;
  }

  [(NSArray *)contactIdentifiers addObject:v4];
}

- (void)setContactIdentifiers:(id)a3
{
  v4 = [a3 mutableCopy];
  contactIdentifiers = self->_contactIdentifiers;
  self->_contactIdentifiers = v4;

  MEMORY[0x1EEE66BB8](v4, contactIdentifiers);
}

@end