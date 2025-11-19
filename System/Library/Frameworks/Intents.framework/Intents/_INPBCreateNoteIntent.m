@interface _INPBCreateNoteIntent
- (BOOL)isEqual:(id)a3;
- (_INPBCreateNoteIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBCreateNoteIntent

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBCreateNoteIntent *)self content];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"content"];

  v6 = [(_INPBCreateNoteIntent *)self groupName];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"groupName"];

  v8 = [(_INPBCreateNoteIntent *)self intentMetadata];
  v9 = [v8 dictionaryRepresentation];
  [v3 setObject:v9 forKeyedSubscript:@"intentMetadata"];

  v10 = [(_INPBCreateNoteIntent *)self title];
  v11 = [v10 dictionaryRepresentation];
  [v3 setObject:v11 forKeyedSubscript:@"title"];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_INPBNoteContent *)self->_content hash];
  v4 = [(_INPBDataString *)self->_groupName hash]^ v3;
  v5 = [(_INPBIntentMetadata *)self->_intentMetadata hash];
  return v4 ^ v5 ^ [(_INPBDataString *)self->_title hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  v5 = [(_INPBCreateNoteIntent *)self content];
  v6 = [v4 content];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v7 = [(_INPBCreateNoteIntent *)self content];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBCreateNoteIntent *)self content];
    v10 = [v4 content];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_INPBCreateNoteIntent *)self groupName];
  v6 = [v4 groupName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v12 = [(_INPBCreateNoteIntent *)self groupName];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBCreateNoteIntent *)self groupName];
    v15 = [v4 groupName];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_INPBCreateNoteIntent *)self intentMetadata];
  v6 = [v4 intentMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v17 = [(_INPBCreateNoteIntent *)self intentMetadata];
  if (v17)
  {
    v18 = v17;
    v19 = [(_INPBCreateNoteIntent *)self intentMetadata];
    v20 = [v4 intentMetadata];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_INPBCreateNoteIntent *)self title];
  v6 = [v4 title];
  if ((v5 != 0) != (v6 == 0))
  {
    v22 = [(_INPBCreateNoteIntent *)self title];
    if (!v22)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = v22;
    v24 = [(_INPBCreateNoteIntent *)self title];
    v25 = [v4 title];
    v26 = [v24 isEqual:v25];

    if (v26)
    {
      goto LABEL_25;
    }
  }

  else
  {
LABEL_21:
  }

LABEL_22:
  v27 = 0;
LABEL_23:

  return v27;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBCreateNoteIntent allocWithZone:](_INPBCreateNoteIntent init];
  v6 = [(_INPBNoteContent *)self->_content copyWithZone:a3];
  [(_INPBCreateNoteIntent *)v5 setContent:v6];

  v7 = [(_INPBDataString *)self->_groupName copyWithZone:a3];
  [(_INPBCreateNoteIntent *)v5 setGroupName:v7];

  v8 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBCreateNoteIntent *)v5 setIntentMetadata:v8];

  v9 = [(_INPBDataString *)self->_title copyWithZone:a3];
  [(_INPBCreateNoteIntent *)v5 setTitle:v9];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBCreateNoteIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBCreateNoteIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBCreateNoteIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v13 = a3;
  v4 = [(_INPBCreateNoteIntent *)self content];

  if (v4)
  {
    v5 = [(_INPBCreateNoteIntent *)self content];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_INPBCreateNoteIntent *)self groupName];

  if (v6)
  {
    v7 = [(_INPBCreateNoteIntent *)self groupName];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(_INPBCreateNoteIntent *)self intentMetadata];

  if (v8)
  {
    v9 = [(_INPBCreateNoteIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(_INPBCreateNoteIntent *)self title];

  v11 = v13;
  if (v10)
  {
    v12 = [(_INPBCreateNoteIntent *)self title];
    PBDataWriterWriteSubmessage();

    v11 = v13;
  }
}

@end