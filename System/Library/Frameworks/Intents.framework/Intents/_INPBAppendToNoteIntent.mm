@interface _INPBAppendToNoteIntent
- (BOOL)isEqual:(id)a3;
- (_INPBAppendToNoteIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBAppendToNoteIntent

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBAppendToNoteIntent *)self content];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"content"];

  v6 = [(_INPBAppendToNoteIntent *)self intentMetadata];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"intentMetadata"];

  v8 = [(_INPBAppendToNoteIntent *)self targetNote];
  v9 = [v8 dictionaryRepresentation];
  [v3 setObject:v9 forKeyedSubscript:@"targetNote"];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_INPBNoteContent *)self->_content hash];
  v4 = [(_INPBIntentMetadata *)self->_intentMetadata hash]^ v3;
  return v4 ^ [(_INPBNote *)self->_targetNote hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(_INPBAppendToNoteIntent *)self content];
  v6 = [v4 content];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(_INPBAppendToNoteIntent *)self content];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBAppendToNoteIntent *)self content];
    v10 = [v4 content];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_INPBAppendToNoteIntent *)self intentMetadata];
  v6 = [v4 intentMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(_INPBAppendToNoteIntent *)self intentMetadata];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBAppendToNoteIntent *)self intentMetadata];
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

  v5 = [(_INPBAppendToNoteIntent *)self targetNote];
  v6 = [v4 targetNote];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(_INPBAppendToNoteIntent *)self targetNote];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(_INPBAppendToNoteIntent *)self targetNote];
    v20 = [v4 targetNote];
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
  v5 = [+[_INPBAppendToNoteIntent allocWithZone:](_INPBAppendToNoteIntent init];
  v6 = [(_INPBNoteContent *)self->_content copyWithZone:a3];
  [(_INPBAppendToNoteIntent *)v5 setContent:v6];

  v7 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBAppendToNoteIntent *)v5 setIntentMetadata:v7];

  v8 = [(_INPBNote *)self->_targetNote copyWithZone:a3];
  [(_INPBAppendToNoteIntent *)v5 setTargetNote:v8];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBAppendToNoteIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBAppendToNoteIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBAppendToNoteIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v11 = a3;
  v4 = [(_INPBAppendToNoteIntent *)self content];

  if (v4)
  {
    v5 = [(_INPBAppendToNoteIntent *)self content];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_INPBAppendToNoteIntent *)self intentMetadata];

  if (v6)
  {
    v7 = [(_INPBAppendToNoteIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(_INPBAppendToNoteIntent *)self targetNote];

  v9 = v11;
  if (v8)
  {
    v10 = [(_INPBAppendToNoteIntent *)self targetNote];
    PBDataWriterWriteSubmessage();

    v9 = v11;
  }
}

@end