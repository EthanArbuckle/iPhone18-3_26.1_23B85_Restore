@interface _INPBShareETAIntentResponse
- (BOOL)isEqual:(id)equal;
- (_INPBShareETAIntentResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsMediums:(id)mediums;
- (void)addMedium:(int)medium;
- (void)addRecipient:(id)recipient;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setRecipients:(id)recipients;
- (void)writeTo:(id)to;
@end

@implementation _INPBShareETAIntentResponse

- (id)dictionaryRepresentation
{
  v22 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_mediums.count)
  {
    v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[_INPBShareETAIntentResponse mediumsCount](self, "mediumsCount")}];
    if ([(_INPBShareETAIntentResponse *)self mediumsCount])
    {
      v5 = 0;
      do
      {
        v6 = self->_mediums.list[v5];
        if (v6 >= 4)
        {
          v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_mediums.list[v5]];
        }

        else
        {
          v7 = *(&off_1E72878F0 + v6);
        }

        [v4 addObject:v7];

        ++v5;
      }

      while (v5 < [(_INPBShareETAIntentResponse *)self mediumsCount]);
    }

    [dictionary setObject:v4 forKeyedSubscript:@"medium"];
  }

  if ([(NSArray *)self->_recipients count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = self->_recipients;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          dictionaryRepresentation = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation];
        }

        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }

    [dictionary setObject:array forKeyedSubscript:@"recipient"];
  }

  v15 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && PBRepeatedInt32IsEqual())
  {
    recipients = [(_INPBShareETAIntentResponse *)self recipients];
    recipients2 = [equalCopy recipients];
    v7 = recipients2;
    if ((recipients != 0) != (recipients2 == 0))
    {
      recipients3 = [(_INPBShareETAIntentResponse *)self recipients];
      if (!recipients3)
      {

LABEL_11:
        v13 = 1;
        goto LABEL_9;
      }

      v9 = recipients3;
      recipients4 = [(_INPBShareETAIntentResponse *)self recipients];
      recipients5 = [equalCopy recipients];
      v12 = [recipients4 isEqual:recipients5];

      if (v12)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_9:

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBShareETAIntentResponse allocWithZone:](_INPBShareETAIntentResponse init];
  PBRepeatedInt32Copy();
  v6 = [(NSArray *)self->_recipients copyWithZone:zone];
  [(_INPBShareETAIntentResponse *)v5 setRecipients:v6];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBShareETAIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBShareETAIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBShareETAIntentResponse *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)dealloc
{
  [(_INPBShareETAIntentResponse *)self clearMediums];
  v3.receiver = self;
  v3.super_class = _INPBShareETAIntentResponse;
  [(_INPBShareETAIntentResponse *)&v3 dealloc];
}

- (void)writeTo:(id)to
{
  v19 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_mediums.count)
  {
    v5 = 0;
    do
    {
      v6 = self->_mediums.list[v5];
      PBDataWriterWriteInt32Field();
      ++v5;
    }

    while (v5 < self->_mediums.count);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = self->_recipients;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)addRecipient:(id)recipient
{
  recipientCopy = recipient;
  recipients = self->_recipients;
  v8 = recipientCopy;
  if (!recipients)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_recipients;
    self->_recipients = array;

    recipientCopy = v8;
    recipients = self->_recipients;
  }

  [(NSArray *)recipients addObject:recipientCopy];
}

- (void)setRecipients:(id)recipients
{
  v4 = [recipients mutableCopy];
  recipients = self->_recipients;
  self->_recipients = v4;

  MEMORY[0x1EEE66BB8](v4, recipients);
}

- (int)StringAsMediums:(id)mediums
{
  mediumsCopy = mediums;
  if ([mediumsCopy isEqualToString:@"NONE"])
  {
    v4 = 0;
  }

  else if ([mediumsCopy isEqualToString:@"IDS"])
  {
    v4 = 1;
  }

  else if ([mediumsCopy isEqualToString:@"IMESSAGE"])
  {
    v4 = 2;
  }

  else if ([mediumsCopy isEqualToString:@"SMS"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addMedium:(int)medium
{
  if (medium != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

@end