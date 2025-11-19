@interface _INPBFileDataAttachment
- (BOOL)isEqual:(id)a3;
- (_INPBFileDataAttachment)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
- (void)setData:(id)a3;
- (void)setFileName:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBFileDataAttachment

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_data)
  {
    v4 = [(_INPBFileDataAttachment *)self data];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"data"];
  }

  if (self->_fileName)
  {
    v6 = [(_INPBFileDataAttachment *)self fileName];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"fileName"];
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(_INPBFileDataAttachment *)self data];
  v6 = [v4 data];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(_INPBFileDataAttachment *)self data];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBFileDataAttachment *)self data];
    v10 = [v4 data];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(_INPBFileDataAttachment *)self fileName];
  v6 = [v4 fileName];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(_INPBFileDataAttachment *)self fileName];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(_INPBFileDataAttachment *)self fileName];
    v15 = [v4 fileName];
    v16 = [v14 isEqual:v15];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBFileDataAttachment allocWithZone:](_INPBFileDataAttachment init];
  v6 = [(NSData *)self->_data copyWithZone:a3];
  [(_INPBFileDataAttachment *)v5 setData:v6];

  v7 = [(NSString *)self->_fileName copyWithZone:a3];
  [(_INPBFileDataAttachment *)v5 setFileName:v7];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBFileDataAttachment *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBFileDataAttachment)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBFileDataAttachment *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(_INPBFileDataAttachment *)self data];

  if (v4)
  {
    data = self->_data;
    PBDataWriterWriteDataField();
  }

  v6 = [(_INPBFileDataAttachment *)self fileName];

  if (v6)
  {
    fileName = self->_fileName;
    PBDataWriterWriteStringField();
  }
}

- (void)setFileName:(id)a3
{
  v4 = [a3 copy];
  fileName = self->_fileName;
  self->_fileName = v4;

  MEMORY[0x1EEE66BB8](v4, fileName);
}

- (void)setData:(id)a3
{
  v4 = [a3 copy];
  data = self->_data;
  self->_data = v4;

  MEMORY[0x1EEE66BB8](v4, data);
}

@end