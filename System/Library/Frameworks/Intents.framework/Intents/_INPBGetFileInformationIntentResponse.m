@interface _INPBGetFileInformationIntentResponse
- (BOOL)isEqual:(id)a3;
- (_INPBGetFileInformationIntentResponse)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBGetFileInformationIntentResponse

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBGetFileInformationIntentResponse *)self entityName];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"entityName"];

  v6 = [(_INPBGetFileInformationIntentResponse *)self property];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"property"];

  if ([(_INPBGetFileInformationIntentResponse *)self hasSuccess])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBGetFileInformationIntentResponse success](self, "success")}];
    [v3 setObject:v8 forKeyedSubscript:@"success"];
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_INPBString *)self->_entityName hash];
  v4 = [(_INPBFileProperty *)self->_property hash];
  if ([(_INPBGetFileInformationIntentResponse *)self hasSuccess])
  {
    v5 = 2654435761 * self->_success;
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

  v5 = [(_INPBGetFileInformationIntentResponse *)self entityName];
  v6 = [v4 entityName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(_INPBGetFileInformationIntentResponse *)self entityName];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBGetFileInformationIntentResponse *)self entityName];
    v10 = [v4 entityName];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(_INPBGetFileInformationIntentResponse *)self property];
  v6 = [v4 property];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  v12 = [(_INPBGetFileInformationIntentResponse *)self property];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBGetFileInformationIntentResponse *)self property];
    v15 = [v4 property];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v19 = [(_INPBGetFileInformationIntentResponse *)self hasSuccess];
  if (v19 == [v4 hasSuccess])
  {
    if (!-[_INPBGetFileInformationIntentResponse hasSuccess](self, "hasSuccess") || ![v4 hasSuccess] || (success = self->_success, success == objc_msgSend(v4, "success")))
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
  v5 = [+[_INPBGetFileInformationIntentResponse allocWithZone:](_INPBGetFileInformationIntentResponse init];
  v6 = [(_INPBString *)self->_entityName copyWithZone:a3];
  [(_INPBGetFileInformationIntentResponse *)v5 setEntityName:v6];

  v7 = [(_INPBFileProperty *)self->_property copyWithZone:a3];
  [(_INPBGetFileInformationIntentResponse *)v5 setProperty:v7];

  if ([(_INPBGetFileInformationIntentResponse *)self hasSuccess])
  {
    [(_INPBGetFileInformationIntentResponse *)v5 setSuccess:[(_INPBGetFileInformationIntentResponse *)self success]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBGetFileInformationIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBGetFileInformationIntentResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBGetFileInformationIntentResponse *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
  v4 = [(_INPBGetFileInformationIntentResponse *)self entityName];

  if (v4)
  {
    v5 = [(_INPBGetFileInformationIntentResponse *)self entityName];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_INPBGetFileInformationIntentResponse *)self property];

  if (v6)
  {
    v7 = [(_INPBGetFileInformationIntentResponse *)self property];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBGetFileInformationIntentResponse *)self hasSuccess])
  {
    success = self->_success;
    PBDataWriterWriteBOOLField();
  }
}

@end