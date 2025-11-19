@interface _INPBNoteContent
- (BOOL)isEqual:(id)a3;
- (_INPBNoteContent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsType:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setType:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBNoteContent

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBNoteContent *)self image];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"image"];

  v6 = [(_INPBNoteContent *)self text];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"text"];

  if ([(_INPBNoteContent *)self hasType])
  {
    v8 = [(_INPBNoteContent *)self type];
    if (v8 >= 3)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v8];
    }

    else
    {
      v9 = off_1E7283FE8[v8];
    }

    [v3 setObject:v9 forKeyedSubscript:@"type"];
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_INPBImageNoteContent *)self->_image hash];
  v4 = [(_INPBTextNoteContent *)self->_text hash];
  if ([(_INPBNoteContent *)self hasType])
  {
    v5 = 2654435761 * self->_type;
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

  v5 = [(_INPBNoteContent *)self image];
  v6 = [v4 image];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(_INPBNoteContent *)self image];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBNoteContent *)self image];
    v10 = [v4 image];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(_INPBNoteContent *)self text];
  v6 = [v4 text];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  v12 = [(_INPBNoteContent *)self text];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBNoteContent *)self text];
    v15 = [v4 text];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v19 = [(_INPBNoteContent *)self hasType];
  if (v19 == [v4 hasType])
  {
    if (!-[_INPBNoteContent hasType](self, "hasType") || ![v4 hasType] || (type = self->_type, type == objc_msgSend(v4, "type")))
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
  v5 = [+[_INPBNoteContent allocWithZone:](_INPBNoteContent init];
  v6 = [(_INPBImageNoteContent *)self->_image copyWithZone:a3];
  [(_INPBNoteContent *)v5 setImage:v6];

  v7 = [(_INPBTextNoteContent *)self->_text copyWithZone:a3];
  [(_INPBNoteContent *)v5 setText:v7];

  if ([(_INPBNoteContent *)self hasType])
  {
    [(_INPBNoteContent *)v5 setType:[(_INPBNoteContent *)self type]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBNoteContent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBNoteContent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBNoteContent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
  v4 = [(_INPBNoteContent *)self image];

  if (v4)
  {
    v5 = [(_INPBNoteContent *)self image];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_INPBNoteContent *)self text];

  if (v6)
  {
    v7 = [(_INPBNoteContent *)self text];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBNoteContent *)self hasType])
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
  }
}

- (int)StringAsType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN_NOTE_CONTENT_TYPE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"TEXT"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"IMAGE"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setType:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_type = a3;
  }
}

@end