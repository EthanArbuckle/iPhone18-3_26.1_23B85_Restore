@interface _INPBMessageReaction
- (BOOL)isEqual:(id)a3;
- (_INPBMessageReaction)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsReactionType:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setEmoji:(id)a3;
- (void)setReactionDescription:(id)a3;
- (void)setReactionType:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBMessageReaction

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_emoji)
  {
    v4 = [(_INPBMessageReaction *)self emoji];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"emoji"];
  }

  if (self->_reactionDescription)
  {
    v6 = [(_INPBMessageReaction *)self reactionDescription];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"reactionDescription"];
  }

  if ([(_INPBMessageReaction *)self hasReactionType])
  {
    v8 = [(_INPBMessageReaction *)self reactionType];
    if ((v8 - 1) >= 0xC)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v8];
    }

    else
    {
      v9 = off_1E72823B0[(v8 - 1)];
    }

    [v3 setObject:v9 forKeyedSubscript:@"reactionType"];
  }

  v10 = [(_INPBMessageReaction *)self sticker];
  v11 = [v10 dictionaryRepresentation];
  [v3 setObject:v11 forKeyedSubscript:@"sticker"];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  v5 = [(_INPBMessageReaction *)self emoji];
  v6 = [v4 emoji];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_20;
  }

  v7 = [(_INPBMessageReaction *)self emoji];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBMessageReaction *)self emoji];
    v10 = [v4 emoji];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  v5 = [(_INPBMessageReaction *)self reactionDescription];
  v6 = [v4 reactionDescription];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_20;
  }

  v12 = [(_INPBMessageReaction *)self reactionDescription];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBMessageReaction *)self reactionDescription];
    v15 = [v4 reactionDescription];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  v17 = [(_INPBMessageReaction *)self hasReactionType];
  if (v17 != [v4 hasReactionType])
  {
    goto LABEL_21;
  }

  if ([(_INPBMessageReaction *)self hasReactionType])
  {
    if ([v4 hasReactionType])
    {
      reactionType = self->_reactionType;
      if (reactionType != [v4 reactionType])
      {
        goto LABEL_21;
      }
    }
  }

  v5 = [(_INPBMessageReaction *)self sticker];
  v6 = [v4 sticker];
  if ((v5 != 0) != (v6 == 0))
  {
    v19 = [(_INPBMessageReaction *)self sticker];
    if (!v19)
    {

LABEL_24:
      v24 = 1;
      goto LABEL_22;
    }

    v20 = v19;
    v21 = [(_INPBMessageReaction *)self sticker];
    v22 = [v4 sticker];
    v23 = [v21 isEqual:v22];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBMessageReaction allocWithZone:](_INPBMessageReaction init];
  v6 = [(NSString *)self->_emoji copyWithZone:a3];
  [(_INPBMessageReaction *)v5 setEmoji:v6];

  v7 = [(NSString *)self->_reactionDescription copyWithZone:a3];
  [(_INPBMessageReaction *)v5 setReactionDescription:v7];

  if ([(_INPBMessageReaction *)self hasReactionType])
  {
    [(_INPBMessageReaction *)v5 setReactionType:[(_INPBMessageReaction *)self reactionType]];
  }

  v8 = [(_INPBSticker *)self->_sticker copyWithZone:a3];
  [(_INPBMessageReaction *)v5 setSticker:v8];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBMessageReaction *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBMessageReaction)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBMessageReaction *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v12 = a3;
  v4 = [(_INPBMessageReaction *)self emoji];

  if (v4)
  {
    emoji = self->_emoji;
    PBDataWriterWriteStringField();
  }

  v6 = [(_INPBMessageReaction *)self reactionDescription];

  if (v6)
  {
    reactionDescription = self->_reactionDescription;
    PBDataWriterWriteStringField();
  }

  if ([(_INPBMessageReaction *)self hasReactionType])
  {
    reactionType = self->_reactionType;
    PBDataWriterWriteInt32Field();
  }

  v9 = [(_INPBMessageReaction *)self sticker];

  v10 = v12;
  if (v9)
  {
    v11 = [(_INPBMessageReaction *)self sticker];
    PBDataWriterWriteSubmessage();

    v10 = v12;
  }
}

- (int)StringAsReactionType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"TAPBACK_LIKED_REACTION"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"TAPBACK_DISLIKED_REACTION"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"TAPBACK_EMPHASIZED_REACTION"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"TAPBACK_LOVED_REACTION"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"TAPBACK_QUESTIONED_REACTION"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"TAPBACK_LAUGHED_REACTION"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"DROPPED_STICKER"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"TAPBACK_STICKER"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"TAPBACK_GENERATED_EMOJI"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"EMOJI"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"GENERIC"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"CUSTOM_ACKNOWLEDGEMENT"])
  {
    v4 = 12;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setReactionType:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_reactionType = a3;
  }
}

- (void)setReactionDescription:(id)a3
{
  v4 = [a3 copy];
  reactionDescription = self->_reactionDescription;
  self->_reactionDescription = v4;

  MEMORY[0x1EEE66BB8](v4, reactionDescription);
}

- (void)setEmoji:(id)a3
{
  v4 = [a3 copy];
  emoji = self->_emoji;
  self->_emoji = v4;

  MEMORY[0x1EEE66BB8](v4, emoji);
}

@end