@interface _INPBFile
- (BOOL)isEqual:(id)equal;
- (_INPBFile)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setBookmarkData:(id)data;
- (void)setData:(id)data;
- (void)setFilename:(id)filename;
- (void)setTypeIdentifier:(id)identifier;
- (void)writeTo:(id)to;
@end

@implementation _INPBFile

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_bookmarkData)
  {
    bookmarkData = [(_INPBFile *)self bookmarkData];
    v5 = [bookmarkData copy];
    [dictionary setObject:v5 forKeyedSubscript:@"bookmarkData"];
  }

  if (self->_data)
  {
    data = [(_INPBFile *)self data];
    v7 = [data copy];
    [dictionary setObject:v7 forKeyedSubscript:@"data"];
  }

  fileURL = [(_INPBFile *)self fileURL];
  dictionaryRepresentation = [fileURL dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"fileURL"];

  if (self->_filename)
  {
    filename = [(_INPBFile *)self filename];
    v11 = [filename copy];
    [dictionary setObject:v11 forKeyedSubscript:@"filename"];
  }

  if ([(_INPBFile *)self hasRemovedOnCompletion])
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBFile removedOnCompletion](self, "removedOnCompletion")}];
    [dictionary setObject:v12 forKeyedSubscript:@"removedOnCompletion"];
  }

  if (self->_typeIdentifier)
  {
    typeIdentifier = [(_INPBFile *)self typeIdentifier];
    v14 = [typeIdentifier copy];
    [dictionary setObject:v14 forKeyedSubscript:@"typeIdentifier"];
  }

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_31;
  }

  bookmarkData = [(_INPBFile *)self bookmarkData];
  bookmarkData2 = [equalCopy bookmarkData];
  if ((bookmarkData != 0) == (bookmarkData2 == 0))
  {
    goto LABEL_30;
  }

  bookmarkData3 = [(_INPBFile *)self bookmarkData];
  if (bookmarkData3)
  {
    v8 = bookmarkData3;
    bookmarkData4 = [(_INPBFile *)self bookmarkData];
    bookmarkData5 = [equalCopy bookmarkData];
    v11 = [bookmarkData4 isEqual:bookmarkData5];

    if (!v11)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  bookmarkData = [(_INPBFile *)self data];
  bookmarkData2 = [equalCopy data];
  if ((bookmarkData != 0) == (bookmarkData2 == 0))
  {
    goto LABEL_30;
  }

  data = [(_INPBFile *)self data];
  if (data)
  {
    v13 = data;
    data2 = [(_INPBFile *)self data];
    data3 = [equalCopy data];
    v16 = [data2 isEqual:data3];

    if (!v16)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  bookmarkData = [(_INPBFile *)self fileURL];
  bookmarkData2 = [equalCopy fileURL];
  if ((bookmarkData != 0) == (bookmarkData2 == 0))
  {
    goto LABEL_30;
  }

  fileURL = [(_INPBFile *)self fileURL];
  if (fileURL)
  {
    v18 = fileURL;
    fileURL2 = [(_INPBFile *)self fileURL];
    fileURL3 = [equalCopy fileURL];
    v21 = [fileURL2 isEqual:fileURL3];

    if (!v21)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  bookmarkData = [(_INPBFile *)self filename];
  bookmarkData2 = [equalCopy filename];
  if ((bookmarkData != 0) == (bookmarkData2 == 0))
  {
    goto LABEL_30;
  }

  filename = [(_INPBFile *)self filename];
  if (filename)
  {
    v23 = filename;
    filename2 = [(_INPBFile *)self filename];
    filename3 = [equalCopy filename];
    v26 = [filename2 isEqual:filename3];

    if (!v26)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  hasRemovedOnCompletion = [(_INPBFile *)self hasRemovedOnCompletion];
  if (hasRemovedOnCompletion != [equalCopy hasRemovedOnCompletion])
  {
    goto LABEL_31;
  }

  if ([(_INPBFile *)self hasRemovedOnCompletion])
  {
    if ([equalCopy hasRemovedOnCompletion])
    {
      removedOnCompletion = self->_removedOnCompletion;
      if (removedOnCompletion != [equalCopy removedOnCompletion])
      {
        goto LABEL_31;
      }
    }
  }

  bookmarkData = [(_INPBFile *)self typeIdentifier];
  bookmarkData2 = [equalCopy typeIdentifier];
  if ((bookmarkData != 0) != (bookmarkData2 == 0))
  {
    typeIdentifier = [(_INPBFile *)self typeIdentifier];
    if (!typeIdentifier)
    {

LABEL_34:
      v34 = 1;
      goto LABEL_32;
    }

    v30 = typeIdentifier;
    typeIdentifier2 = [(_INPBFile *)self typeIdentifier];
    typeIdentifier3 = [equalCopy typeIdentifier];
    v33 = [typeIdentifier2 isEqual:typeIdentifier3];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBFile allocWithZone:](_INPBFile init];
  v6 = [(NSData *)self->_bookmarkData copyWithZone:zone];
  [(_INPBFile *)v5 setBookmarkData:v6];

  v7 = [(NSData *)self->_data copyWithZone:zone];
  [(_INPBFile *)v5 setData:v7];

  v8 = [(_INPBURLValue *)self->_fileURL copyWithZone:zone];
  [(_INPBFile *)v5 setFileURL:v8];

  v9 = [(NSString *)self->_filename copyWithZone:zone];
  [(_INPBFile *)v5 setFilename:v9];

  if ([(_INPBFile *)self hasRemovedOnCompletion])
  {
    [(_INPBFile *)v5 setRemovedOnCompletion:[(_INPBFile *)self removedOnCompletion]];
  }

  v10 = [(NSString *)self->_typeIdentifier copyWithZone:zone];
  [(_INPBFile *)v5 setTypeIdentifier:v10];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBFile *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBFile)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBFile *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  bookmarkData = [(_INPBFile *)self bookmarkData];

  if (bookmarkData)
  {
    bookmarkData = self->_bookmarkData;
    PBDataWriterWriteDataField();
  }

  data = [(_INPBFile *)self data];

  if (data)
  {
    data = self->_data;
    PBDataWriterWriteDataField();
  }

  fileURL = [(_INPBFile *)self fileURL];

  if (fileURL)
  {
    fileURL2 = [(_INPBFile *)self fileURL];
    PBDataWriterWriteSubmessage();
  }

  filename = [(_INPBFile *)self filename];

  if (filename)
  {
    filename = self->_filename;
    PBDataWriterWriteStringField();
  }

  if ([(_INPBFile *)self hasRemovedOnCompletion])
  {
    removedOnCompletion = self->_removedOnCompletion;
    PBDataWriterWriteBOOLField();
  }

  typeIdentifier = [(_INPBFile *)self typeIdentifier];

  v14 = toCopy;
  if (typeIdentifier)
  {
    typeIdentifier = self->_typeIdentifier;
    PBDataWriterWriteStringField();
    v14 = toCopy;
  }
}

- (void)setTypeIdentifier:(id)identifier
{
  v4 = [identifier copy];
  typeIdentifier = self->_typeIdentifier;
  self->_typeIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, typeIdentifier);
}

- (void)setFilename:(id)filename
{
  v4 = [filename copy];
  filename = self->_filename;
  self->_filename = v4;

  MEMORY[0x1EEE66BB8](v4, filename);
}

- (void)setData:(id)data
{
  v4 = [data copy];
  data = self->_data;
  self->_data = v4;

  MEMORY[0x1EEE66BB8](v4, data);
}

- (void)setBookmarkData:(id)data
{
  v4 = [data copy];
  bookmarkData = self->_bookmarkData;
  self->_bookmarkData = v4;

  MEMORY[0x1EEE66BB8](v4, bookmarkData);
}

@end