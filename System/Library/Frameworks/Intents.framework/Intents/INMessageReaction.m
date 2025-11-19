@interface INMessageReaction
+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (BOOL)isEqual:(id)a3;
- (INMessageReaction)init;
- (INMessageReaction)initWithCoder:(id)a3;
- (INMessageReaction)initWithReactionType:(int64_t)a3 reactionDescription:(id)a4 emoji:(id)a5;
- (INMessageReaction)initWithReactionType:(int64_t)a3 reactionDescription:(id)a4 emoji:(id)a5 sticker:(id)a6;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4;
- (id)descriptionAtIndent:(unint64_t)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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
  v5 = reactionDescription;
  if (!reactionDescription)
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  v14[1] = v5;
  v13[2] = @"emoji";
  emoji = self->_emoji;
  v7 = emoji;
  if (!emoji)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v14[2] = v7;
  v13[3] = @"sticker";
  sticker = self->_sticker;
  v9 = sticker;
  if (!sticker)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v14[3] = v9;
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

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INMessageReaction;
  v6 = [(INMessageReaction *)&v11 description];
  v7 = [(INMessageReaction *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = [v5 dictionary];
  v8 = INMessageReactionTypeGetName(self->_reactionType);
  [v7 if_setObjectIfNonNil:v8 forKey:@"reactionType"];

  v9 = [v6 encodeObject:self->_reactionDescription];
  [v7 if_setObjectIfNonNil:v9 forKey:@"reactionDescription"];

  v10 = [v6 encodeObject:self->_emoji];
  [v7 if_setObjectIfNonNil:v10 forKey:@"emoji"];

  v11 = [v6 encodeObject:self->_sticker];

  [v7 if_setObjectIfNonNil:v11 forKey:@"sticker"];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  reactionType = self->_reactionType;
  v5 = a3;
  [v5 encodeInteger:reactionType forKey:@"reactionType"];
  [v5 encodeObject:self->_reactionDescription forKey:@"reactionDescription"];
  [v5 encodeObject:self->_emoji forKey:@"emoji"];
  [v5 encodeObject:self->_sticker forKey:@"sticker"];
}

- (INMessageReaction)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"reactionType"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"reactionDescription"];

  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  v13 = [v4 decodeObjectOfClasses:v12 forKey:@"emoji"];

  v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sticker"];

  v15 = [(INMessageReaction *)self initWithReactionType:v5 reactionDescription:v9 emoji:v13 sticker:v14];
  return v15;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

- (INMessageReaction)initWithReactionType:(int64_t)a3 reactionDescription:(id)a4 emoji:(id)a5 sticker:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v22.receiver = self;
  v22.super_class = INMessageReaction;
  v13 = [(INMessageReaction *)&v22 init];
  v14 = v13;
  if (v13)
  {
    v13->_reactionType = a3;
    v15 = [v10 copy];
    reactionDescription = v14->_reactionDescription;
    v14->_reactionDescription = v15;

    v17 = [v11 copy];
    emoji = v14->_emoji;
    v14->_emoji = v17;

    v19 = [v12 copy];
    sticker = v14->_sticker;
    v14->_sticker = v19;
  }

  return v14;
}

- (INMessageReaction)initWithReactionType:(int64_t)a3 reactionDescription:(id)a4 emoji:(id)a5
{
  v8 = a4;
  v9 = a5;
  v17.receiver = self;
  v17.super_class = INMessageReaction;
  v10 = [(INMessageReaction *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_reactionType = a3;
    v12 = [v8 copy];
    reactionDescription = v11->_reactionDescription;
    v11->_reactionDescription = v12;

    v14 = [v9 copy];
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

+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5
{
  v7 = a3;
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v8 objectForKeyedSubscript:@"reactionType"];
    v10 = INMessageReactionTypeWithString(v9);

    v11 = [v8 objectForKeyedSubscript:@"reactionDescription"];
    v12 = [v8 objectForKeyedSubscript:@"emoji"];
    v13 = objc_opt_class();
    v14 = [v8 objectForKeyedSubscript:@"sticker"];
    v15 = [v7 decodeObjectOfClass:v13 from:v14];

    v16 = [[a1 alloc] initWithReactionType:v10 reactionDescription:v11 emoji:v12 sticker:v15];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end