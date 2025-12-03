@interface _INPBSticker
- (BOOL)isEqual:(id)equal;
- (_INPBSticker)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsType:(id)type;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setAppBundleID:(id)d;
- (void)setAvatarDescriptor:(id)descriptor;
- (void)setEmoji:(id)emoji;
- (void)setStickerDescription:(id)description;
- (void)setType:(int)type;
- (void)writeTo:(id)to;
@end

@implementation _INPBSticker

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_appBundleID)
  {
    appBundleID = [(_INPBSticker *)self appBundleID];
    v5 = [appBundleID copy];
    [dictionary setObject:v5 forKeyedSubscript:@"appBundleID"];
  }

  if (self->_avatarDescriptor)
  {
    avatarDescriptor = [(_INPBSticker *)self avatarDescriptor];
    v7 = [avatarDescriptor copy];
    [dictionary setObject:v7 forKeyedSubscript:@"avatarDescriptor"];
  }

  if (self->_emoji)
  {
    emoji = [(_INPBSticker *)self emoji];
    v9 = [emoji copy];
    [dictionary setObject:v9 forKeyedSubscript:@"emoji"];
  }

  if (self->_stickerDescription)
  {
    stickerDescription = [(_INPBSticker *)self stickerDescription];
    v11 = [stickerDescription copy];
    [dictionary setObject:v11 forKeyedSubscript:@"stickerDescription"];
  }

  if ([(_INPBSticker *)self hasType])
  {
    type = [(_INPBSticker *)self type];
    if (type >= 7)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", type];
    }

    else
    {
      v13 = off_1E72889E0[type];
    }

    [dictionary setObject:v13 forKeyedSubscript:@"type"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_appBundleID hash];
  v4 = [(NSString *)self->_avatarDescriptor hash];
  v5 = [(NSString *)self->_emoji hash];
  v6 = [(NSString *)self->_stickerDescription hash];
  if ([(_INPBSticker *)self hasType])
  {
    v7 = 2654435761 * self->_type;
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  appBundleID = [(_INPBSticker *)self appBundleID];
  appBundleID2 = [equalCopy appBundleID];
  if ((appBundleID != 0) == (appBundleID2 == 0))
  {
    goto LABEL_21;
  }

  appBundleID3 = [(_INPBSticker *)self appBundleID];
  if (appBundleID3)
  {
    v8 = appBundleID3;
    appBundleID4 = [(_INPBSticker *)self appBundleID];
    appBundleID5 = [equalCopy appBundleID];
    v11 = [appBundleID4 isEqual:appBundleID5];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  appBundleID = [(_INPBSticker *)self avatarDescriptor];
  appBundleID2 = [equalCopy avatarDescriptor];
  if ((appBundleID != 0) == (appBundleID2 == 0))
  {
    goto LABEL_21;
  }

  avatarDescriptor = [(_INPBSticker *)self avatarDescriptor];
  if (avatarDescriptor)
  {
    v13 = avatarDescriptor;
    avatarDescriptor2 = [(_INPBSticker *)self avatarDescriptor];
    avatarDescriptor3 = [equalCopy avatarDescriptor];
    v16 = [avatarDescriptor2 isEqual:avatarDescriptor3];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  appBundleID = [(_INPBSticker *)self emoji];
  appBundleID2 = [equalCopy emoji];
  if ((appBundleID != 0) == (appBundleID2 == 0))
  {
    goto LABEL_21;
  }

  emoji = [(_INPBSticker *)self emoji];
  if (emoji)
  {
    v18 = emoji;
    emoji2 = [(_INPBSticker *)self emoji];
    emoji3 = [equalCopy emoji];
    v21 = [emoji2 isEqual:emoji3];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  appBundleID = [(_INPBSticker *)self stickerDescription];
  appBundleID2 = [equalCopy stickerDescription];
  if ((appBundleID != 0) == (appBundleID2 == 0))
  {
LABEL_21:

    goto LABEL_22;
  }

  stickerDescription = [(_INPBSticker *)self stickerDescription];
  if (stickerDescription)
  {
    v23 = stickerDescription;
    stickerDescription2 = [(_INPBSticker *)self stickerDescription];
    stickerDescription3 = [equalCopy stickerDescription];
    v26 = [stickerDescription2 isEqual:stickerDescription3];

    if (!v26)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  hasType = [(_INPBSticker *)self hasType];
  if (hasType == [equalCopy hasType])
  {
    if (!-[_INPBSticker hasType](self, "hasType") || ![equalCopy hasType] || (type = self->_type, type == objc_msgSend(equalCopy, "type")))
    {
      v27 = 1;
      goto LABEL_23;
    }
  }

LABEL_22:
  v27 = 0;
LABEL_23:

  return v27;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBSticker allocWithZone:](_INPBSticker init];
  v6 = [(NSString *)self->_appBundleID copyWithZone:zone];
  [(_INPBSticker *)v5 setAppBundleID:v6];

  v7 = [(NSString *)self->_avatarDescriptor copyWithZone:zone];
  [(_INPBSticker *)v5 setAvatarDescriptor:v7];

  v8 = [(NSString *)self->_emoji copyWithZone:zone];
  [(_INPBSticker *)v5 setEmoji:v8];

  v9 = [(NSString *)self->_stickerDescription copyWithZone:zone];
  [(_INPBSticker *)v5 setStickerDescription:v9];

  if ([(_INPBSticker *)self hasType])
  {
    [(_INPBSticker *)v5 setType:[(_INPBSticker *)self type]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBSticker *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBSticker)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBSticker *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  appBundleID = [(_INPBSticker *)self appBundleID];

  if (appBundleID)
  {
    appBundleID = self->_appBundleID;
    PBDataWriterWriteStringField();
  }

  avatarDescriptor = [(_INPBSticker *)self avatarDescriptor];

  if (avatarDescriptor)
  {
    avatarDescriptor = self->_avatarDescriptor;
    PBDataWriterWriteStringField();
  }

  emoji = [(_INPBSticker *)self emoji];

  if (emoji)
  {
    emoji = self->_emoji;
    PBDataWriterWriteStringField();
  }

  stickerDescription = [(_INPBSticker *)self stickerDescription];

  if (stickerDescription)
  {
    stickerDescription = self->_stickerDescription;
    PBDataWriterWriteStringField();
  }

  if ([(_INPBSticker *)self hasType])
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
  }
}

- (int)StringAsType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"EMOJI"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"MEMOJI"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"APP_BASED"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"GENERATED"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"GENERIC"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"CUSTOM"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setType:(int)type
{
  has = self->_has;
  if (type == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_type = type;
  }
}

- (void)setStickerDescription:(id)description
{
  v4 = [description copy];
  stickerDescription = self->_stickerDescription;
  self->_stickerDescription = v4;

  MEMORY[0x1EEE66BB8](v4, stickerDescription);
}

- (void)setEmoji:(id)emoji
{
  v4 = [emoji copy];
  emoji = self->_emoji;
  self->_emoji = v4;

  MEMORY[0x1EEE66BB8](v4, emoji);
}

- (void)setAvatarDescriptor:(id)descriptor
{
  v4 = [descriptor copy];
  avatarDescriptor = self->_avatarDescriptor;
  self->_avatarDescriptor = v4;

  MEMORY[0x1EEE66BB8](v4, avatarDescriptor);
}

- (void)setAppBundleID:(id)d
{
  v4 = [d copy];
  appBundleID = self->_appBundleID;
  self->_appBundleID = v4;

  MEMORY[0x1EEE66BB8](v4, appBundleID);
}

@end