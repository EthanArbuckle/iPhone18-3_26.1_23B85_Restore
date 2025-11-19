@interface _INPBCreateNoteIntentResponse
- (BOOL)isEqual:(id)a3;
- (_INPBCreateNoteIntentResponse)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBCreateNoteIntentResponse

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBCreateNoteIntentResponse *)self createdNote];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"createdNote"];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(_INPBCreateNoteIntentResponse *)self createdNote];
    v6 = [v4 createdNote];
    v7 = v6;
    if ((v5 != 0) != (v6 == 0))
    {
      v8 = [(_INPBCreateNoteIntentResponse *)self createdNote];
      if (!v8)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = v8;
      v10 = [(_INPBCreateNoteIntentResponse *)self createdNote];
      v11 = [v4 createdNote];
      v12 = [v10 isEqual:v11];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBCreateNoteIntentResponse allocWithZone:](_INPBCreateNoteIntentResponse init];
  v6 = [(_INPBNote *)self->_createdNote copyWithZone:a3];
  [(_INPBCreateNoteIntentResponse *)v5 setCreatedNote:v6];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBCreateNoteIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBCreateNoteIntentResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBCreateNoteIntentResponse *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
  v4 = [(_INPBCreateNoteIntentResponse *)self createdNote];

  if (v4)
  {
    v5 = [(_INPBCreateNoteIntentResponse *)self createdNote];
    PBDataWriterWriteSubmessage();
  }
}

@end