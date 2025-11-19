@interface _INPBEditMessageIntent
- (BOOL)isEqual:(id)a3;
- (_INPBEditMessageIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setEditedContent:(id)a3;
- (void)setMessageIdentifier:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBEditMessageIntent

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_editedContent)
  {
    v4 = [(_INPBEditMessageIntent *)self editedContent];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"editedContent"];
  }

  v6 = [(_INPBEditMessageIntent *)self intentMetadata];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"intentMetadata"];

  if (self->_messageIdentifier)
  {
    v8 = [(_INPBEditMessageIntent *)self messageIdentifier];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"messageIdentifier"];
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_editedContent hash];
  v4 = [(_INPBIntentMetadata *)self->_intentMetadata hash]^ v3;
  return v4 ^ [(NSString *)self->_messageIdentifier hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(_INPBEditMessageIntent *)self editedContent];
  v6 = [v4 editedContent];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(_INPBEditMessageIntent *)self editedContent];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBEditMessageIntent *)self editedContent];
    v10 = [v4 editedContent];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_INPBEditMessageIntent *)self intentMetadata];
  v6 = [v4 intentMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(_INPBEditMessageIntent *)self intentMetadata];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBEditMessageIntent *)self intentMetadata];
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

  v5 = [(_INPBEditMessageIntent *)self messageIdentifier];
  v6 = [v4 messageIdentifier];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(_INPBEditMessageIntent *)self messageIdentifier];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(_INPBEditMessageIntent *)self messageIdentifier];
    v20 = [v4 messageIdentifier];
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
  v5 = [+[_INPBEditMessageIntent allocWithZone:](_INPBEditMessageIntent init];
  v6 = [(NSString *)self->_editedContent copyWithZone:a3];
  [(_INPBEditMessageIntent *)v5 setEditedContent:v6];

  v7 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBEditMessageIntent *)v5 setIntentMetadata:v7];

  v8 = [(NSString *)self->_messageIdentifier copyWithZone:a3];
  [(_INPBEditMessageIntent *)v5 setMessageIdentifier:v8];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBEditMessageIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBEditMessageIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBEditMessageIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v11 = a3;
  v4 = [(_INPBEditMessageIntent *)self editedContent];

  if (v4)
  {
    editedContent = self->_editedContent;
    PBDataWriterWriteStringField();
  }

  v6 = [(_INPBEditMessageIntent *)self intentMetadata];

  if (v6)
  {
    v7 = [(_INPBEditMessageIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(_INPBEditMessageIntent *)self messageIdentifier];

  v9 = v11;
  if (v8)
  {
    messageIdentifier = self->_messageIdentifier;
    PBDataWriterWriteStringField();
    v9 = v11;
  }
}

- (void)setMessageIdentifier:(id)a3
{
  v4 = [a3 copy];
  messageIdentifier = self->_messageIdentifier;
  self->_messageIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, messageIdentifier);
}

- (void)setEditedContent:(id)a3
{
  v4 = [a3 copy];
  editedContent = self->_editedContent;
  self->_editedContent = v4;

  MEMORY[0x1EEE66BB8](v4, editedContent);
}

@end