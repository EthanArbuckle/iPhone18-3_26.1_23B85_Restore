@interface _INPBReadAnnouncementIntentResponse
- (BOOL)isEqual:(id)equal;
- (_INPBReadAnnouncementIntentResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)addAnnouncementRecords:(id)records;
- (void)encodeWithCoder:(id)coder;
- (void)setAnnouncementRecords:(id)records;
- (void)writeTo:(id)to;
@end

@implementation _INPBReadAnnouncementIntentResponse

- (id)dictionaryRepresentation
{
  v18 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_announcementRecords count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = self->_announcementRecords;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v13 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"announcementRecords"];
  }

  v11 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    announcementRecords = [(_INPBReadAnnouncementIntentResponse *)self announcementRecords];
    announcementRecords2 = [equalCopy announcementRecords];
    v7 = announcementRecords2;
    if ((announcementRecords != 0) != (announcementRecords2 == 0))
    {
      announcementRecords3 = [(_INPBReadAnnouncementIntentResponse *)self announcementRecords];
      if (!announcementRecords3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = announcementRecords3;
      announcementRecords4 = [(_INPBReadAnnouncementIntentResponse *)self announcementRecords];
      announcementRecords5 = [equalCopy announcementRecords];
      v12 = [announcementRecords4 isEqual:announcementRecords5];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBReadAnnouncementIntentResponse allocWithZone:](_INPBReadAnnouncementIntentResponse init];
  v6 = [(NSArray *)self->_announcementRecords copyWithZone:zone];
  [(_INPBReadAnnouncementIntentResponse *)v5 setAnnouncementRecords:v6];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBReadAnnouncementIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBReadAnnouncementIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBReadAnnouncementIntentResponse *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_announcementRecords;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)addAnnouncementRecords:(id)records
{
  recordsCopy = records;
  announcementRecords = self->_announcementRecords;
  v8 = recordsCopy;
  if (!announcementRecords)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_announcementRecords;
    self->_announcementRecords = array;

    recordsCopy = v8;
    announcementRecords = self->_announcementRecords;
  }

  [(NSArray *)announcementRecords addObject:recordsCopy];
}

- (void)setAnnouncementRecords:(id)records
{
  v4 = [records mutableCopy];
  announcementRecords = self->_announcementRecords;
  self->_announcementRecords = v4;

  MEMORY[0x1EEE66BB8](v4, announcementRecords);
}

@end