@interface _INPBDeleteFilePermanentlyIntentResponse
- (BOOL)isEqual:(id)a3;
- (_INPBDeleteFilePermanentlyIntentResponse)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setHasSuccess:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBDeleteFilePermanentlyIntentResponse

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBDeleteFilePermanentlyIntentResponse *)self hasConfirm])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBDeleteFilePermanentlyIntentResponse confirm](self, "confirm")}];
    [v3 setObject:v4 forKeyedSubscript:@"confirm"];
  }

  if ([(_INPBDeleteFilePermanentlyIntentResponse *)self hasSuccess])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBDeleteFilePermanentlyIntentResponse success](self, "success")}];
    [v3 setObject:v5 forKeyedSubscript:@"success"];
  }

  return v3;
}

- (unint64_t)hash
{
  if ([(_INPBDeleteFilePermanentlyIntentResponse *)self hasConfirm])
  {
    v3 = 2654435761 * self->_confirm;
  }

  else
  {
    v3 = 0;
  }

  if ([(_INPBDeleteFilePermanentlyIntentResponse *)self hasSuccess])
  {
    v4 = 2654435761 * self->_success;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8 = 0;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(_INPBDeleteFilePermanentlyIntentResponse *)self hasConfirm];
    if (v5 == [v4 hasConfirm])
    {
      if (!-[_INPBDeleteFilePermanentlyIntentResponse hasConfirm](self, "hasConfirm") || ![v4 hasConfirm] || (confirm = self->_confirm, confirm == objc_msgSend(v4, "confirm")))
      {
        v7 = [(_INPBDeleteFilePermanentlyIntentResponse *)self hasSuccess];
        if (v7 == [v4 hasSuccess])
        {
          if (!-[_INPBDeleteFilePermanentlyIntentResponse hasSuccess](self, "hasSuccess") || ![v4 hasSuccess] || (success = self->_success, success == objc_msgSend(v4, "success")))
          {
            v8 = 1;
          }
        }
      }
    }
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[_INPBDeleteFilePermanentlyIntentResponse allocWithZone:?]];
  if ([(_INPBDeleteFilePermanentlyIntentResponse *)self hasConfirm])
  {
    [(_INPBDeleteFilePermanentlyIntentResponse *)v4 setConfirm:[(_INPBDeleteFilePermanentlyIntentResponse *)self confirm]];
  }

  if ([(_INPBDeleteFilePermanentlyIntentResponse *)self hasSuccess])
  {
    [(_INPBDeleteFilePermanentlyIntentResponse *)v4 setSuccess:[(_INPBDeleteFilePermanentlyIntentResponse *)self success]];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBDeleteFilePermanentlyIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBDeleteFilePermanentlyIntentResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBDeleteFilePermanentlyIntentResponse *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
  if ([(_INPBDeleteFilePermanentlyIntentResponse *)self hasConfirm])
  {
    confirm = self->_confirm;
    PBDataWriterWriteBOOLField();
  }

  if ([(_INPBDeleteFilePermanentlyIntentResponse *)self hasSuccess])
  {
    success = self->_success;
    PBDataWriterWriteBOOLField();
  }
}

- (void)setHasSuccess:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

@end