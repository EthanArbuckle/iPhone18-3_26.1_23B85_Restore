@interface _INPBNote
- (BOOL)isEqual:(id)equal;
- (_INPBNote)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addContent:(id)content;
- (void)encodeWithCoder:(id)coder;
- (void)setAccountIdentifier:(id)identifier;
- (void)setContents:(id)contents;
- (void)setIdentifier:(id)identifier;
- (void)writeTo:(id)to;
@end

@implementation _INPBNote

- (id)dictionaryRepresentation
{
  v30 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_accountIdentifier)
  {
    accountIdentifier = [(_INPBNote *)self accountIdentifier];
    v5 = [accountIdentifier copy];
    [dictionary setObject:v5 forKeyedSubscript:@"accountIdentifier"];
  }

  if ([(NSArray *)self->_contents count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation = [*(*(&v25 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation];
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v9);
    }

    [dictionary setObject:array forKeyedSubscript:@"content"];
  }

  createdDateTime = [(_INPBNote *)self createdDateTime];
  dictionaryRepresentation2 = [createdDateTime dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"createdDateTime"];

  groupName = [(_INPBNote *)self groupName];
  dictionaryRepresentation3 = [groupName dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"groupName"];

  if (self->_identifier)
  {
    identifier = [(_INPBNote *)self identifier];
    v18 = [identifier copy];
    [dictionary setObject:v18 forKeyedSubscript:@"identifier"];
  }

  modifiedDateTime = [(_INPBNote *)self modifiedDateTime];
  dictionaryRepresentation4 = [modifiedDateTime dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"modifiedDateTime"];

  title = [(_INPBNote *)self title];
  dictionaryRepresentation5 = [title dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"title"];

  v23 = *MEMORY[0x1E69E9840];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_37;
  }

  accountIdentifier = [(_INPBNote *)self accountIdentifier];
  accountIdentifier2 = [equalCopy accountIdentifier];
  if ((accountIdentifier != 0) == (accountIdentifier2 == 0))
  {
    goto LABEL_36;
  }

  accountIdentifier3 = [(_INPBNote *)self accountIdentifier];
  if (accountIdentifier3)
  {
    v8 = accountIdentifier3;
    accountIdentifier4 = [(_INPBNote *)self accountIdentifier];
    accountIdentifier5 = [equalCopy accountIdentifier];
    v11 = [accountIdentifier4 isEqual:accountIdentifier5];

    if (!v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  accountIdentifier = [(_INPBNote *)self contents];
  accountIdentifier2 = [equalCopy contents];
  if ((accountIdentifier != 0) == (accountIdentifier2 == 0))
  {
    goto LABEL_36;
  }

  contents = [(_INPBNote *)self contents];
  if (contents)
  {
    v13 = contents;
    contents2 = [(_INPBNote *)self contents];
    contents3 = [equalCopy contents];
    v16 = [contents2 isEqual:contents3];

    if (!v16)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  accountIdentifier = [(_INPBNote *)self createdDateTime];
  accountIdentifier2 = [equalCopy createdDateTime];
  if ((accountIdentifier != 0) == (accountIdentifier2 == 0))
  {
    goto LABEL_36;
  }

  createdDateTime = [(_INPBNote *)self createdDateTime];
  if (createdDateTime)
  {
    v18 = createdDateTime;
    createdDateTime2 = [(_INPBNote *)self createdDateTime];
    createdDateTime3 = [equalCopy createdDateTime];
    v21 = [createdDateTime2 isEqual:createdDateTime3];

    if (!v21)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  accountIdentifier = [(_INPBNote *)self groupName];
  accountIdentifier2 = [equalCopy groupName];
  if ((accountIdentifier != 0) == (accountIdentifier2 == 0))
  {
    goto LABEL_36;
  }

  groupName = [(_INPBNote *)self groupName];
  if (groupName)
  {
    v23 = groupName;
    groupName2 = [(_INPBNote *)self groupName];
    groupName3 = [equalCopy groupName];
    v26 = [groupName2 isEqual:groupName3];

    if (!v26)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  accountIdentifier = [(_INPBNote *)self identifier];
  accountIdentifier2 = [equalCopy identifier];
  if ((accountIdentifier != 0) == (accountIdentifier2 == 0))
  {
    goto LABEL_36;
  }

  identifier = [(_INPBNote *)self identifier];
  if (identifier)
  {
    v28 = identifier;
    identifier2 = [(_INPBNote *)self identifier];
    identifier3 = [equalCopy identifier];
    v31 = [identifier2 isEqual:identifier3];

    if (!v31)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  accountIdentifier = [(_INPBNote *)self modifiedDateTime];
  accountIdentifier2 = [equalCopy modifiedDateTime];
  if ((accountIdentifier != 0) == (accountIdentifier2 == 0))
  {
    goto LABEL_36;
  }

  modifiedDateTime = [(_INPBNote *)self modifiedDateTime];
  if (modifiedDateTime)
  {
    v33 = modifiedDateTime;
    modifiedDateTime2 = [(_INPBNote *)self modifiedDateTime];
    modifiedDateTime3 = [equalCopy modifiedDateTime];
    v36 = [modifiedDateTime2 isEqual:modifiedDateTime3];

    if (!v36)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  accountIdentifier = [(_INPBNote *)self title];
  accountIdentifier2 = [equalCopy title];
  if ((accountIdentifier != 0) != (accountIdentifier2 == 0))
  {
    title = [(_INPBNote *)self title];
    if (!title)
    {

LABEL_40:
      v42 = 1;
      goto LABEL_38;
    }

    v38 = title;
    title2 = [(_INPBNote *)self title];
    title3 = [equalCopy title];
    v41 = [title2 isEqual:title3];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBNote allocWithZone:](_INPBNote init];
  v6 = [(NSString *)self->_accountIdentifier copyWithZone:zone];
  [(_INPBNote *)v5 setAccountIdentifier:v6];

  v7 = [(NSArray *)self->_contents copyWithZone:zone];
  [(_INPBNote *)v5 setContents:v7];

  v8 = [(_INPBDateTime *)self->_createdDateTime copyWithZone:zone];
  [(_INPBNote *)v5 setCreatedDateTime:v8];

  v9 = [(_INPBDataString *)self->_groupName copyWithZone:zone];
  [(_INPBNote *)v5 setGroupName:v9];

  v10 = [(NSString *)self->_identifier copyWithZone:zone];
  [(_INPBNote *)v5 setIdentifier:v10];

  v11 = [(_INPBDateTime *)self->_modifiedDateTime copyWithZone:zone];
  [(_INPBNote *)v5 setModifiedDateTime:v11];

  v12 = [(_INPBDataString *)self->_title copyWithZone:zone];
  [(_INPBNote *)v5 setTitle:v12];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBNote *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBNote)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBNote *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v29 = *MEMORY[0x1E69E9840];
  toCopy = to;
  accountIdentifier = [(_INPBNote *)self accountIdentifier];

  if (accountIdentifier)
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

  createdDateTime = [(_INPBNote *)self createdDateTime];

  if (createdDateTime)
  {
    createdDateTime2 = [(_INPBNote *)self createdDateTime];
    PBDataWriterWriteSubmessage();
  }

  groupName = [(_INPBNote *)self groupName];

  if (groupName)
  {
    groupName2 = [(_INPBNote *)self groupName];
    PBDataWriterWriteSubmessage();
  }

  identifier = [(_INPBNote *)self identifier];

  if (identifier)
  {
    identifier = self->_identifier;
    PBDataWriterWriteStringField();
  }

  modifiedDateTime = [(_INPBNote *)self modifiedDateTime];

  if (modifiedDateTime)
  {
    modifiedDateTime2 = [(_INPBNote *)self modifiedDateTime];
    PBDataWriterWriteSubmessage();
  }

  title = [(_INPBNote *)self title];

  if (title)
  {
    title2 = [(_INPBNote *)self title];
    PBDataWriterWriteSubmessage();
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)setIdentifier:(id)identifier
{
  v4 = [identifier copy];
  identifier = self->_identifier;
  self->_identifier = v4;

  MEMORY[0x1EEE66BB8](v4, identifier);
}

- (void)addContent:(id)content
{
  contentCopy = content;
  contents = self->_contents;
  v8 = contentCopy;
  if (!contents)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_contents;
    self->_contents = array;

    contentCopy = v8;
    contents = self->_contents;
  }

  [(NSArray *)contents addObject:contentCopy];
}

- (void)setContents:(id)contents
{
  v4 = [contents mutableCopy];
  contents = self->_contents;
  self->_contents = v4;

  MEMORY[0x1EEE66BB8](v4, contents);
}

- (void)setAccountIdentifier:(id)identifier
{
  v4 = [identifier copy];
  accountIdentifier = self->_accountIdentifier;
  self->_accountIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, accountIdentifier);
}

@end