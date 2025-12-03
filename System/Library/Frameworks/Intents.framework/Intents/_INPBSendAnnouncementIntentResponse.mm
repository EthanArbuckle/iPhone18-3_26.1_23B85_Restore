@interface _INPBSendAnnouncementIntentResponse
- (BOOL)isEqual:(id)equal;
- (_INPBSendAnnouncementIntentResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)addSentAnnouncements:(id)announcements;
- (void)encodeWithCoder:(id)coder;
- (void)setSentAnnouncements:(id)announcements;
- (void)writeTo:(id)to;
@end

@implementation _INPBSendAnnouncementIntentResponse

- (id)dictionaryRepresentation
{
  v18 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_sentAnnouncements count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = self->_sentAnnouncements;
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

    [dictionary setObject:array forKeyedSubscript:@"sentAnnouncements"];
  }

  v11 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    sentAnnouncements = [(_INPBSendAnnouncementIntentResponse *)self sentAnnouncements];
    sentAnnouncements2 = [equalCopy sentAnnouncements];
    v7 = sentAnnouncements2;
    if ((sentAnnouncements != 0) != (sentAnnouncements2 == 0))
    {
      sentAnnouncements3 = [(_INPBSendAnnouncementIntentResponse *)self sentAnnouncements];
      if (!sentAnnouncements3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = sentAnnouncements3;
      sentAnnouncements4 = [(_INPBSendAnnouncementIntentResponse *)self sentAnnouncements];
      sentAnnouncements5 = [equalCopy sentAnnouncements];
      v12 = [sentAnnouncements4 isEqual:sentAnnouncements5];

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
  v5 = [+[_INPBSendAnnouncementIntentResponse allocWithZone:](_INPBSendAnnouncementIntentResponse init];
  v6 = [(NSArray *)self->_sentAnnouncements copyWithZone:zone];
  [(_INPBSendAnnouncementIntentResponse *)v5 setSentAnnouncements:v6];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBSendAnnouncementIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBSendAnnouncementIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBSendAnnouncementIntentResponse *)self initWithData:selfCopy];

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
  v5 = self->_sentAnnouncements;
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

- (void)addSentAnnouncements:(id)announcements
{
  announcementsCopy = announcements;
  sentAnnouncements = self->_sentAnnouncements;
  v8 = announcementsCopy;
  if (!sentAnnouncements)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_sentAnnouncements;
    self->_sentAnnouncements = array;

    announcementsCopy = v8;
    sentAnnouncements = self->_sentAnnouncements;
  }

  [(NSArray *)sentAnnouncements addObject:announcementsCopy];
}

- (void)setSentAnnouncements:(id)announcements
{
  v4 = [announcements mutableCopy];
  sentAnnouncements = self->_sentAnnouncements;
  self->_sentAnnouncements = v4;

  MEMORY[0x1EEE66BB8](v4, sentAnnouncements);
}

@end