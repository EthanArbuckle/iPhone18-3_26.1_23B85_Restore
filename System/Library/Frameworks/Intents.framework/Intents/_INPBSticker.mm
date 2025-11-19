@interface _INPBSticker
- (BOOL)isEqual:(id)a3;
- (_INPBSticker)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsType:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setAppBundleID:(id)a3;
- (void)setAvatarDescriptor:(id)a3;
- (void)setEmoji:(id)a3;
- (void)setStickerDescription:(id)a3;
- (void)setType:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBSticker

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_appBundleID)
  {
    v4 = [(_INPBSticker *)self appBundleID];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"appBundleID"];
  }

  if (self->_avatarDescriptor)
  {
    v6 = [(_INPBSticker *)self avatarDescriptor];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"avatarDescriptor"];
  }

  if (self->_emoji)
  {
    v8 = [(_INPBSticker *)self emoji];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"emoji"];
  }

  if (self->_stickerDescription)
  {
    v10 = [(_INPBSticker *)self stickerDescription];
    v11 = [v10 copy];
    [v3 setObject:v11 forKeyedSubscript:@"stickerDescription"];
  }

  if ([(_INPBSticker *)self hasType])
  {
    v12 = [(_INPBSticker *)self type];
    if (v12 >= 7)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v12];
    }

    else
    {
      v13 = off_1E72889E0[v12];
    }

    [v3 setObject:v13 forKeyedSubscript:@"type"];
  }

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  v5 = [(_INPBSticker *)self appBundleID];
  v6 = [v4 appBundleID];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v7 = [(_INPBSticker *)self appBundleID];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBSticker *)self appBundleID];
    v10 = [v4 appBundleID];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_INPBSticker *)self avatarDescriptor];
  v6 = [v4 avatarDescriptor];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v12 = [(_INPBSticker *)self avatarDescriptor];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBSticker *)self avatarDescriptor];
    v15 = [v4 avatarDescriptor];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_INPBSticker *)self emoji];
  v6 = [v4 emoji];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v17 = [(_INPBSticker *)self emoji];
  if (v17)
  {
    v18 = v17;
    v19 = [(_INPBSticker *)self emoji];
    v20 = [v4 emoji];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_INPBSticker *)self stickerDescription];
  v6 = [v4 stickerDescription];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_21:

    goto LABEL_22;
  }

  v22 = [(_INPBSticker *)self stickerDescription];
  if (v22)
  {
    v23 = v22;
    v24 = [(_INPBSticker *)self stickerDescription];
    v25 = [v4 stickerDescription];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v29 = [(_INPBSticker *)self hasType];
  if (v29 == [v4 hasType])
  {
    if (!-[_INPBSticker hasType](self, "hasType") || ![v4 hasType] || (type = self->_type, type == objc_msgSend(v4, "type")))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBSticker allocWithZone:](_INPBSticker init];
  v6 = [(NSString *)self->_appBundleID copyWithZone:a3];
  [(_INPBSticker *)v5 setAppBundleID:v6];

  v7 = [(NSString *)self->_avatarDescriptor copyWithZone:a3];
  [(_INPBSticker *)v5 setAvatarDescriptor:v7];

  v8 = [(NSString *)self->_emoji copyWithZone:a3];
  [(_INPBSticker *)v5 setEmoji:v8];

  v9 = [(NSString *)self->_stickerDescription copyWithZone:a3];
  [(_INPBSticker *)v5 setStickerDescription:v9];

  if ([(_INPBSticker *)self hasType])
  {
    [(_INPBSticker *)v5 setType:[(_INPBSticker *)self type]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBSticker *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBSticker)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBSticker *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v13 = a3;
  v4 = [(_INPBSticker *)self appBundleID];

  if (v4)
  {
    appBundleID = self->_appBundleID;
    PBDataWriterWriteStringField();
  }

  v6 = [(_INPBSticker *)self avatarDescriptor];

  if (v6)
  {
    avatarDescriptor = self->_avatarDescriptor;
    PBDataWriterWriteStringField();
  }

  v8 = [(_INPBSticker *)self emoji];

  if (v8)
  {
    emoji = self->_emoji;
    PBDataWriterWriteStringField();
  }

  v10 = [(_INPBSticker *)self stickerDescription];

  if (v10)
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

- (int)StringAsType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"EMOJI"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"MEMOJI"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"APP_BASED"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"GENERATED"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"GENERIC"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"CUSTOM"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setType:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_type = a3;
  }
}

- (void)setStickerDescription:(id)a3
{
  v4 = [a3 copy];
  stickerDescription = self->_stickerDescription;
  self->_stickerDescription = v4;

  MEMORY[0x1EEE66BB8](v4, stickerDescription);
}

- (void)setEmoji:(id)a3
{
  v4 = [a3 copy];
  emoji = self->_emoji;
  self->_emoji = v4;

  MEMORY[0x1EEE66BB8](v4, emoji);
}

- (void)setAvatarDescriptor:(id)a3
{
  v4 = [a3 copy];
  avatarDescriptor = self->_avatarDescriptor;
  self->_avatarDescriptor = v4;

  MEMORY[0x1EEE66BB8](v4, avatarDescriptor);
}

- (void)setAppBundleID:(id)a3
{
  v4 = [a3 copy];
  appBundleID = self->_appBundleID;
  self->_appBundleID = v4;

  MEMORY[0x1EEE66BB8](v4, appBundleID);
}

@end