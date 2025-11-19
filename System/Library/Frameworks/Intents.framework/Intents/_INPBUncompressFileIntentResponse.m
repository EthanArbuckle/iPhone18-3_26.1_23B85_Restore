@interface _INPBUncompressFileIntentResponse
- (BOOL)isEqual:(id)a3;
- (_INPBUncompressFileIntentResponse)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBUncompressFileIntentResponse

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBUncompressFileIntentResponse *)self entityName];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"entityName"];

  if ([(_INPBUncompressFileIntentResponse *)self hasSuccess])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBUncompressFileIntentResponse success](self, "success")}];
    [v3 setObject:v6 forKeyedSubscript:@"success"];
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_INPBString *)self->_entityName hash];
  if ([(_INPBUncompressFileIntentResponse *)self hasSuccess])
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
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = [(_INPBUncompressFileIntentResponse *)self entityName];
  v6 = [v4 entityName];
  v7 = v6;
  if ((v5 != 0) != (v6 == 0))
  {
    v8 = [(_INPBUncompressFileIntentResponse *)self entityName];
    if (v8)
    {
      v9 = v8;
      v10 = [(_INPBUncompressFileIntentResponse *)self entityName];
      v11 = [v4 entityName];
      v12 = [v10 isEqual:v11];

      if (!v12)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    v13 = [(_INPBUncompressFileIntentResponse *)self hasSuccess];
    if (v13 == [v4 hasSuccess])
    {
      if (!-[_INPBUncompressFileIntentResponse hasSuccess](self, "hasSuccess") || ![v4 hasSuccess] || (success = self->_success, success == objc_msgSend(v4, "success")))
      {
        v14 = 1;
        goto LABEL_10;
      }
    }
  }

  else
  {
  }

LABEL_9:
  v14 = 0;
LABEL_10:

  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBUncompressFileIntentResponse allocWithZone:](_INPBUncompressFileIntentResponse init];
  v6 = [(_INPBString *)self->_entityName copyWithZone:a3];
  [(_INPBUncompressFileIntentResponse *)v5 setEntityName:v6];

  if ([(_INPBUncompressFileIntentResponse *)self hasSuccess])
  {
    [(_INPBUncompressFileIntentResponse *)v5 setSuccess:[(_INPBUncompressFileIntentResponse *)self success]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBUncompressFileIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBUncompressFileIntentResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBUncompressFileIntentResponse *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v7 = a3;
  v4 = [(_INPBUncompressFileIntentResponse *)self entityName];

  if (v4)
  {
    v5 = [(_INPBUncompressFileIntentResponse *)self entityName];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBUncompressFileIntentResponse *)self hasSuccess])
  {
    success = self->_success;
    PBDataWriterWriteBOOLField();
  }
}

@end