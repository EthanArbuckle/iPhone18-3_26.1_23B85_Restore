@interface _INPBMessageReaction
- (BOOL)isEqual:(id)equal;
- (_INPBMessageReaction)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsReactionType:(id)type;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setEmoji:(id)emoji;
- (void)setReactionDescription:(id)description;
- (void)setReactionType:(int)type;
- (void)writeTo:(id)to;
@end

@implementation _INPBMessageReaction

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_emoji)
  {
    emoji = [(_INPBMessageReaction *)self emoji];
    v5 = [emoji copy];
    [dictionary setObject:v5 forKeyedSubscript:@"emoji"];
  }

  if (self->_reactionDescription)
  {
    reactionDescription = [(_INPBMessageReaction *)self reactionDescription];
    v7 = [reactionDescription copy];
    [dictionary setObject:v7 forKeyedSubscript:@"reactionDescription"];
  }

  if ([(_INPBMessageReaction *)self hasReactionType])
  {
    reactionType = [(_INPBMessageReaction *)self reactionType];
    if ((reactionType - 1) >= 0xC)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", reactionType];
    }

    else
    {
      v9 = off_1E72823B0[(reactionType - 1)];
    }

    [dictionary setObject:v9 forKeyedSubscript:@"reactionType"];
  }

  sticker = [(_INPBMessageReaction *)self sticker];
  dictionaryRepresentation = [sticker dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"sticker"];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_emoji hash];
  v4 = [(NSString *)self->_reactionDescription hash];
  if ([(_INPBMessageReaction *)self hasReactionType])
  {
    v5 = 2654435761 * self->_reactionType;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5 ^ [(_INPBSticker *)self->_sticker hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  emoji = [(_INPBMessageReaction *)self emoji];
  emoji2 = [equalCopy emoji];
  if ((emoji != 0) == (emoji2 == 0))
  {
    goto LABEL_20;
  }

  emoji3 = [(_INPBMessageReaction *)self emoji];
  if (emoji3)
  {
    v8 = emoji3;
    emoji4 = [(_INPBMessageReaction *)self emoji];
    emoji5 = [equalCopy emoji];
    v11 = [emoji4 isEqual:emoji5];

    if (!v11)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  emoji = [(_INPBMessageReaction *)self reactionDescription];
  emoji2 = [equalCopy reactionDescription];
  if ((emoji != 0) == (emoji2 == 0))
  {
    goto LABEL_20;
  }

  reactionDescription = [(_INPBMessageReaction *)self reactionDescription];
  if (reactionDescription)
  {
    v13 = reactionDescription;
    reactionDescription2 = [(_INPBMessageReaction *)self reactionDescription];
    reactionDescription3 = [equalCopy reactionDescription];
    v16 = [reactionDescription2 isEqual:reactionDescription3];

    if (!v16)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  hasReactionType = [(_INPBMessageReaction *)self hasReactionType];
  if (hasReactionType != [equalCopy hasReactionType])
  {
    goto LABEL_21;
  }

  if ([(_INPBMessageReaction *)self hasReactionType])
  {
    if ([equalCopy hasReactionType])
    {
      reactionType = self->_reactionType;
      if (reactionType != [equalCopy reactionType])
      {
        goto LABEL_21;
      }
    }
  }

  emoji = [(_INPBMessageReaction *)self sticker];
  emoji2 = [equalCopy sticker];
  if ((emoji != 0) != (emoji2 == 0))
  {
    sticker = [(_INPBMessageReaction *)self sticker];
    if (!sticker)
    {

LABEL_24:
      v24 = 1;
      goto LABEL_22;
    }

    v20 = sticker;
    sticker2 = [(_INPBMessageReaction *)self sticker];
    sticker3 = [equalCopy sticker];
    v23 = [sticker2 isEqual:sticker3];

    if (v23)
    {
      goto LABEL_24;
    }
  }

  else
  {
LABEL_20:
  }

LABEL_21:
  v24 = 0;
LABEL_22:

  return v24;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBMessageReaction allocWithZone:](_INPBMessageReaction init];
  v6 = [(NSString *)self->_emoji copyWithZone:zone];
  [(_INPBMessageReaction *)v5 setEmoji:v6];

  v7 = [(NSString *)self->_reactionDescription copyWithZone:zone];
  [(_INPBMessageReaction *)v5 setReactionDescription:v7];

  if ([(_INPBMessageReaction *)self hasReactionType])
  {
    [(_INPBMessageReaction *)v5 setReactionType:[(_INPBMessageReaction *)self reactionType]];
  }

  v8 = [(_INPBSticker *)self->_sticker copyWithZone:zone];
  [(_INPBMessageReaction *)v5 setSticker:v8];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBMessageReaction *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBMessageReaction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBMessageReaction *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  emoji = [(_INPBMessageReaction *)self emoji];

  if (emoji)
  {
    emoji = self->_emoji;
    PBDataWriterWriteStringField();
  }

  reactionDescription = [(_INPBMessageReaction *)self reactionDescription];

  if (reactionDescription)
  {
    reactionDescription = self->_reactionDescription;
    PBDataWriterWriteStringField();
  }

  if ([(_INPBMessageReaction *)self hasReactionType])
  {
    reactionType = self->_reactionType;
    PBDataWriterWriteInt32Field();
  }

  sticker = [(_INPBMessageReaction *)self sticker];

  v10 = toCopy;
  if (sticker)
  {
    sticker2 = [(_INPBMessageReaction *)self sticker];
    PBDataWriterWriteSubmessage();

    v10 = toCopy;
  }
}

- (int)StringAsReactionType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"TAPBACK_LIKED_REACTION"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"TAPBACK_DISLIKED_REACTION"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"TAPBACK_EMPHASIZED_REACTION"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"TAPBACK_LOVED_REACTION"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"TAPBACK_QUESTIONED_REACTION"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"TAPBACK_LAUGHED_REACTION"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"DROPPED_STICKER"])
  {
    v4 = 7;
  }

  else if ([typeCopy isEqualToString:@"TAPBACK_STICKER"])
  {
    v4 = 8;
  }

  else if ([typeCopy isEqualToString:@"TAPBACK_GENERATED_EMOJI"])
  {
    v4 = 9;
  }

  else if ([typeCopy isEqualToString:@"EMOJI"])
  {
    v4 = 10;
  }

  else if ([typeCopy isEqualToString:@"GENERIC"])
  {
    v4 = 11;
  }

  else if ([typeCopy isEqualToString:@"CUSTOM_ACKNOWLEDGEMENT"])
  {
    v4 = 12;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setReactionType:(int)type
{
  has = self->_has;
  if (type == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_reactionType = type;
  }
}

- (void)setReactionDescription:(id)description
{
  v4 = [description copy];
  reactionDescription = self->_reactionDescription;
  self->_reactionDescription = v4;

  MEMORY[0x1EEE66BB8](v4, reactionDescription);
}

- (void)setEmoji:(id)emoji
{
  v4 = [emoji copy];
  emoji = self->_emoji;
  self->_emoji = v4;

  MEMORY[0x1EEE66BB8](v4, emoji);
}

@end