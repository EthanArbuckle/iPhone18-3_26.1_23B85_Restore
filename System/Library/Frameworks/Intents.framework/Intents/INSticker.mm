@interface INSticker
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)isEqual:(id)equal;
- (INSticker)init;
- (INSticker)initWithCoder:(id)coder;
- (INSticker)initWithType:(int64_t)type avatarDescriptor:(id)descriptor appBundleID:(id)d stickerDescription:(id)description emoji:(id)emoji;
- (INSticker)initWithType:(int64_t)type emoji:(id)emoji;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)descriptionAtIndent:(unint64_t)indent;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INSticker

- (id)_dictionaryRepresentation
{
  v16[5] = *MEMORY[0x1E69E9840];
  v15[0] = @"type";
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:self->_type];
  v16[0] = v3;
  v15[1] = @"avatarDescriptor";
  avatarDescriptor = self->_avatarDescriptor;
  null = avatarDescriptor;
  if (!avatarDescriptor)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v16[1] = null;
  v15[2] = @"appBundleID";
  appBundleID = self->_appBundleID;
  null2 = appBundleID;
  if (!appBundleID)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v16[2] = null2;
  v15[3] = @"stickerDescription";
  stickerDescription = self->_stickerDescription;
  null3 = stickerDescription;
  if (!stickerDescription)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v16[3] = null3;
  v15[4] = @"emoji";
  emoji = self->_emoji;
  null4 = emoji;
  if (!emoji)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v16[4] = null4;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:5];
  if (emoji)
  {
    if (stickerDescription)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (stickerDescription)
    {
LABEL_11:
      if (appBundleID)
      {
        goto LABEL_12;
      }

LABEL_18:

      if (avatarDescriptor)
      {
        goto LABEL_13;
      }

      goto LABEL_19;
    }
  }

  if (!appBundleID)
  {
    goto LABEL_18;
  }

LABEL_12:
  if (avatarDescriptor)
  {
    goto LABEL_13;
  }

LABEL_19:

LABEL_13:
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INSticker;
  v6 = [(INSticker *)&v11 description];
  _dictionaryRepresentation = [(INSticker *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description
{
  v5 = MEMORY[0x1E695DF90];
  encoderCopy = encoder;
  dictionary = [v5 dictionary];
  v8 = INStickerTypeGetName(self->_type);
  [dictionary if_setObjectIfNonNil:v8 forKey:@"type"];

  v9 = [encoderCopy encodeObject:self->_avatarDescriptor];
  [dictionary if_setObjectIfNonNil:v9 forKey:@"avatarDescriptor"];

  v10 = [encoderCopy encodeObject:self->_appBundleID];
  [dictionary if_setObjectIfNonNil:v10 forKey:@"appBundleID"];

  v11 = [encoderCopy encodeObject:self->_stickerDescription];
  [dictionary if_setObjectIfNonNil:v11 forKey:@"stickerDescription"];

  v12 = [encoderCopy encodeObject:self->_emoji];

  [dictionary if_setObjectIfNonNil:v12 forKey:@"emoji"];

  return dictionary;
}

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeInteger:type forKey:@"type"];
  [coderCopy encodeObject:self->_avatarDescriptor forKey:@"avatarDescriptor"];
  [coderCopy encodeObject:self->_appBundleID forKey:@"appBundleID"];
  [coderCopy encodeObject:self->_stickerDescription forKey:@"stickerDescription"];
  [coderCopy encodeObject:self->_emoji forKey:@"emoji"];
}

- (INSticker)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"type"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"avatarDescriptor"];

  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"appBundleID"];

  v14 = MEMORY[0x1E695DFD8];
  v15 = objc_opt_class();
  v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
  v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"stickerDescription"];

  v18 = MEMORY[0x1E695DFD8];
  v19 = objc_opt_class();
  v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
  v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"emoji"];

  v22 = [(INSticker *)self initWithType:v5 avatarDescriptor:v9 appBundleID:v13 stickerDescription:v17 emoji:v21];
  return v22;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v10 = 0;
      if (self->_type == v5->_type)
      {
        avatarDescriptor = self->_avatarDescriptor;
        if (avatarDescriptor == v5->_avatarDescriptor || [(NSString *)avatarDescriptor isEqual:?])
        {
          appBundleID = self->_appBundleID;
          if (appBundleID == v5->_appBundleID || [(NSString *)appBundleID isEqual:?])
          {
            stickerDescription = self->_stickerDescription;
            if (stickerDescription == v5->_stickerDescription || [(NSString *)stickerDescription isEqual:?])
            {
              emoji = self->_emoji;
              if (emoji == v5->_emoji || [(NSString *)emoji isEqual:?])
              {
                v10 = 1;
              }
            }
          }
        }
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:self->_type];
  v4 = [v3 hash];
  v5 = [(NSString *)self->_avatarDescriptor hash];
  v6 = v5 ^ [(NSString *)self->_appBundleID hash];
  v7 = v6 ^ [(NSString *)self->_stickerDescription hash]^ v4;
  v8 = [(NSString *)self->_emoji hash];

  return v7 ^ v8;
}

- (INSticker)initWithType:(int64_t)type avatarDescriptor:(id)descriptor appBundleID:(id)d stickerDescription:(id)description emoji:(id)emoji
{
  descriptorCopy = descriptor;
  dCopy = d;
  descriptionCopy = description;
  emojiCopy = emoji;
  v27.receiver = self;
  v27.super_class = INSticker;
  v16 = [(INSticker *)&v27 init];
  v17 = v16;
  if (v16)
  {
    v16->_type = type;
    v18 = [descriptorCopy copy];
    avatarDescriptor = v17->_avatarDescriptor;
    v17->_avatarDescriptor = v18;

    v20 = [dCopy copy];
    appBundleID = v17->_appBundleID;
    v17->_appBundleID = v20;

    v22 = [descriptionCopy copy];
    stickerDescription = v17->_stickerDescription;
    v17->_stickerDescription = v22;

    v24 = [emojiCopy copy];
    emoji = v17->_emoji;
    v17->_emoji = v24;
  }

  return v17;
}

- (INSticker)initWithType:(int64_t)type emoji:(id)emoji
{
  emojiCopy = emoji;
  v12.receiver = self;
  v12.super_class = INSticker;
  v7 = [(INSticker *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_type = type;
    v9 = [emojiCopy copy];
    emoji = v8->_emoji;
    v8->_emoji = v9;
  }

  return v8;
}

- (INSticker)init
{
  v3.receiver = self;
  v3.super_class = INSticker;
  return [(INSticker *)&v3 init];
}

+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from
{
  fromCopy = from;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [fromCopy objectForKeyedSubscript:@"type"];
    v8 = INStickerTypeWithString(v7);

    v9 = [fromCopy objectForKeyedSubscript:@"avatarDescriptor"];
    v10 = [fromCopy objectForKeyedSubscript:@"appBundleID"];
    v11 = [fromCopy objectForKeyedSubscript:@"stickerDescription"];
    v12 = [fromCopy objectForKeyedSubscript:@"emoji"];
    v13 = [[self alloc] initWithType:v8 avatarDescriptor:v9 appBundleID:v10 stickerDescription:v11 emoji:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end