@interface _INPBNote
- (BOOL)isEqual:(id)a3;
- (_INPBNote)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addContent:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setAccountIdentifier:(id)a3;
- (void)setContents:(id)a3;
- (void)setIdentifier:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBNote

- (id)dictionaryRepresentation
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_accountIdentifier)
  {
    v4 = [(_INPBNote *)self accountIdentifier];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"accountIdentifier"];
  }

  if ([(NSArray *)self->_contents count])
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v7 = self->_contents;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v26;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v25 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:v12];
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKeyedSubscript:@"content"];
  }

  v13 = [(_INPBNote *)self createdDateTime];
  v14 = [v13 dictionaryRepresentation];
  [v3 setObject:v14 forKeyedSubscript:@"createdDateTime"];

  v15 = [(_INPBNote *)self groupName];
  v16 = [v15 dictionaryRepresentation];
  [v3 setObject:v16 forKeyedSubscript:@"groupName"];

  if (self->_identifier)
  {
    v17 = [(_INPBNote *)self identifier];
    v18 = [v17 copy];
    [v3 setObject:v18 forKeyedSubscript:@"identifier"];
  }

  v19 = [(_INPBNote *)self modifiedDateTime];
  v20 = [v19 dictionaryRepresentation];
  [v3 setObject:v20 forKeyedSubscript:@"modifiedDateTime"];

  v21 = [(_INPBNote *)self title];
  v22 = [v21 dictionaryRepresentation];
  [v3 setObject:v22 forKeyedSubscript:@"title"];

  v23 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_accountIdentifier hash];
  v4 = [(NSArray *)self->_contents hash]^ v3;
  v5 = [(_INPBDateTime *)self->_createdDateTime hash];
  v6 = v4 ^ v5 ^ [(_INPBDataString *)self->_groupName hash];
  v7 = [(NSString *)self->_identifier hash];
  v8 = v7 ^ [(_INPBDateTime *)self->_modifiedDateTime hash];
  return v6 ^ v8 ^ [(_INPBDataString *)self->_title hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_37;
  }

  v5 = [(_INPBNote *)self accountIdentifier];
  v6 = [v4 accountIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_36;
  }

  v7 = [(_INPBNote *)self accountIdentifier];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBNote *)self accountIdentifier];
    v10 = [v4 accountIdentifier];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v5 = [(_INPBNote *)self contents];
  v6 = [v4 contents];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_36;
  }

  v12 = [(_INPBNote *)self contents];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBNote *)self contents];
    v15 = [v4 contents];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v5 = [(_INPBNote *)self createdDateTime];
  v6 = [v4 createdDateTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_36;
  }

  v17 = [(_INPBNote *)self createdDateTime];
  if (v17)
  {
    v18 = v17;
    v19 = [(_INPBNote *)self createdDateTime];
    v20 = [v4 createdDateTime];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v5 = [(_INPBNote *)self groupName];
  v6 = [v4 groupName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_36;
  }

  v22 = [(_INPBNote *)self groupName];
  if (v22)
  {
    v23 = v22;
    v24 = [(_INPBNote *)self groupName];
    v25 = [v4 groupName];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v5 = [(_INPBNote *)self identifier];
  v6 = [v4 identifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_36;
  }

  v27 = [(_INPBNote *)self identifier];
  if (v27)
  {
    v28 = v27;
    v29 = [(_INPBNote *)self identifier];
    v30 = [v4 identifier];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v5 = [(_INPBNote *)self modifiedDateTime];
  v6 = [v4 modifiedDateTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_36;
  }

  v32 = [(_INPBNote *)self modifiedDateTime];
  if (v32)
  {
    v33 = v32;
    v34 = [(_INPBNote *)self modifiedDateTime];
    v35 = [v4 modifiedDateTime];
    v36 = [v34 isEqual:v35];

    if (!v36)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v5 = [(_INPBNote *)self title];
  v6 = [v4 title];
  if ((v5 != 0) != (v6 == 0))
  {
    v37 = [(_INPBNote *)self title];
    if (!v37)
    {

LABEL_40:
      v42 = 1;
      goto LABEL_38;
    }

    v38 = v37;
    v39 = [(_INPBNote *)self title];
    v40 = [v4 title];
    v41 = [v39 isEqual:v40];

    if (v41)
    {
      goto LABEL_40;
    }
  }

  else
  {
LABEL_36:
  }

LABEL_37:
  v42 = 0;
LABEL_38:

  return v42;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBNote allocWithZone:](_INPBNote init];
  v6 = [(NSString *)self->_accountIdentifier copyWithZone:a3];
  [(_INPBNote *)v5 setAccountIdentifier:v6];

  v7 = [(NSArray *)self->_contents copyWithZone:a3];
  [(_INPBNote *)v5 setContents:v7];

  v8 = [(_INPBDateTime *)self->_createdDateTime copyWithZone:a3];
  [(_INPBNote *)v5 setCreatedDateTime:v8];

  v9 = [(_INPBDataString *)self->_groupName copyWithZone:a3];
  [(_INPBNote *)v5 setGroupName:v9];

  v10 = [(NSString *)self->_identifier copyWithZone:a3];
  [(_INPBNote *)v5 setIdentifier:v10];

  v11 = [(_INPBDateTime *)self->_modifiedDateTime copyWithZone:a3];
  [(_INPBNote *)v5 setModifiedDateTime:v11];

  v12 = [(_INPBDataString *)self->_title copyWithZone:a3];
  [(_INPBNote *)v5 setTitle:v12];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBNote *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBNote)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBNote *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_INPBNote *)self accountIdentifier];

  if (v5)
  {
    accountIdentifier = self->_accountIdentifier;
    PBDataWriterWriteStringField();
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = self->_contents;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      v11 = 0;
      do
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v24 + 1) + 8 * v11);
        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);
  }

  v13 = [(_INPBNote *)self createdDateTime];

  if (v13)
  {
    v14 = [(_INPBNote *)self createdDateTime];
    PBDataWriterWriteSubmessage();
  }

  v15 = [(_INPBNote *)self groupName];

  if (v15)
  {
    v16 = [(_INPBNote *)self groupName];
    PBDataWriterWriteSubmessage();
  }

  v17 = [(_INPBNote *)self identifier];

  if (v17)
  {
    identifier = self->_identifier;
    PBDataWriterWriteStringField();
  }

  v19 = [(_INPBNote *)self modifiedDateTime];

  if (v19)
  {
    v20 = [(_INPBNote *)self modifiedDateTime];
    PBDataWriterWriteSubmessage();
  }

  v21 = [(_INPBNote *)self title];

  if (v21)
  {
    v22 = [(_INPBNote *)self title];
    PBDataWriterWriteSubmessage();
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)setIdentifier:(id)a3
{
  v4 = [a3 copy];
  identifier = self->_identifier;
  self->_identifier = v4;

  MEMORY[0x1EEE66BB8](v4, identifier);
}

- (void)addContent:(id)a3
{
  v4 = a3;
  contents = self->_contents;
  v8 = v4;
  if (!contents)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_contents;
    self->_contents = v6;

    v4 = v8;
    contents = self->_contents;
  }

  [(NSArray *)contents addObject:v4];
}

- (void)setContents:(id)a3
{
  v4 = [a3 mutableCopy];
  contents = self->_contents;
  self->_contents = v4;

  MEMORY[0x1EEE66BB8](v4, contents);
}

- (void)setAccountIdentifier:(id)a3
{
  v4 = [a3 copy];
  accountIdentifier = self->_accountIdentifier;
  self->_accountIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, accountIdentifier);
}

@end