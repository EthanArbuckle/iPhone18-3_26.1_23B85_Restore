@interface _INPBDeleteFilePermanentlyIntentResponse
- (BOOL)isEqual:(id)equal;
- (_INPBDeleteFilePermanentlyIntentResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setHasSuccess:(BOOL)success;
- (void)writeTo:(id)to;
@end

@implementation _INPBDeleteFilePermanentlyIntentResponse

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBDeleteFilePermanentlyIntentResponse *)self hasConfirm])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBDeleteFilePermanentlyIntentResponse confirm](self, "confirm")}];
    [dictionary setObject:v4 forKeyedSubscript:@"confirm"];
  }

  if ([(_INPBDeleteFilePermanentlyIntentResponse *)self hasSuccess])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBDeleteFilePermanentlyIntentResponse success](self, "success")}];
    [dictionary setObject:v5 forKeyedSubscript:@"success"];
  }

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8 = 0;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    hasConfirm = [(_INPBDeleteFilePermanentlyIntentResponse *)self hasConfirm];
    if (hasConfirm == [equalCopy hasConfirm])
    {
      if (!-[_INPBDeleteFilePermanentlyIntentResponse hasConfirm](self, "hasConfirm") || ![equalCopy hasConfirm] || (confirm = self->_confirm, confirm == objc_msgSend(equalCopy, "confirm")))
      {
        hasSuccess = [(_INPBDeleteFilePermanentlyIntentResponse *)self hasSuccess];
        if (hasSuccess == [equalCopy hasSuccess])
        {
          if (!-[_INPBDeleteFilePermanentlyIntentResponse hasSuccess](self, "hasSuccess") || ![equalCopy hasSuccess] || (success = self->_success, success == objc_msgSend(equalCopy, "success")))
          {
            v8 = 1;
          }
        }
      }
    }
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBDeleteFilePermanentlyIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBDeleteFilePermanentlyIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBDeleteFilePermanentlyIntentResponse *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
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

- (void)setHasSuccess:(BOOL)success
{
  if (success)
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