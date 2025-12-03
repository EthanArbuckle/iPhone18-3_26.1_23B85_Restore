@interface INMessageReaction
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)isEqual:(id)equal;
- (INMessageReaction)init;
- (INMessageReaction)initWithCoder:(id)coder;
- (INMessageReaction)initWithReactionType:(int64_t)type reactionDescription:(id)description emoji:(id)emoji;
- (INMessageReaction)initWithReactionType:(int64_t)type reactionDescription:(id)description emoji:(id)emoji sticker:(id)sticker;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)descriptionAtIndent:(unint64_t)indent;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INMessageReaction

- (id)_dictionaryRepresentation
{
  v14[4] = *MEMORY[0x1E69E9840];
  v13[0] = @"reactionType";
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:self->_reactionType];
  v14[0] = v3;
  v13[1] = @"reactionDescription";
  reactionDescription = self->_reactionDescription;
  null = reactionDescription;
  if (!reactionDescription)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v14[1] = null;
  v13[2] = @"emoji";
  emoji = self->_emoji;
  null2 = emoji;
  if (!emoji)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v14[2] = null2;
  v13[3] = @"sticker";
  sticker = self->_sticker;
  null3 = sticker;
  if (!sticker)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v14[3] = null3;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:4];
  if (sticker)
  {
    if (emoji)
    {
      goto LABEL_9;
    }

LABEL_14:

    if (reactionDescription)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  if (!emoji)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (reactionDescription)
  {
    goto LABEL_10;
  }

LABEL_15:

LABEL_10:
  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INMessageReaction;
  v6 = [(INMessageReaction *)&v11 description];
  _dictionaryRepresentation = [(INMessageReaction *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description
{
  v5 = MEMORY[0x1E695DF90];
  encoderCopy = encoder;
  dictionary = [v5 dictionary];
  v8 = INMessageReactionTypeGetName(self->_reactionType);
  [dictionary if_setObjectIfNonNil:v8 forKey:@"reactionType"];

  v9 = [encoderCopy encodeObject:self->_reactionDescription];
  [dictionary if_setObjectIfNonNil:v9 forKey:@"reactionDescription"];

  v10 = [encoderCopy encodeObject:self->_emoji];
  [dictionary if_setObjectIfNonNil:v10 forKey:@"emoji"];

  v11 = [encoderCopy encodeObject:self->_sticker];

  [dictionary if_setObjectIfNonNil:v11 forKey:@"sticker"];

  return dictionary;
}

- (void)encodeWithCoder:(id)coder
{
  reactionType = self->_reactionType;
  coderCopy = coder;
  [coderCopy encodeInteger:reactionType forKey:@"reactionType"];
  [coderCopy encodeObject:self->_reactionDescription forKey:@"reactionDescription"];
  [coderCopy encodeObject:self->_emoji forKey:@"emoji"];
  [coderCopy encodeObject:self->_sticker forKey:@"sticker"];
}

- (INMessageReaction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"reactionType"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"reactionDescription"];

  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"emoji"];

  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sticker"];

  v15 = [(INMessageReaction *)self initWithReactionType:v5 reactionDescription:v9 emoji:v13 sticker:v14];
  return v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v9 = 0;
      if (self->_reactionType == v5->_reactionType)
      {
        reactionDescription = self->_reactionDescription;
        if (reactionDescription == v5->_reactionDescription || [(NSString *)reactionDescription isEqual:?])
        {
          emoji = self->_emoji;
          if (emoji == v5->_emoji || [(NSString *)emoji isEqual:?])
          {
            sticker = self->_sticker;
            if (sticker == v5->_sticker || [(INSticker *)sticker isEqual:?])
            {
              v9 = 1;
            }
          }
        }
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:self->_reactionType];
  v4 = [v3 hash];
  v5 = [(NSString *)self->_reactionDescription hash];
  v6 = v5 ^ [(NSString *)self->_emoji hash];
  v7 = v6 ^ [(INSticker *)self->_sticker hash];

  return v7 ^ v4;
}

- (INMessageReaction)initWithReactionType:(int64_t)type reactionDescription:(id)description emoji:(id)emoji sticker:(id)sticker
{
  descriptionCopy = description;
  emojiCopy = emoji;
  stickerCopy = sticker;
  v22.receiver = self;
  v22.super_class = INMessageReaction;
  v13 = [(INMessageReaction *)&v22 init];
  v14 = v13;
  if (v13)
  {
    v13->_reactionType = type;
    v15 = [descriptionCopy copy];
    reactionDescription = v14->_reactionDescription;
    v14->_reactionDescription = v15;

    v17 = [emojiCopy copy];
    emoji = v14->_emoji;
    v14->_emoji = v17;

    v19 = [stickerCopy copy];
    sticker = v14->_sticker;
    v14->_sticker = v19;
  }

  return v14;
}

- (INMessageReaction)initWithReactionType:(int64_t)type reactionDescription:(id)description emoji:(id)emoji
{
  descriptionCopy = description;
  emojiCopy = emoji;
  v17.receiver = self;
  v17.super_class = INMessageReaction;
  v10 = [(INMessageReaction *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_reactionType = type;
    v12 = [descriptionCopy copy];
    reactionDescription = v11->_reactionDescription;
    v11->_reactionDescription = v12;

    v14 = [emojiCopy copy];
    emoji = v11->_emoji;
    v11->_emoji = v14;
  }

  return v11;
}

- (INMessageReaction)init
{
  v3.receiver = self;
  v3.super_class = INMessageReaction;
  return [(INMessageReaction *)&v3 init];
}

+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from
{
  decoderCopy = decoder;
  fromCopy = from;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [fromCopy objectForKeyedSubscript:@"reactionType"];
    v10 = INMessageReactionTypeWithString(v9);

    v11 = [fromCopy objectForKeyedSubscript:@"reactionDescription"];
    v12 = [fromCopy objectForKeyedSubscript:@"emoji"];
    v13 = objc_opt_class();
    v14 = [fromCopy objectForKeyedSubscript:@"sticker"];
    v15 = [decoderCopy decodeObjectOfClass:v13 from:v14];

    v16 = [[self alloc] initWithReactionType:v10 reactionDescription:v11 emoji:v12 sticker:v15];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end