@interface _INPBFile
- (BOOL)isEqual:(id)a3;
- (_INPBFile)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setBookmarkData:(id)a3;
- (void)setData:(id)a3;
- (void)setFilename:(id)a3;
- (void)setTypeIdentifier:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBFile

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_bookmarkData)
  {
    v4 = [(_INPBFile *)self bookmarkData];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"bookmarkData"];
  }

  if (self->_data)
  {
    v6 = [(_INPBFile *)self data];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"data"];
  }

  v8 = [(_INPBFile *)self fileURL];
  v9 = [v8 dictionaryRepresentation];
  [v3 setObject:v9 forKeyedSubscript:@"fileURL"];

  if (self->_filename)
  {
    v10 = [(_INPBFile *)self filename];
    v11 = [v10 copy];
    [v3 setObject:v11 forKeyedSubscript:@"filename"];
  }

  if ([(_INPBFile *)self hasRemovedOnCompletion])
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBFile removedOnCompletion](self, "removedOnCompletion")}];
    [v3 setObject:v12 forKeyedSubscript:@"removedOnCompletion"];
  }

  if (self->_typeIdentifier)
  {
    v13 = [(_INPBFile *)self typeIdentifier];
    v14 = [v13 copy];
    [v3 setObject:v14 forKeyedSubscript:@"typeIdentifier"];
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_bookmarkData hash];
  v4 = [(NSData *)self->_data hash];
  v5 = [(_INPBURLValue *)self->_fileURL hash];
  v6 = [(NSString *)self->_filename hash];
  if ([(_INPBFile *)self hasRemovedOnCompletion])
  {
    v7 = 2654435761 * self->_removedOnCompletion;
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ [(NSString *)self->_typeIdentifier hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_31;
  }

  v5 = [(_INPBFile *)self bookmarkData];
  v6 = [v4 bookmarkData];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_30;
  }

  v7 = [(_INPBFile *)self bookmarkData];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBFile *)self bookmarkData];
    v10 = [v4 bookmarkData];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  v5 = [(_INPBFile *)self data];
  v6 = [v4 data];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_30;
  }

  v12 = [(_INPBFile *)self data];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBFile *)self data];
    v15 = [v4 data];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  v5 = [(_INPBFile *)self fileURL];
  v6 = [v4 fileURL];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_30;
  }

  v17 = [(_INPBFile *)self fileURL];
  if (v17)
  {
    v18 = v17;
    v19 = [(_INPBFile *)self fileURL];
    v20 = [v4 fileURL];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  v5 = [(_INPBFile *)self filename];
  v6 = [v4 filename];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_30;
  }

  v22 = [(_INPBFile *)self filename];
  if (v22)
  {
    v23 = v22;
    v24 = [(_INPBFile *)self filename];
    v25 = [v4 filename];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  v27 = [(_INPBFile *)self hasRemovedOnCompletion];
  if (v27 != [v4 hasRemovedOnCompletion])
  {
    goto LABEL_31;
  }

  if ([(_INPBFile *)self hasRemovedOnCompletion])
  {
    if ([v4 hasRemovedOnCompletion])
    {
      removedOnCompletion = self->_removedOnCompletion;
      if (removedOnCompletion != [v4 removedOnCompletion])
      {
        goto LABEL_31;
      }
    }
  }

  v5 = [(_INPBFile *)self typeIdentifier];
  v6 = [v4 typeIdentifier];
  if ((v5 != 0) != (v6 == 0))
  {
    v29 = [(_INPBFile *)self typeIdentifier];
    if (!v29)
    {

LABEL_34:
      v34 = 1;
      goto LABEL_32;
    }

    v30 = v29;
    v31 = [(_INPBFile *)self typeIdentifier];
    v32 = [v4 typeIdentifier];
    v33 = [v31 isEqual:v32];

    if (v33)
    {
      goto LABEL_34;
    }
  }

  else
  {
LABEL_30:
  }

LABEL_31:
  v34 = 0;
LABEL_32:

  return v34;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBFile allocWithZone:](_INPBFile init];
  v6 = [(NSData *)self->_bookmarkData copyWithZone:a3];
  [(_INPBFile *)v5 setBookmarkData:v6];

  v7 = [(NSData *)self->_data copyWithZone:a3];
  [(_INPBFile *)v5 setData:v7];

  v8 = [(_INPBURLValue *)self->_fileURL copyWithZone:a3];
  [(_INPBFile *)v5 setFileURL:v8];

  v9 = [(NSString *)self->_filename copyWithZone:a3];
  [(_INPBFile *)v5 setFilename:v9];

  if ([(_INPBFile *)self hasRemovedOnCompletion])
  {
    [(_INPBFile *)v5 setRemovedOnCompletion:[(_INPBFile *)self removedOnCompletion]];
  }

  v10 = [(NSString *)self->_typeIdentifier copyWithZone:a3];
  [(_INPBFile *)v5 setTypeIdentifier:v10];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBFile *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBFile)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBFile *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v16 = a3;
  v4 = [(_INPBFile *)self bookmarkData];

  if (v4)
  {
    bookmarkData = self->_bookmarkData;
    PBDataWriterWriteDataField();
  }

  v6 = [(_INPBFile *)self data];

  if (v6)
  {
    data = self->_data;
    PBDataWriterWriteDataField();
  }

  v8 = [(_INPBFile *)self fileURL];

  if (v8)
  {
    v9 = [(_INPBFile *)self fileURL];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(_INPBFile *)self filename];

  if (v10)
  {
    filename = self->_filename;
    PBDataWriterWriteStringField();
  }

  if ([(_INPBFile *)self hasRemovedOnCompletion])
  {
    removedOnCompletion = self->_removedOnCompletion;
    PBDataWriterWriteBOOLField();
  }

  v13 = [(_INPBFile *)self typeIdentifier];

  v14 = v16;
  if (v13)
  {
    typeIdentifier = self->_typeIdentifier;
    PBDataWriterWriteStringField();
    v14 = v16;
  }
}

- (void)setTypeIdentifier:(id)a3
{
  v4 = [a3 copy];
  typeIdentifier = self->_typeIdentifier;
  self->_typeIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, typeIdentifier);
}

- (void)setFilename:(id)a3
{
  v4 = [a3 copy];
  filename = self->_filename;
  self->_filename = v4;

  MEMORY[0x1EEE66BB8](v4, filename);
}

- (void)setData:(id)a3
{
  v4 = [a3 copy];
  data = self->_data;
  self->_data = v4;

  MEMORY[0x1EEE66BB8](v4, data);
}

- (void)setBookmarkData:(id)a3
{
  v4 = [a3 copy];
  bookmarkData = self->_bookmarkData;
  self->_bookmarkData = v4;

  MEMORY[0x1EEE66BB8](v4, bookmarkData);
}

@end